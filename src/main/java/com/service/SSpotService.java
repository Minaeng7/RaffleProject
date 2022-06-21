package com.service;

import java.util.HashMap;
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

	public int registinglist(SSpotDTO dto) throws Exception {
		int n = dao.registinglist(dto);
		return n;
	}

	public List<SSpotDTO> shuffle(int sell_rno) throws Exception {
		List<SSpotDTO> list = dao.shuffle(sell_rno);
		return list;
	}

	public void UpdateMyAttendingS(SSpotDTO rdto) throws Exception {
		dao.UpdateMyAttendingS(rdto);

	}

	public void DeleteMyAttendingS(SSpotDTO sdto) throws Exception {
		dao.DelteMyAttendingS(sdto);

	}

	public void AddWinner(SSpotDTO dto) throws Exception {
		dao.AddWinner(dto);

	}

	public SwinDTO Winnercheck(int sell_rno) throws Exception {
		SwinDTO dto = dao.Winnercheck(sell_rno);
		return dto;
	}

	public void Sorder(int sell_rno) throws Exception {
		dao.Sorder(sell_rno);
	}

	public void DeleteSpotS(HashMap<String, Integer> map) throws Exception {
		dao.DeleteSpotS(map);
	}

}
