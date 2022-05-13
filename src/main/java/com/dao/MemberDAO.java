package com.dao;

import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.dto.MemberDTO;
@Repository
public class MemberDAO {
	@Autowired
	SqlSessionTemplate template;//자동주입
	
	public void memberAdd(MemberDTO m) {
		System.out.println("DAOOOOO");
		int n = template.insert("MemberMapper.memberAdd", m);
		System.out.println("insert갯수 : "+ n );
	}
	public MemberDTO login(Map<String, String> map) {
		MemberDTO dto = template.selectOne("MemberMapper.login", map);
		return dto;
	}
	public MemberDTO idCheck(String userid) {
		MemberDTO dto = template.selectOne("MemberMapper.idCheck",userid);
		return dto;
	}

}
