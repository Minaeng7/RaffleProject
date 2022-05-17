package com.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.dto.MemberDTO;
import com.dto.RSpotDTO;
import com.dto.SSpotDTO;
import com.dto.SellRDTO;
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
	public String RAttend(RSpotDTO dto, HttpSession session) {//응모
		Rservice.registinglist(dto);
		session.setAttribute("mesg", dto.getRafflename());
		//return "redirect:RList";
		return "redirect:ResellRetrieve?resell_rno="+dto.getResell_rno();
	}
	@RequestMapping("/SAttend")
	public String SAttend(SSpotDTO dto,HttpSession session) {
		int n = Sservice.registinglist(dto);
//		System.out.println(n);
		session.setAttribute("num", n);
		return "redirect:SellRetrieve?sell_rno="+dto.getSell_rno();
	}
	
	@RequestMapping("UpdateMyAttendingRR")
	public String UpdateMyAttendingRR(RSpotDTO rdto, HttpSession session) {//수정화면에서 update 실행
		Rservice.UpdateMyAttendingR(rdto);
		return "redirect:Mypage";
	}
	@RequestMapping("UpdateMyAttendingSS")
	public String UpdateMyAttendingSS(SSpotDTO rdto, HttpSession session) {
		Sservice.UpdateMyAttendingS(rdto);
		return "redirect:Mypage";
	}
	@RequestMapping("DeleteMyAttendingRR")// Raffleno도 같이 넘겨주도록 향후 수정
	public String DeleteMyAttendingRR(HttpSession session) {//delete 실행
			MemberDTO dto = (MemberDTO)session.getAttribute("login");
			int memberno = dto.getMemberno();
			Rservice.DeleteMyAttendingR(memberno);
			return "redirect:Mypage";
	}
	@RequestMapping("DeleteMyAttendingSS")// Raffleno도 같이 넘겨주도록 향후 수정
	public String DeleteMyAttendingSS(HttpSession session) {
			MemberDTO dto = (MemberDTO)session.getAttribute("login");
			int memberno = dto.getMemberno();
			Sservice.DeleteMyAttendingS(memberno);
			return "redirect:Mypage";
	}
	
}
