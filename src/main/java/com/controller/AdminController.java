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
import com.service.ForumService;
import com.service.NoticeService;

@Controller
public class AdminController {

	@Autowired
	AdminService service;
	@Autowired
	NoticeService nservice;
	@Autowired
	ForumService fservice;
	
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
	//자유게시판 관리메뉴
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
	@RequestMapping("/DeleteForum")
	public ModelAndView DeleteForum(int bno) {
		service.DeleteForum(bno);
		ModelAndView mav = new ModelAndView();
		mav = selectForum();
		return mav;
	}
	//공지사항 관리메뉴(Admin/top.jsp에서 링크걸려있음)
	@RequestMapping("/AdminNotice")
	public ModelAndView AdminNotice () {
		List<NoticeDTO> noticelist = nservice.notice();		//notice table에서 select
//		System.out.println(noticelist);
		ModelAndView mav = new ModelAndView();
		mav.addObject("notice", noticelist);
		mav.setViewName("AdminNotice");
		return mav;
	}
	
	//관리자 게시글 작성 화면
	@RequestMapping("/admin_write")
	public String admin_write() {
		return "Admin/admin_write";
	}
	
	@RequestMapping("/admin_edit")
	public ModelAndView admin_edit(NoticeDTO dto, HttpSession session) {
		ModelAndView mav = new ModelAndView();
		mav.addObject("ndto", dto);
		mav.setViewName("Admin/admin_edit");
		return mav;
	}
	//관리자 게시글 수정
	@RequestMapping("/admin_update")
	public String admin_update(NoticeDTO dto) {
		fservice.admin_update(dto);
		return "redirect:/Admin";
	}
	//관리자 게시글 삭제
	@RequestMapping("/admin_delete")
	public String admin_delete(@RequestParam int bno) {
		fservice.admin_delete(bno);
		return "redirect:/Admin";
	}
	//관리자 게시글 등록
	@RequestMapping(value = "/admin_insert")
	public String admin_insert(NoticeDTO dto) {
		fservice.admin_create(dto);
		return "redirect:/Admin";
	}
}
