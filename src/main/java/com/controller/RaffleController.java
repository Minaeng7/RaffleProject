package com.controller;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.dto.MemberDTO;
import com.dto.ResellRDTO;
import com.dto.SellRDTO;
import com.service.RaffleService;

@Controller
public class RaffleController {
	@Autowired
	RaffleService service;
	
	@RequestMapping(value="/AddSell")
	public String AddProduct() {//화면전환
		return "Product/AddSell";
	}
//	
//	@RequestMapping(value="/AddResell")
//	public String AddResellProduct() {
//		return "redirect:../Product/AddResell";
//	}	
	
	@RequestMapping(value="/loginCheck/SellRetrieve")
	public ModelAndView AddSell(SellRDTO sdto, HttpSession session) {//sell 상품등록
		service.addSell_r(sdto);
		System.out.println(sdto);
		ModelAndView mav = new ModelAndView();
		mav.addObject("sdto", sdto);
		mav.setViewName("Product/SList");
		return mav;
	}
	
	@RequestMapping(value="/loginCheck/AddResell")
	public ModelAndView AddResell(ResellRDTO rdto, HttpSession session) {
		service.addResell_r(rdto);
		System.out.println(rdto);
		ModelAndView mav = new ModelAndView();
		mav.addObject("rdto", rdto);
		//System.out.println("rdto는    " + rdto);
		mav.setViewName("Product/RList");
		return mav;
	}
	
	@RequestMapping("/SList")
	public ModelAndView SellList(SellRDTO sdto) {//리스트 뿌리기
		List<SellRDTO> slist = (List<SellRDTO>) service.SellList(sdto);
		System.out.println(slist);
		ModelAndView mav = new ModelAndView();
		mav.addObject("sdto", slist);
		mav.setViewName("SList");
		return mav;
	}
	
	@RequestMapping("/RList")
	public ModelAndView ResellList(ResellRDTO rdto) {
		List<ResellRDTO> rlist = (List<ResellRDTO>) service.ResellList(rdto);
		System.out.println("rlist는 "+rlist);
		ModelAndView mav = new ModelAndView();
		mav.addObject("rdto", rlist);
		mav.setViewName("Product/RList");
		return mav;
	}	
	@RequestMapping(value="/ResellRetrieve")
	public ModelAndView ResllRetrieve(int resell_rno) {//상품상세정보
		System.out.println("ResellRetrieve 호출");
		ModelAndView mav = new ModelAndView();
		ResellRDTO rdto = service.ResellRetrieve(resell_rno);
		//System.out.println(resell_rno);
		mav.addObject("rdto", rdto);
		mav.setViewName("Product/ResellRetrieve");
		return mav;
	}
	
	@RequestMapping(value="/SellRetrieve")
	public ModelAndView SellRetrieve(int sell_rno) {//상품상세정보 
		System.out.println("SellRetrieve 호출");
		ModelAndView mav = new ModelAndView();
		SellRDTO sdto = service.SellRetrieve(sell_rno);
		//System.out.println(resell_rno);
		mav.addObject("sdto", sdto);
		mav.setViewName("Product/SellRetrieve");
		return mav;
	}

	@RequestMapping("UpdateMyRaffleRR")
	public String UpdateMyRaffleRR(ResellRDTO rdto, HttpSession session) {//수정
		service.UpdateResell_r(rdto);
		return "redirect:Mypage";
	}
	@RequestMapping("UpdateMyRaffleSS")
	public String UpdateMyRaffleSS(SellRDTO rdto, HttpSession session) {
		service.UpdateSell_r(rdto);
		return "redirect:Mypage";
	}
	@RequestMapping("DeleteMyRaffleRR")// Raffleno를 넘겨주도록 향후 수정
	public String DeleteMyRaffleRR(HttpSession session) {//삭제
		MemberDTO dto = (MemberDTO)session.getAttribute("login");
		int memberno = dto.getMemberno();
		service.DeleteMyRaffleR(memberno);
		return "redirect:Mypage";
	}
	@RequestMapping("/DeleteMyRaffleSS")// Raffleno를 넘겨주도록 향후 수정
	public String DeleteMyRaffleSS(HttpSession session) {
		MemberDTO dto = (MemberDTO)session.getAttribute("login");
		int memberno = dto.getMemberno();
		service.DeleteMyRaffleS(memberno);
		return "redirect:Mypage";
	}
}
