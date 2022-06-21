package com.service;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.dao.MemberDAO;
import com.dto.MemberDTO;

@Service
public class MemberSerivce {
	@Autowired
	MemberDAO dao;

	public void memberAdd(MemberDTO m) throws Exception {
		// System.out.println("service");
		dao.memberAdd(m);
	}

	public MemberDTO login(Map<String, String> map) throws Exception {
		MemberDTO dto = dao.login(map);
		return dto;
	}

	public MemberDTO idCheck(String userid) throws Exception {
		MemberDTO dto = dao.idCheck(userid);
		return dto;
	}

	public void updateMyinfo(MemberDTO dto) throws Exception {
		dao.updateMyinfo(dto);
	}

	public MemberDTO myinfo(int memberno) throws Exception {
		MemberDTO dto = dao.myinfo(memberno);
		return dto;
	}

}
