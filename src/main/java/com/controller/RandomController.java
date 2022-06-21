package com.controller;

import java.util.Collections;
import java.util.List;

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
import com.dto.SwinDTO;
import com.service.RSpotService;
import com.service.SSpotService;

@Controller
public class RandomController {

	@Autowired
	RSpotService rservice;
	@Autowired
	SSpotService sservice;
	
	@RequestMapping("/RShuffle")
	public ModelAndView RShuffle(int resell_rno, ResellRDTO rdto) {//추첨
		RwinDTO Wdto = null;
		try {
			Wdto = rservice.Winnercheck(resell_rno);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			ModelAndView mav = new ModelAndView();
			mav.setViewName("Error/Error");
			return mav;
		}
		if (Wdto != null) {
			String mesg = "해당 래플은 이미 추첨이 완료 되었습니다.";
			ModelAndView mav = new ModelAndView();
			mav = WinnercheckR(resell_rno, rdto);
			mav.addObject("mesg", mesg);
			return mav;
		}
		List<RSpotDTO> list = null;
		try {
			list = rservice.shuffle(resell_rno);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			ModelAndView mav = new ModelAndView();
			mav.setViewName("Error/Error");
			return mav;
		}
		if (list.size() == 0) {
			String mesg = "해당 래플은 참가자가 없습니다. 메인페이지로 이동합니다.";
			ModelAndView mav = new ModelAndView();
			mav.addObject("mesg", mesg);
			mav.setViewName("index");
			return mav;
		}
		Collections.shuffle(list);
		RSpotDTO dto = list.get(0);
		try {
			rservice.AddWinner(dto);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			ModelAndView mav = new ModelAndView();
			mav.setViewName("Error/Error");
			return mav;
		}
		ModelAndView mav = new ModelAndView();
		mav.addObject("Winner",dto);
		mav.addObject("rdto", rdto);
		mav.setViewName("RWinneris");
		return mav;
	}
	@RequestMapping("/SShuffle")
	public ModelAndView SShuffle(int sell_rno) {
		SwinDTO Wdto = null;
		try {
			Wdto = sservice.Winnercheck(sell_rno);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			ModelAndView mav = new ModelAndView();
			mav.setViewName("Error/Error");
			return mav;
		}
		if (Wdto != null) {
			String mesg = "해당 래플은 이미 추첨이 완료 되었습니다.";
			ModelAndView mav = new ModelAndView();
			mav = WinnercheckS(sell_rno);
			mav.addObject("mesg", mesg);
			return mav;
		}
		List<SSpotDTO> list = null;
		try {
			list = sservice.shuffle(sell_rno);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			ModelAndView mav = new ModelAndView();
			mav.setViewName("Error/Error");
			return mav;
		}
		if (list.size() == 0) {
			String mesg = "Anybody didn't attend";
			ModelAndView mav = new ModelAndView();
			mav.addObject("mesg", mesg);
//			mav.setViewName("redirect:../raffle/");
			mav.setViewName("index");
			return mav;
		}
		Collections.shuffle(list);
		SSpotDTO dto = list.get(0);
//		System.out.println(dto);
		try {
			sservice.AddWinner(dto);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			ModelAndView mav = new ModelAndView();
			mav.setViewName("Error/Error");
			return mav;
		}
//		System.out.println(dto);
		ModelAndView mav = new ModelAndView();
		mav.addObject("Winner",dto);
		mav.setViewName("SWinneris");
		return mav;
	}
	@RequestMapping("/WinnercheckR")
	public ModelAndView WinnercheckR(int resell_rno, ResellRDTO rdto) {
		RwinDTO dto = null;
		try {
			dto = rservice.Winnercheck(resell_rno);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			ModelAndView mav = new ModelAndView();
			mav.setViewName("Error/Error");
			return mav;
		}
		ModelAndView mav = new ModelAndView();
//		System.out.println(rdto);
		mav.addObject("Winner",dto);
		mav.addObject("rdto", rdto);
		mav.setViewName("RWinneris");
		return mav;
	}
	
	@RequestMapping("/RResult")
	public ModelAndView RResult(int resell_rno, HttpSession session, ResellRDTO rdto) {
		MemberDTO mdto = (MemberDTO) session.getAttribute("login");
		RwinDTO dto = null;
		try {
			dto = rservice.Winnercheck(resell_rno);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			ModelAndView mav = new ModelAndView();
			mav.setViewName("Error/Error");
			return mav;
		}
		ModelAndView mav = new ModelAndView();
		mav.addObject("Winner",dto);
		mav.addObject("RResult", mdto);
		mav.addObject("rdto", rdto);
		mav.setViewName("RResult");
		return mav;
	}
	@RequestMapping("/WinnercheckS")
	public ModelAndView WinnercheckS(int sell_rno) {
		SwinDTO dto = null;
		try {
			dto = sservice.Winnercheck(sell_rno);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			ModelAndView mav = new ModelAndView();
			mav.setViewName("Error/Error");
			return mav;
		}
		ModelAndView mav = new ModelAndView();
		mav.addObject("Winner",dto);
		mav.setViewName("SWinneris");
		return mav;
	}
	@RequestMapping("/SResult")
	public ModelAndView SResult(int sell_rno,HttpSession session) {
		SwinDTO dto = null;
		try {
			dto = sservice.Winnercheck(sell_rno);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			ModelAndView mav = new ModelAndView();
			mav.setViewName("Error/Error");
			return mav;
		}
		MemberDTO mdto = (MemberDTO)session.getAttribute("login");
		int memberno = mdto.getMemberno();
		ModelAndView mav = new ModelAndView();
		mav.addObject("Winner",dto);
		mav.addObject("memberno", memberno);
		mav.setViewName("SResult");
		return mav;
	}
}
