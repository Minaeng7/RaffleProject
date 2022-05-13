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
	
	public void memberAdd(MemberDTO m) {
		//System.out.println("service");
		dao.memberAdd(m);
	}

	public MemberDTO login(Map<String, String> map) {
		MemberDTO dto = dao.login(map); 
		return dto;
	}

	public MemberDTO idCheck(String userid) {
		MemberDTO dto= dao.idCheck(userid);
		return dto;
	}

}
