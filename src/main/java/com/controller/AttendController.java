package com.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.dto.MemberDTO;
import com.dto.RSpotDTO;
import com.dto.ResellRDTO;
import com.dto.RwinDTO;
import com.dto.SSpotDTO;
import com.service.RSpotService;
import com.service.RaffleService;
import com.service.SSpotService;

@Controller
public class AttendController {
	@Autowired
	RSpotService Rservice;
	@Autowired
	SSpotService Sservice;
	@Autowired
	RaffleService service;

	@RequestMapping("/RAttend")
	public String RAttend(RSpotDTO dto, HttpSession session) {// 응모
		Rservice.registinglist(dto);
		session.setAttribute("mesg", dto.getRafflename());
		return "redirect:RAttendingRaffle?resell_rno=" + dto.getResell_rno();
	}

	@RequestMapping("/SAttend")
	public String SAttend(SSpotDTO dto, HttpSession session) {
		int n = Sservice.registinglist(dto);
//		System.out.println(n);
		session.setAttribute("num", n);
		return "redirect:SellRetrieve?sell_rno=" + dto.getSell_rno();
	}

	@RequestMapping("/UpdateAttendingR")
	public ModelAndView UpdateAttendingR(ResellRDTO rdto, HttpSession session) {
		MemberDTO dto = (MemberDTO) session.getAttribute("login");
		Map<String, Integer> map = new HashMap<String, Integer>();
		map.put("memberno", dto.getMemberno());
		map.put("resell_rno", rdto.getResell_rno());
		RSpotDTO Rdto = Rservice.selectRSpot(map);
//		System.out.println("Rdto"+Rdto);
		ModelAndView mav = new ModelAndView();
		mav.addObject("rdto", rdto);
		mav.addObject("Rdto", Rdto);
//		System.out.println(list);
		mav.setViewName("MyRaffle/UpdateAttendingR");
		return mav;
	}

	@RequestMapping("UpdateMyAttendingRR")
	public String UpdateMyAttendingRR(RSpotDTO rdto, HttpSession session) {// 수정화면에서 update 실행
		Rservice.UpdateMyAttendingR(rdto);
		// System.out.println("updatemyattendingrr : "+rdto);
		return "redirect:MyAttendedRaffle";
	}

	@RequestMapping("UpdateMyAttendingSS")
	public String UpdateMyAttendingSS(SSpotDTO rdto, HttpSession session) {
		Sservice.UpdateMyAttendingS(rdto);
		return "redirect:Mypage";
	}

	@RequestMapping("/DeleteAttendingR")
	public ModelAndView DeleteMyAttendingR(RSpotDTO rdto, HttpSession session) {
		MemberDTO dto = (MemberDTO) session.getAttribute("login");
		int memberno = dto.getMemberno();
		rdto.setMemberno(memberno);
		ModelAndView mav = new ModelAndView();
		mav.addObject("rdto", rdto);
		mav.setViewName("MyRaffle/DeleteAttendingR");
		return mav;
	}

	@RequestMapping("DeleteMyAttendingRR") // Raffleno도 같이 넘겨주도록 향후 수정
	public String DeleteMyAttendingRR(RSpotDTO rdto, HttpSession session) {// delete 실행
//		System.out.println(rdto);
		MemberDTO dto = (MemberDTO) session.getAttribute("login");
		int memberno = dto.getMemberno();
		rdto.setMemberno(memberno);
		Rservice.DeleteMyAttendingR(rdto);
		return "redirect:MyAttendedRaffle";
	}

	@RequestMapping("DeleteMyAttendingS") // Raffleno도 같이 넘겨주도록 향후 수정
	public ModelAndView DeleteMyAttendingS(SSpotDTO sdto, HttpSession session) {
		MemberDTO dto = (MemberDTO) session.getAttribute("login");
		int memberno = dto.getMemberno();
		sdto.setMemberno(memberno);
		ModelAndView mav = new ModelAndView();
		mav.addObject("sdto", sdto);
		mav.setViewName("MyRaffle/DeleteAttendingS");
		return mav;
	}

	@RequestMapping("DeleteMyAttendingSS") // Raffleno도 같이 넘겨주도록 향후 수정
	public String DeleteMyAttendingSS(SSpotDTO sdto, HttpSession session) {
		MemberDTO dto = (MemberDTO) session.getAttribute("login");
		int memberno = dto.getMemberno();
		sdto.setMemberno(memberno);
		Sservice.DeleteMyAttendingS(sdto);
		return "redirect:Myinfo";
	}

}
