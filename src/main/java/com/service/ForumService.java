package com.service;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.dao.ForumDAO;
import com.dto.ForumDTO;

@Service
public class ForumService {

	@Autowired
	ForumDAO dao;

	//전체 목록
	public List<ForumDTO> listAll() {
		return dao.listAll();
	}
	//게시글 쓰기
	public void create(ForumDTO dto) {
		String title = dto.getTitle();
		String content = dto.getContent();
		String username = dto.getUsername();
		//태그문자 처리
		title = title.replace("<", "&lt;");
		title = title.replace("<", "&gt;");
		username = username.replace("<", "&lt;");
		username = username.replace("<", "&gt;");
		//공백문자 처리
		title = title.replace("  ", "&nbsp;&nbsp;");
		username = username.replace("  ", "&nbsp;&nbsp;");
		//줄바꿈 문자처리
		content = content.replace("\n", "<br>");
		dto.setTitle(title);
		dto.setContent(content);
		dto.setUsername(username);;
		dao.create(dto);
	}
	public void increaseViewcnt(int bno, HttpSession session) {
		long update_time = 0;
		//세션에 저장된 조회시간 검색
		//최초로 조회할 경우 세션에 저장된 값이 없기 때문에 if문은 실행 안됨
		if (session.getAttribute("update_time_"+bno) != null) {
			update_time = (long) session.getAttribute("update_time_"+bno);
		}
		//시스템의 현재 시간을 current_time에 저장
		long current_time = System.currentTimeMillis();
		//일정 시간 경과 후 조회수 증가 처리 24*60*60*1000(24시간)
		//시스템 현재 시간 - 열람시간 > 일정시간 (조회수 증가가 가능하도록 지정한 시간)
		if (current_time - update_time > 5*1000) {
			dao.increaseViewcnt(bno);
			//세션에 시간 저장
			session.setAttribute("update_time_"+bno, current_time);
		}
	}
	public Object read(int bno) {
		return dao.read(bno);
	}
	public void update(ForumDTO dto) {
		dao.update(dto);
	}
	public void delete(int bno) {
		dao.delete(bno);
	}
}
