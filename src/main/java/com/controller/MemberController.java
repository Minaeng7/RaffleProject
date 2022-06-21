package com.controller;

import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.dto.MemberDTO;
import com.service.MemberSerivce;

@Controller
public class MemberController {
	@Autowired
	MemberSerivce service;
	@Autowired
	AdminController admin;

	@RequestMapping(value = "/memberAdd")
	public String memberAdd(MemberDTO m, Model model) {
//		System.out.println(m);
		try {
			service.memberAdd(m);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			return "Error/Error";
		}
		String success = "회원가입성공";
		model.addAttribute("success", success);
		return "index";
	}
	
	@RequestMapping(value = "/login", method = RequestMethod.POST)
	public String login(@RequestParam Map<String, String> map, Model model, HttpSession session) {
		MemberDTO dto = null;
		try {
			dto = service.login(map);
			if (dto != null && dto.getMemberno() != 00) {
				session.setAttribute("login", dto);
				return "redirect:../raffle";// main.jsp
				
			} else if (dto.getMemberno() == 00) {
				session.setAttribute("login", dto);
				String nextpage = admin.Admin();
				return nextpage;
			}
		} catch (Exception e) {
			model.addAttribute("mesg", "아이디 또는 비번이 잘못되었습니다.");
			return "Error/LoginError";
		}
		return null;
		

	}
	
	@RequestMapping(value = "/logout")
	public String logout(HttpSession session) {
		session.invalidate();
		return "redirect:../raffle";
	}
	
	@RequestMapping(value = "/idDuplicateCheck", produces="text/plain;charset=UTF-8")
	@ResponseBody
	public String idDuplicatedCheck(@RequestParam("id") String userid) {
		MemberDTO dto = null;
		try {
			dto = service.idCheck(userid);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			return "Error/Error";
		}
		String mesg="";
		if(dto != null) {
			mesg="아이디 중복";
		}
		return mesg;
	}
	@RequestMapping(value = "/updateMyinfo")
	public ModelAndView updateMyinfo(MemberDTO dto, HttpSession session) {
		MemberDTO dto2 = (MemberDTO)session.getAttribute("login");
		int memberno = dto2.getMemberno();
		dto.setMemberno(memberno);
		
//		System.out.println(dto);
		try {
			service.updateMyinfo(dto);
			
		} catch (Exception e) {
			// TODO Auto-generated catch block
			ModelAndView mav = new ModelAndView();
			mav.setViewName("Error/Error");
			return mav;

		}
		try {
			dto = service.myinfo(memberno);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			ModelAndView mav = new ModelAndView();
			mav.setViewName("Error/Error");
			return mav;
		}
		ModelAndView mav = new ModelAndView();
		mav.addObject("mypage",dto);
		mav.setViewName("Mypage");
		return mav;
	}

}
