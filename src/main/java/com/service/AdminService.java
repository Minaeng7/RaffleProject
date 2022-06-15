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

	public List<SellRDTO> SellList() {
		return dao.SellList();
	}

	public List<ResellRDTO> ResellList() {
		return dao.ResellList();
	}

	public void DeleteSRaffle(int sell_rno) {
		dao.DeleteSRaffle(sell_rno);
		
	}

	public void DeleteRRaffle(int resell_rno) {
		dao.DeleteRRaffle(resell_rno);
		
	}
	public Object read(int bno) {
		return dao.read(bno);
	}

	public List<MemberDTO> selectMembers() {
		return dao.selectMembers();
	}

	public void DeleteMember(int memberno) {
		dao.DeleteMember(memberno);
		
	}

	public List<ForumDTO> selectForum() {
		return dao.selectForum();
	}



	
}
