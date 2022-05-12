package com.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.dao.SSpotDAO;
import com.dto.RSpotDTO;
import com.dto.SSpotDTO;

@Service
public class SSpotService {

	@Autowired
	SSpotDAO dao;

	public void registinglist(SSpotDTO dto) {
		dao.registinglist(dto);
		
	}

	public List<SSpotDTO> shuffle(int sell_rno) {
		List<SSpotDTO> list = dao.shuffle(sell_rno);
		return list;
	}

	public void UpdateMyAttendingS(SSpotDTO rdto) {
		dao.UpdateMyAttendingS(rdto);
		
	}

	public void DeleteMyAttendingS(int memberno) {
		dao.DelteMyAttendingS(memberno);
		
	}
}
