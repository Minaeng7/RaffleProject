package com.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.dto.ForumDTO;
import com.dto.NoticeDTO;

@Repository
public class ForumDAO {

	@Autowired
	SqlSessionTemplate template;

	public List<ForumDTO> listAll() throws Exception {
		return template.selectList("ForumMapper.listAll");
	}

	public void create(ForumDTO dto) throws Exception {
		template.insert("ForumMapper.insert", dto);
	}

	public void increaseViewcnt(int bno) throws Exception {
		template.update("ForumMapper.increaseViewcnt", bno);
	}

	public Object read(int bno) throws Exception {
		return template.selectOne("ForumMapper.view", bno);
	}

	public void update(ForumDTO dto) throws Exception {
		template.update("ForumMapper.update", dto);
	}

	public void delete(int bno) throws Exception {
		template.delete("ForumMapper.delete", bno);
	}

	public void admin_create(NoticeDTO dto) throws Exception {
		template.insert("NoticeMapper.insert", dto);
	}

	public void admin_update(NoticeDTO dto) throws Exception {
		template.update("NoticeMapper.update", dto);
	}

	public void admin_delete(int bno) throws Exception {
		template.delete("NoticeMapper.delete", bno);
	}
}
