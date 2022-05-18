package com.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.dao.SSpotDAO;
import com.dto.RSpotDTO;
import com.dto.SSpotDTO;
import com.dto.SwinDTO;

@Service
public class SSpotService {

	@Autowired
	SSpotDAO dao;

	public int registinglist(SSpotDTO dto) {
		int n = dao.registinglist(dto);
		return n;
	}

	public List<SSpotDTO> shuffle(int sell_rno) {
		List<SSpotDTO> list = dao.shuffle(sell_rno);
		return list;
	}

	public void UpdateMyAttendingS(SSpotDTO rdto) {
		dao.UpdateMyAttendingS(rdto);
		
	}

	public void DeleteMyAttendingS(SSpotDTO sdto) {
		dao.DelteMyAttendingS(sdto);
		
	}

	public void AddWinner(SSpotDTO dto) {
		dao.AddWinner(dto);
		
	}

	public SwinDTO Winnercheck(int sell_rno) {
		SwinDTO dto = dao.Winnercheck(sell_rno);
		return dto;
	}
}
