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
		ResellRDTO rdto = null;
		try {
			rdto = service.ResellRetrieve(dto.getResell_rno());
		} catch (Exception e) {
			// TODO Auto-generated catch block
			ModelAndView mav = new ModelAndView();
			mav.setViewName("Error/Error");
			return mav;
		}
		ModelAndView mav = new ModelAndView();
		mav.addObject("rdto", rdto);
		mav.addObject("dto", dto);
		mav.setViewName("RAttendingRaffle");
		return mav;
	}
	
	@RequestMapping("/Rorder")
	public ModelAndView Rorder(RwinDTO Rdto, RSpotDTO dto, ResellRDTO rdto, HttpSession session) {
		int memberno = dto.getMemberno();
		int Resell_rno = dto.getResell_rno();
		HashMap <String, Integer> map = new HashMap<>();
		map.put("memberno", memberno);
		map.put("Resell_rno", Resell_rno);
		try {
			Rservice.DeleteSpotR(map);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			ModelAndView mav = new ModelAndView();
			mav.setViewName("Error/Error");
			return mav;
		}
		session.setAttribute("mesg", dto.getRafflename());
		try {
			Rservice.registinglist(dto);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			ModelAndView mav = new ModelAndView();
			mav.setViewName("Error/Error");
			return mav;
		}
		try {
			service.updatingSpot(rdto);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			ModelAndView mav = new ModelAndView();
			mav.setViewName("Error/Error");
			return mav;
		}
		ModelAndView mav = new ModelAndView();
		mav.addObject("Rdto", Rdto);
		mav.addObject("dto", dto);
		mav.addObject("rdto", rdto);
		mav.setViewName("Rorder");
		return mav;
	}
	
	@RequestMapping("/SAttendingRaffle")
	public ModelAndView SAttendingRaffle(SwinDTO dto, HttpSession session) {// 응모
		SellRDTO sdto = null;
		try {
			sdto = service.SellRetrieve(dto.getSell_rno());
		} catch (Exception e) {
			// TODO Auto-generated catch block
			ModelAndView mav = new ModelAndView();
			mav.setViewName("Error/Error");
			return mav;
		}
		ModelAndView mav = new ModelAndView();
		mav.addObject("sdto", sdto);
		mav.setViewName("SAttendingRaffle");
		return mav;
	}
	
	@RequestMapping("/Sorder")
	public ModelAndView Sorder(SwinDTO Sdto, SellRDTO dto, SSpotDTO sdto) {
		int memberno = sdto.getMemberno();
		int sell_rno = sdto.getSell_rno();
		HashMap <String, Integer> map = new HashMap<>();
		map.put("memberno", memberno);
		map.put("sell_rno", sell_rno);
		try {
			Sservice.DeleteSpotS(map);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			ModelAndView mav = new ModelAndView();
			mav.setViewName("Error/Error");
			return mav;
		}
		try {
			dto = service.SellRetrieve(Sdto.getSell_rno());
		} catch (Exception e) {
			// TODO Auto-generated catch block
			ModelAndView mav = new ModelAndView();
			mav.setViewName("Error/Error");
			return mav;
		}
		try {
			Sservice.Sorder(Sdto.getSell_rno());
		} catch (Exception e) {
			// TODO Auto-generated catch block
			ModelAndView mav = new ModelAndView();
			mav.setViewName("Error/Error");
			return mav;
		}
		try {
			service.orderSell(Sdto);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			ModelAndView mav = new ModelAndView();
			mav.setViewName("Error/Error");
			return mav;
		}
		ModelAndView mav = new ModelAndView();
		mav.addObject("Sdto", Sdto);
		mav.addObject("dto", dto);
		mav.setViewName("Sorder");
		return mav;
	}

	@RequestMapping("/SAttend")
	public String SAttend(SSpotDTO dto, HttpSession session) {
//		System.out.println(dto);
		int n = 0;
		try {
			n = Sservice.registinglist(dto);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return "Error/Error";
		}
		session.setAttribute("num", n);
		return "redirect:SellRetrieve?sell_rno=" + dto.getSell_rno();
	}

	@RequestMapping("/UpdateAttendingR")
	public ModelAndView UpdateAttendingR(ResellRDTO rdto, HttpSession session) {
		MemberDTO dto = (MemberDTO) session.getAttribute("login");
		HashMap<String, Integer> map = new HashMap<String, Integer>();
		map.put("memberno", dto.getMemberno());
		map.put("resell_rno", rdto.getResell_rno());
		RSpotDTO Rdto = null;
		try {
			Rdto = Rservice.selectRSpot(map);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			ModelAndView mav = new ModelAndView();
			mav.setViewName("Error/Error");
			return mav;
		}
		ModelAndView mav = new ModelAndView();
//		System.out.println(rdto);
		mav.addObject("rdto", rdto);
		mav.addObject("Rdto", Rdto);
		mav.setViewName("MyRaffle/UpdateAttendingR");
		return mav;
	}

	@RequestMapping("UpdateMyAttendingRR")
	public String UpdateMyAttendingRR(RSpotDTO rdto, HttpSession session) {// 수정화면에서 update 실행
		try {
			Rservice.UpdateMyAttendingR(rdto);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			return "Error/Error";
		}
		return "redirect:MyAttendedRaffle";
	}

	@RequestMapping("UpdateMyAttendingSS")
	public String UpdateMyAttendingSS(SSpotDTO rdto, HttpSession session) {
		try {
			Sservice.UpdateMyAttendingS(rdto);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return "Error/Error";
		}
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
		try {
			Rservice.DeleteMyAttendingR(rdto);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			return "Error/Error";
		}
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
		try {
			Sservice.DeleteMyAttendingS(sdto);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			return "Error/Error";
		}
		return "redirect:MyAttendedRaffle";
	}

}
