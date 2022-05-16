package com.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.dto.ForumDTO;

@Repository
public class ForumDAO {

	@Autowired
	SqlSessionTemplate template;

	public List<ForumDTO> listAll() {
		return template.selectList("ForumMapper.listAll");
	}

	public void create(ForumDTO dto) {
		template.insert("ForumMapper.insert", dto);
	}

	public void increaseViewcnt(int bno) {
		template.update("ForumMapper.increaseViewcnt", bno);
	}

	public Object read(int bno) {
		return template.selectOne("ForumMapper.view", bno);
	}

	public void update(ForumDTO dto) {
		template.update("ForumMapper.update", dto);
	}

	public void delete(int bno) {
		template.delete("ForumMapper.delete", bno);
	}
}
