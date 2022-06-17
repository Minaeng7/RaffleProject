package com.controller;

import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.dto.MemberDTO;
import com.dto.ResellRDTO;
import com.dto.RwinDTO;
import com.dto.SellRDTO;
import com.dto.SwinDTO;
import com.service.RaffleService;

@Controller
public class RaffleController {
	@Autowired
	RaffleService service;
	@Autowired
	SupervisingController con;
	
	
	@RequestMapping("/loginCheck/AddSell")
	public String AddSell(SellRDTO sdto) {
		service.addSell_r(sdto);		
		return "redirect:../SList";
	}

	@RequestMapping("/loginCheck/AddResell")
	public String AddResell(ResellRDTO rdto) {
		service.addResell_r(rdto);
		return "redirect:../RList";
	}
	
	@RequestMapping("/SList")
	public ModelAndView SellList(SellRDTO sdto) {//리스트 뿌리기
		List<SellRDTO> slist = (List<SellRDTO>) service.SellList();
		List<SwinDTO> dto = service.WinListS();
		ModelAndView mav = new ModelAndView();
		mav.addObject("sdto", slist);
		mav.addObject("dto", dto);
		mav.setViewName("SList");
		return mav;
	}
	
	@RequestMapping("/RList")
	public ModelAndView ResellList(ResellRDTO rdto) {
		List<ResellRDTO> rlist = (List<ResellRDTO>) service.ResellList();
		List<RwinDTO> dto = service.WinListR();
		ModelAndView mav = new ModelAndView();
		mav.addObject("rdto", rlist);
		mav.addObject("dto", dto);
		mav.setViewName("RList");
		return mav;
	}	
	@RequestMapping(value="/ResellRetrieve")
	public ModelAndView ResllRetrieve(int resell_rno, HttpSession session) {//상품상세정보
		List<ResellRDTO> rlist = service.RRlist();
		service.RincreaseViewcnt(resell_rno, session);
		ModelAndView mav = new ModelAndView();
		ResellRDTO rdto = service.ResellRetrieve(resell_rno);
		mav.addObject("rdto", rdto);
		mav.addObject("rlist", rlist);
		mav.setViewName("ResellRetrieve");
		return mav;
	}
	
	@RequestMapping(value="/SellRetrieve")
	public ModelAndView SellRetrieve(int sell_rno, HttpSession session) {//상품상세정보 
		List<SellRDTO> slist = service.SSlist();
		service.SincreaseViewcnt(sell_rno, session);
		ModelAndView mav = new ModelAndView();
		SellRDTO sdto = service.SellRetrieve(sell_rno);
		mav.addObject("sdto", sdto);
		mav.addObject("slist", slist);
		mav.setViewName("SellRetrieve");
		return mav;
	}
	@RequestMapping("UpdateMyRaffleR")
	public ModelAndView UpdateMyRaffleR(ResellRDTO rdto) {
		ModelAndView mav = new ModelAndView();
		mav.addObject("resellrdto",rdto);
		mav.setViewName("MyRaffle/UpdateMyRaffleR");
		return mav;
	}
	@RequestMapping("UpdateMyRaffleRR")
	public ModelAndView UpdateMyRaffleRR(ResellRDTO rdto, HttpSession session) {//수정
		service.UpdateResell_r(rdto);
		ModelAndView mav = new ModelAndView();
		mav = con.MyRaffle(session);
		return mav;
	}
	@RequestMapping("UpdateMyRaffleS")
	public ModelAndView UpdateMyRaffleS(SellRDTO rdto) {
		ModelAndView mav = new ModelAndView();
		mav.addObject("sellrdto",rdto);
		mav.setViewName("MyRaffle/UpdateMyRaffleS");
		return mav;
	}
	@RequestMapping("UpdateMyRaffleSS")
	public ModelAndView UpdateMyRaffleSS(SellRDTO rdto, HttpSession session) {
		service.UpdateSell_r(rdto);
		ModelAndView mav = new ModelAndView();
		mav = con.MyRaffle(session);
		return mav;
	}
	
	@RequestMapping("DeleteMyRaffleS")
	public String DeleteMyRaffleS(int sell_rno, HttpServletRequest request) {
		request.setAttribute("rno", sell_rno);
		return "MyRaffle/DeleteMyRaffleS";
	}
	@RequestMapping("DeleteMyRaffleR")
	public String DeleteMyRaffleR(int resell_rno, HttpServletRequest request) {
		request.setAttribute("rno", resell_rno);
		return "MyRaffle/DeleteMyRaffleR";
	}
	@RequestMapping("DeleteMyRaffleRR")
	public ModelAndView DeleteMyRaffleRR(int resell_rno, HttpSession session ) {//삭제
		MemberDTO dto = (MemberDTO)session.getAttribute("login");
		int memberno = dto.getMemberno();
		HashMap <String, Integer> map = new HashMap<>();
		map.put("memberno", memberno);
		map.put("resell_rno", resell_rno);
		service.DeleteMyRaffleR(map);
		ModelAndView mav = new ModelAndView();
		mav = con.MyRaffle(session);
		return mav;

	}
	@RequestMapping("/DeleteMyRaffleSS")
	public ModelAndView DeleteMyRaffleSS(int sell_rno, HttpSession session) {
//		System.out.println(sell_rno);
		MemberDTO dto = (MemberDTO)session.getAttribute("login");
		int memberno = dto.getMemberno();
		HashMap <String, Integer> map = new HashMap<>();
		map.put("memberno", memberno);
		map.put("sell_rno", sell_rno);
		service.DeleteMyRaffleS(map);
		ModelAndView mav = new ModelAndView();
		mav = con.MyRaffle(session);
		return mav;
	}
	@RequestMapping("/JoinRSpot")
	public String JoinRSpot(String rafflename, HttpSession session) {
		//System.out.println("JoinRSpot"+rafflename);
		MemberDTO dto = (MemberDTO) session.getAttribute("login");
		
		return "redirect:RList";
	}
	/*
	 * @RequestMapping("/listView") public ModelAndView view(@RequestParam int
	 * resell_rno, HttpSession session) { service.increaseViewcnt(resell_rno,
	 * session); ModelAndView mav = new ModelAndView(); mav.addObject("sellrdto",
	 * resell_rno); mav.setViewName("Product/RList"); return mav; }
	 */
}
