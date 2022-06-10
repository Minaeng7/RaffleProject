package com.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
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
		//System.out.println("notice : "+notice);
		ModelAndView mav = new ModelAndView();
		mav.addObject("notice", notice);
		mav.setViewName("notice");
		return mav;
	}
	//공지사항 상세내용 조회, 조회수 증가
	@RequestMapping("/nview")
	public ModelAndView nview (@RequestParam int bno, HttpSession session) {
		//System.out.println("nview"+bno);
		nservice.increaseViewcnt(bno, session);
		ModelAndView mav = new ModelAndView();
		mav.addObject("ndto", nservice.read(bno));
		mav.setViewName("board/nview");
		return mav;
	}
	//게시글 목록
	@RequestMapping("/forum")
	public ModelAndView list() {
		List<ForumDTO> list = fservice.listAll();
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
	public ModelAndView view (@RequestParam int bno, HttpSession session) {
		fservice.increaseViewcnt(bno, session);
		ModelAndView mav = new ModelAndView();
		mav.addObject("dto", fservice.read(bno));
		mav.setViewName("board/view");
		return mav;
	}
	@RequestMapping("/edit")
	public ModelAndView edit(ForumDTO dto, HttpSession session) {
		ModelAndView mav = new ModelAndView();
		mav.addObject("fdto", dto);
		mav.setViewName("board/edit");
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
	public String delete(@RequestParam int bno) {
		fservice.delete(bno);
		return "redirect:forum";
	}
	
}
