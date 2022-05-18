package com.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.dto.MemberDTO;
import com.dto.RSpotDTO;
import com.dto.ResellRDTO;
import com.dto.RwinDTO;
import com.dto.SellRDTO;
import com.service.RSpotService;
import com.service.SupervisingService;

@Controller
public class SupervisingController {//mypage기능

	@Autowired
	SupervisingService service;
	@Autowired
	RSpotService Rservice;
	
	@RequestMapping("MyAttendedRaffle")
	public ModelAndView MyAttendedRaffle(HttpSession session) {//내가 응모한 리스트
		MemberDTO dto = (MemberDTO)session.getAttribute("login");
		int memberno = dto.getMemberno();
		List<ResellRDTO> listR = new ArrayList<>();
		listR = service.selectMyAttendedRaffleR(memberno);
		List<SellRDTO> listS = new ArrayList<>();
		listS = service.selectMyAttendedRaffleS(memberno);
		List<RSpotDTO> list = Rservice.selectRSpotList(memberno);
		ModelAndView mav = new ModelAndView();
		mav.addObject("AttendedRaffleR", listR);
		mav.addObject("AttendedRaffleS", listS);
		mav.addObject("RSpotList", list);
		//System.out.println(list);
		mav.setViewName("MyAttendedRaffle");
		return mav;
	}
	@RequestMapping("/SupervisingRaffle")
	public ModelAndView MyRaffle(HttpSession session) {//내가 등록한 상품 리스트
		MemberDTO dto = (MemberDTO)session.getAttribute("login");
		int memberno = dto.getMemberno();
		List<ResellRDTO> listR = new ArrayList<>();
		List<SellRDTO> listS = new ArrayList<>();
		listS = service.selectMyRaffleS(memberno);
		listR = service.selectMyRaffleR(memberno);
		ModelAndView mav = new ModelAndView();
		mav.addObject("MyRaffleR", listR);
		mav.addObject("MyRaffleS", listS);
		mav.setViewName("MyRaffle");
		return mav;
	}

	@RequestMapping(value = "/Myinfo")
	public ModelAndView Mypage(HttpSession session) {//내정보보 보기 (회원정보 수정 등)
		MemberDTO dto = (MemberDTO)session.getAttribute("login");
		int memberno = dto.getMemberno();		
		dto = service.Mypage(memberno);
		System.out.println(dto);
		ModelAndView mav = new ModelAndView();
		mav.addObject("mypage", dto);
		mav.setViewName("Mypage");
		return mav;
	}

}
