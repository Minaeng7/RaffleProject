package com.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.dto.BoardDTO;
import com.service.BoardService;

@Controller
public class BoardController {

	@Autowired
	BoardService service;
	
	//게시글 목록
	@RequestMapping("/list")
	public ModelAndView list() {
		List<BoardDTO> list = service.listAll();
		System.out.println(list);
		ModelAndView mav = new ModelAndView();
		mav.addObject("list", list);
		mav.setViewName("board/list");
		return mav;
	}
	//게시글 작성 화면
	@RequestMapping("/write")
	public String write() {
		return "board/write";
	}
	//게시글 등록
	@RequestMapping(value = "/insert")
	public String insert(BoardDTO dto) {
		service.create(dto);
		return "redirect:list";
	}
	//게시글 상세내용 조회, 조회수 증가
	@RequestMapping("/view")
	public ModelAndView view (int bno, HttpSession session) {
		service.increaseViewcnt(bno, session);
		ModelAndView mav = new ModelAndView();
		mav.addObject("dto", service.read(bno));
		mav.setViewName("board/view");
		return mav;
	}
	//게시글 수정
	@RequestMapping("/update")
	public String update(BoardDTO dto) {
		service.update(dto);
		return "redirect:list";
	}
	//게시글 삭제
	@RequestMapping("/delete")
	public String delete(int bno) {
		service.delete(bno);
		return "redirect:list";
	}
}
