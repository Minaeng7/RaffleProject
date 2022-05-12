package com.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.dto.BoardDTO;

@Repository
public class BoardDAO {

	@Autowired
	SqlSessionTemplate template;

	public List<BoardDTO> listAll() {
		return template.selectList("BoardMapper.listAll");
	}

	public void create(BoardDTO dto) {
		template.insert("BoardMapper.insert", dto);
	}

	public void increaseViewcnt(int bno) {
		template.update("BoardMapper.increaseViewcnt", bno);
	}

	public Object read(int bno) {
		return template.selectOne("BoardMapper.view", bno);
	}

	public void update(BoardDTO dto) {
		template.update("BoardMapper.update", dto);
	}

	public void delete(int bno) {
		template.delete("BoardMapper.delete", bno);
	}
}
