package com.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.dto.NoticeDTO;

@Repository
public class NoticeDAO {

	@Autowired
	SqlSessionTemplate template;

	public List<NoticeDTO> notice() {
		return template.selectList("NoticeMapper.notice");
	}

	public void increaseViewcnt(int bno) {
		template.update("NoticeMapper.increaseViewcnt", bno);
	}

//	public void create(ForumDTO dto) {
//		template.insert("BoardMapper.insert", dto);
//	}
//
//	public void increaseViewcnt(int bno) {
//		template.update("BoardMapper.increaseViewcnt", bno);
//	}
//
//	public Object read(int bno) {
//		return template.selectOne("BoardMapper.view", bno);
//	}
//
//	public void update(ForumDTO dto) {
//		template.update("BoardMapper.update", dto);
//	}
//
//	public void delete(int bno) {
//		template.delete("BoardMapper.delete", bno);
//	}
}
