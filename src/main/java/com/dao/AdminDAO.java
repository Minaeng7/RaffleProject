package com.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.dto.ForumDTO;
import com.dto.MemberDTO;
import com.dto.NoticeDTO;
import com.dto.ResellRDTO;
import com.dto.SellRDTO;

@Repository
public class AdminDAO {

	@Autowired
	SqlSessionTemplate session;

	public List<SellRDTO> SellList() throws Exception {
		return session.selectList("AdminMapper.SellList");
	}

	public List<ResellRDTO> ResellList() throws Exception {
		return session.selectList("AdminMapper.ResellList");
	}

	public void DeleteSRaffle(int sell_rno) throws Exception {
		session.delete("AdminMapper.DeleteSRaffle", sell_rno);

	}

	public void DeleteRRaffle(int resell_rno) throws Exception {
		session.delete("AdminMapper.DeleteRRaffle", resell_rno);

	}

	public List<MemberDTO> selectMembers() throws Exception {
		return session.selectList("AdminMapper.selectMembers");
	}

	public void DeleteMember(int memberno) throws Exception {
		session.delete("AdminMapper.DeleteMember", memberno);

	}

	public List<ForumDTO> selectForum() throws Exception {
		return session.selectList("AdminMapper.selectForum");
	}

	public Object read(int bno) throws Exception {
		return session.selectOne("AdminMapper.view", bno);
	}

	public void DeleteForum(int bno) throws Exception {
		session.delete("AdminMapper.DeleteForum", bno);

	}

}
