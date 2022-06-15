package com.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.dto.ForumDTO;
import com.dto.MemberDTO;
import com.dto.NoticeDTO;
import com.dto.ResellRDTO;
import com.dto.SellRDTO;
import com.service.AdminService;

@Controller
public class AdminController {

	@Autowired
	AdminService service;
	
	@RequestMapping("/Admin")
	public String Admin() {
		return "Adminindex";
	}
	@RequestMapping("/AdminSRaffle")
	public ModelAndView selectSRafflelist() {
		List<SellRDTO> slist = (List<SellRDTO>) service.SellList();
		ModelAndView mav = new ModelAndView();
		mav.addObject("sdto", slist);
		mav.setViewName("AdminRaffle");
		return mav;
	}

	@RequestMapping("/AdminRRaffle")
	public ModelAndView selectRRafflelist() {
		List<ResellRDTO> rlist = (List<ResellRDTO>) service.ResellList();
		ModelAndView mav = new ModelAndView();
		mav.addObject("rdto", rlist);
		mav.setViewName("AdminRaffle");
		return mav;
	}
	
	@RequestMapping("/DeleteSRaffle")
	public ModelAndView DeleteSRaffle(int sell_rno) {
		service.DeleteSRaffle(sell_rno);
		ModelAndView mav = new ModelAndView();
		mav = selectSRafflelist();
		return mav;
	}
	
	@RequestMapping("/DeleteRRaffle")
	public ModelAndView DeleteRRaffle(int resell_rno) {
		service.DeleteRRaffle(resell_rno);
		ModelAndView mav = new ModelAndView();
		mav = selectRRafflelist();
		return mav;
	}
	@RequestMapping("/AdminMembers")
	public ModelAndView selectMembers() {
		List<MemberDTO> mlist = (List<MemberDTO>) service.selectMembers();
		ModelAndView mav = new ModelAndView();
		mav.addObject("mdto", mlist);
		mav.setViewName("AdminMembers");
		return mav;
	}
	@RequestMapping("/DeleteMember")
	public ModelAndView DeleteMember(int memberno) {
		service.DeleteMember(memberno);
		ModelAndView mav = new ModelAndView();
		mav = selectMembers();
		return mav;
	}
	@RequestMapping("/AdminForum")
	public ModelAndView selectForum() {
		List<ForumDTO> flist = (List<ForumDTO>) service.selectForum();
		ModelAndView mav = new ModelAndView();
		mav.addObject("fdto", flist);
		mav.setViewName("AdminBoard");
		return mav;
	}
	@RequestMapping("/Adminview")
	public ModelAndView view (@RequestParam int bno) {
		ModelAndView mav = new ModelAndView();
		mav.addObject("dto", service.read(bno));
		mav.setViewName("Admin/view");
		return mav;
	}

}
