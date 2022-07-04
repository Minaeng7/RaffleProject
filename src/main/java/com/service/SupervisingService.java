package com.service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.dao.SupervisingDAO;
import com.dto.MemberDTO;
import com.dto.ResellRDTO;
import com.dto.SellRDTO;

@Service
public class SupervisingService {

	@Autowired
	SupervisingDAO dao;

	public List<ResellRDTO> selectMyAttendedRaffleR(int memberno) throws Exception {// 응모한 래플 정보
		List<ResellRDTO> list = new ArrayList<>();
		list = dao.selectMyAttendedRaffleR(memberno);
		return list;
	}

	public List<ResellRDTO> selectMyRaffleR(int memberno) throws Exception {// 내가 만든 래플 정보
		List<ResellRDTO> list = new ArrayList<>();
		list = dao.selectMyRaffleR(memberno);
		return list;
	}

	public List<SellRDTO> selectMyAttendedRaffleS(int memberno) throws Exception {
		List<SellRDTO> list = new ArrayList<>();
		list = dao.selectMyAttendedRaffleS(memberno);
		return list;
	}

	public List<SellRDTO> selectMyRaffleS(int memberno) throws Exception {
		List<SellRDTO> list = new ArrayList<>();
		list = dao.selectMyRaffleS(memberno);
		return list;
	}

	public MemberDTO Mypage(int memberno) throws Exception {
		MemberDTO dto = dao.Mypage(memberno);
		return dto;
	}



}
