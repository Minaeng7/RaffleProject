package com.controller;

import java.util.HashMap;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.dto.MemberDTO;
import com.dto.RSpotDTO;
import com.dto.ResellRDTO;
import com.dto.RwinDTO;
import com.dto.SSpotDTO;
import com.dto.SellRDTO;
import com.dto.SwinDTO;
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

	@RequestMapping("/RAttendingRaffle")
	public ModelAndView RAttendingRaffle(RSpotDTO dto, HttpSession session) {// 응모
		ResellRDTO rdto = service.ResellRetrieve(dto.getResell_rno());
		ModelAndView mav = new ModelAndView();
		mav.addObject("rdto", rdto);
		mav.addObject("dto", dto);
		mav.setViewName("RAttendingRaffle");
		return mav;
	}
	
	@RequestMapping("/Rorder")
	public ModelAndView Rorder(RwinDTO Rdto, RSpotDTO dto, ResellRDTO rdto, HttpSession session) {
		session.setAttribute("mesg", dto.getRafflename());
		Rservice.registinglist(dto);
		ModelAndView mav = new ModelAndView();
		mav.addObject("Rdto", Rdto);
		mav.addObject("dto", dto);
		mav.addObject("rdto", rdto);
		mav.setViewName("Rorder");
		return mav;
	}
	
	@RequestMapping("/SAttendingRaffle")
	public ModelAndView SAttendingRaffle(SwinDTO dto, HttpSession session) {// 응모
		SellRDTO sdto = service.SellRetrieve(dto.getSell_rno());
		ModelAndView mav = new ModelAndView();
		mav.addObject("sdto", sdto);
		mav.setViewName("SAttendingRaffle");
		return mav;
	}
	
	@RequestMapping("/Sorder")
	public ModelAndView Sorder(SwinDTO Sdto, SellRDTO dto) {
		dto = service.SellRetrieve(Sdto.getSell_rno());
		Sservice.Sorder(Sdto.getSell_rno());
		ModelAndView mav = new ModelAndView();
		mav.addObject("Sdto", Sdto);
		mav.addObject("dto", dto);
		mav.setViewName("Sorder");
		return mav;
	}

	@RequestMapping("/SAttend")
	public String SAttend(SSpotDTO dto, HttpSession session) {
		int n = Sservice.registinglist(dto);
		session.setAttribute("num", n);
		return "redirect:SellRetrieve?sell_rno=" + dto.getSell_rno();
	}

	@RequestMapping("/UpdateAttendingR")
	public ModelAndView UpdateAttendingR(ResellRDTO rdto, HttpSession session) {
		MemberDTO dto = (MemberDTO) session.getAttribute("login");
		HashMap<String, Integer> map = new HashMap<String, Integer>();
		map.put("memberno", dto.getMemberno());
		map.put("resell_rno", rdto.getResell_rno());
		RSpotDTO Rdto = Rservice.selectRSpot(map);
		ModelAndView mav = new ModelAndView();
		mav.addObject("rdto", rdto);
		mav.addObject("Rdto", Rdto);
		mav.setViewName("MyRaffle/UpdateAttendingR");
		return mav;
	}

	@RequestMapping("UpdateMyAttendingRR")
	public String UpdateMyAttendingRR(RSpotDTO rdto, HttpSession session) {// 수정화면에서 update 실행
		Rservice.UpdateMyAttendingR(rdto);
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
		return "redirect:MyAttendedRaffle";
	}

}
