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

	public List<SellRDTO> SellList() {
		return session.selectList("AdminMapper.SellList");
	}

	public List<ResellRDTO> ResellList() {
		return session.selectList("AdminMapper.ResellList");
	}

	public void DeleteSRaffle(int sell_rno) {
		session.delete("AdminMapper.DeleteSRaffle", sell_rno);
		
	}

	public void DeleteRRaffle(int resell_rno) {
		session.delete("AdminMapper.DeleteRRaffle", resell_rno);
		
	}

	public List<MemberDTO> selectMembers() {
		return session.selectList("AdminMapper.selectMembers");
	}

	public void DeleteMember(int memberno) {
		session.delete("AdminMapper.DeleteMember", memberno);
		
	}

	public List<ForumDTO> selectForum() {
		return session.selectList("AdminMapper.selectForum");
	}

	public Object read(int bno) {
		return session.selectOne("AdminMapper.view", bno);
	}

}
