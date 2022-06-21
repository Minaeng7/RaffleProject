package com.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.dao.AdminDAO;
import com.dto.ForumDTO;
import com.dto.MemberDTO;
import com.dto.NoticeDTO;
import com.dto.ResellRDTO;
import com.dto.SellRDTO;

@Service
public class AdminService {

	@Autowired
	AdminDAO dao;

	public List<SellRDTO> SellList() throws Exception {
		return dao.SellList();
	}

	public List<ResellRDTO> ResellList() throws Exception {
		return dao.ResellList();
	}

	public void DeleteSRaffle(int sell_rno) throws Exception {
		dao.DeleteSRaffle(sell_rno);

	}

	public void DeleteRRaffle(int resell_rno) throws Exception {
		dao.DeleteRRaffle(resell_rno);

	}

	public Object read(int bno) throws Exception {
		return dao.read(bno);
	}

	public List<MemberDTO> selectMembers() throws Exception {
		return dao.selectMembers();
	}

	public void DeleteMember(int memberno) throws Exception {
		dao.DeleteMember(memberno);

	}

	public List<ForumDTO> selectForum() throws Exception {
		return dao.selectForum();
	}

	public void DeleteForum(int bno) throws Exception {
		dao.DeleteForum(bno);

	}

}
