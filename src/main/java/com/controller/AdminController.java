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
		List<SellRDTO> slist = null;
		try {
			slist = (List<SellRDTO>) service.SellList();
		} catch (Exception e) {
			// TODO Auto-generated catch block
			ModelAndView mav = new ModelAndView();
			mav.setViewName("Error/Error");
			return mav;
		}
		ModelAndView mav = new ModelAndView();
		mav.addObject("sdto", slist);
		mav.setViewName("AdminRaffle");
		return mav;
	}

	@RequestMapping("/AdminRRaffle")
	public ModelAndView selectRRafflelist() {
		List<ResellRDTO> rlist = null;
		try {
			rlist = (List<ResellRDTO>) service.ResellList();
		} catch (Exception e) {
			// TODO Auto-generated catch block
			ModelAndView mav = new ModelAndView();
			mav.setViewName("Error/Error");
			return mav;
		}
		ModelAndView mav = new ModelAndView();
		mav.addObject("rdto", rlist);
		mav.setViewName("AdminRaffle");
		return mav;
	}
	
	@RequestMapping("/DeleteSRaffle")
	public ModelAndView DeleteSRaffle(int sell_rno) {
		try {
			service.DeleteSRaffle(sell_rno);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			ModelAndView mav = new ModelAndView();
			mav.setViewName("Error/Error");
			return mav;
		}
		ModelAndView mav = new ModelAndView();
		mav = selectSRafflelist();
		return mav;
	}
	
	@RequestMapping("/DeleteRRaffle")
	public ModelAndView DeleteRRaffle(int resell_rno) {
		try {
			service.DeleteRRaffle(resell_rno);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			ModelAndView mav = new ModelAndView();
			mav.setViewName("Error/Error");
			return mav;
		}
		ModelAndView mav = new ModelAndView();
		mav = selectRRafflelist();
		return mav;
	}
	@RequestMapping("/AdminMembers")
	public ModelAndView selectMembers() {
		List<MemberDTO> mlist = null;
		try {
			mlist = (List<MemberDTO>) service.selectMembers();
		} catch (Exception e) {
			// TODO Auto-generated catch block
			ModelAndView mav = new ModelAndView();
			mav.setViewName("Error/Error");
			return mav;
		}
		ModelAndView mav = new ModelAndView();
		mav.addObject("mdto", mlist);
		mav.setViewName("AdminMembers");
		return mav;
	}
	@RequestMapping("/DeleteMember")
	public ModelAndView DeleteMember(int memberno) {
		try {
			service.DeleteMember(memberno);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			ModelAndView mav = new ModelAndView();
			mav.setViewName("Error/Error");
			return mav;
		}
		ModelAndView mav = new ModelAndView();
		mav = selectMembers();
		return mav;
	}
	//자유게시판 관리메뉴
	@RequestMapping("/AdminForum")
	public ModelAndView selectForum() {
		List<ForumDTO> flist = null;
		try {
			flist = (List<ForumDTO>) service.selectForum();
		} catch (Exception e) {
			// TODO Auto-generated catch block
			ModelAndView mav = new ModelAndView();
			mav.setViewName("Error/Error");
			return mav;
		}
		ModelAndView mav = new ModelAndView();
		mav.addObject("fdto", flist);
		mav.setViewName("AdminBoard");
		return mav;
	}
	
	@RequestMapping("/Adminview")
	public ModelAndView view (@RequestParam int bno) {
		ModelAndView mav = new ModelAndView();
		try {
			mav.addObject("dto", service.read(bno));
		} catch (Exception e) {
			// TODO Auto-generated catch block
			mav.setViewName("Error/Error");
			return mav;
		}
		mav.setViewName("Admin/view");
		return mav;
	}
	@RequestMapping("/DeleteForum")
	public ModelAndView DeleteForum(int bno) {
		try {
			service.DeleteForum(bno);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			ModelAndView mav = new ModelAndView();
			mav.setViewName("Error/Error");
			return mav;
		}
		ModelAndView mav = new ModelAndView();
		mav = selectForum();
		return mav;
	}
	//공지사항 관리메뉴(Admin/top.jsp에서 링크걸려있음)
	@RequestMapping("/AdminNotice")
	public ModelAndView AdminNotice () {
		List<NoticeDTO> noticelist = null;
		try {
			noticelist = nservice.notice();
		} catch (Exception e) {
			// TODO Auto-generated catch block
			ModelAndView mav = new ModelAndView();
			mav.setViewName("Error/Error");
			return mav;
		}		//notice table에서 select
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
		try {
			fservice.admin_update(dto);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			return "Error/Error";
		}
		return "redirect:/Admin";
	}
	//관리자 게시글 삭제
	@RequestMapping("/admin_delete")
	public String admin_delete(@RequestParam int bno) {
		try {
			fservice.admin_delete(bno);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			return "Error/Error";
		}
		return "redirect:/Admin";
	}
	//관리자 게시글 등록
	@RequestMapping(value = "/admin_insert")
	public String admin_insert(NoticeDTO dto) {
		try {
			fservice.admin_create(dto);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			return "Error/Error";
		}
		return "redirect:/Admin";
	}
}
