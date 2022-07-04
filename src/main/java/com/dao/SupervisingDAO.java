package com.dao;

import java.util.ArrayList;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.dto.MemberDTO;
import com.dto.ResellRDTO;
import com.dto.SellRDTO;

@Repository
public class SupervisingDAO {

	@Autowired
	SqlSessionTemplate session;

	public List<ResellRDTO> selectMyAttendedRaffleR(int memberno) throws Exception {
		List<ResellRDTO> list = new ArrayList<>();
		list = session.selectList("SupervisingMapper.selectMyAttendedRaffleR", memberno);
		return list;
	}

	public List<ResellRDTO> selectMyRaffleR(int memberno) throws Exception {
		List<ResellRDTO> list = new ArrayList<>();
		list = session.selectList("SupervisingMapper.selectMyRaffleR", memberno);
		return list;
	}

	public List<SellRDTO> selectMyAttendedRaffleS(int memberno) throws Exception {
		List<SellRDTO> list = new ArrayList<>();
		list = session.selectList("SupervisingMapper.selectMyAttendedRaffleS", memberno);
		return list;
	}

	public List<SellRDTO> selectMyRaffleS(int memberno) throws Exception {
		List<SellRDTO> list = new ArrayList<>();
		list = session.selectList("SupervisingMapper.selectMyRaffleS", memberno);
		return list;
	}

	public MemberDTO Mypage(int memberno) throws Exception {
		MemberDTO dto = session.selectOne("SupervisingMapper.Mypage", memberno);
		return dto;
	}


}
