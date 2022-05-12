package com.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.dao.RSpotDAO;
import com.dto.RSpotDTO;

@Service
public class RSpotService {

	@Autowired
	RSpotDAO dao;

	public void registinglist(RSpotDTO dto) {//응모
		dao.registinglist(dto);
		
	}

	public List<RSpotDTO> shuffle(int resell_rno) {//추첨 전 참가자 명단
		List<RSpotDTO> list = dao.shuffle(resell_rno);
		return list;
	}

	public void UpdateMyAttendingR(RSpotDTO rdto) {//응모정보 수정
		dao.UpdateMyAttendingR(rdto);
		
	}

	public void DeleteMyAttendingR(int memberno) {//응모정보 삭제
		dao.DeleteMyAttendingR(memberno);
		
	}

}
