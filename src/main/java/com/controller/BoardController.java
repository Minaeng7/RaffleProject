package com.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.dto.ForumDTO;
import com.dto.NoticeDTO;
import com.service.ForumService;
import com.service.NoticeService;

@Controller
public class BoardController {

	@Autowired
	ForumService fservice;
	@Autowired
	NoticeService nservice;
	
	//공지사항 목록
	@RequestMapping("/notice")
	public ModelAndView notice() {
		List<NoticeDTO> notice = nservice.notice();
		System.out.println("notice : "+notice);
		ModelAndView mav = new ModelAndView();
		mav.addObject("notice", notice);
		mav.setViewName("notice");
		return mav;
	}
	
	//게시글 목록
	@RequestMapping("/forum")
	public ModelAndView list() {
		List<ForumDTO> list = fservice.listAll();
		System.out.println("list" +list);
		ModelAndView mav = new ModelAndView();
		mav.addObject("list", list);
		mav.setViewName("forum");
		return mav;
	}
	//게시글 작성 화면
	@RequestMapping("/write")
	public String write() {
		return "board/write";
	}
	//게시글 등록
	@RequestMapping(value = "/insert")
	public String insert(ForumDTO dto) {
		fservice.create(dto);
		return "redirect:forum";
	}
	//게시글 상세내용 조회, 조회수 증가
	@RequestMapping("/view")
	public ModelAndView view (int bno, HttpSession session) {
		fservice.increaseViewcnt(bno, session);
		ModelAndView mav = new ModelAndView();
		mav.addObject("dto", fservice.read(bno));
		mav.setViewName("board/view");
		return mav;
	}
	//게시글 수정
	@RequestMapping("/update")
	public String update(ForumDTO dto) {
		fservice.update(dto);
		return "redirect:forum";
	}
	//게시글 삭제
	@RequestMapping("/delete")
	public String delete(int bno) {
		fservice.delete(bno);
		return "redirect:forum";
	}
}
