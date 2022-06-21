package com.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.dao.RSpotDAO;
import com.dto.RSpotDTO;
import com.dto.RwinDTO;
import com.dto.SSpotDTO;

@Service
public class RSpotService {

	@Autowired
	RSpotDAO dao;

	public void registinglist(RSpotDTO dto) throws Exception {// 응모
		dao.registinglist(dto);
	}

	public List<RSpotDTO> shuffle(int resell_rno) throws Exception {// 추첨 전 참가자 명단
		List<RSpotDTO> list = dao.shuffle(resell_rno);
		return list;
	}

	public void UpdateMyAttendingR(RSpotDTO rdto) throws Exception {// 응모정보 수정
		dao.UpdateMyAttendingR(rdto);

	}

	public void DeleteMyAttendingR(RSpotDTO rdto) throws Exception {// 응모정보 삭제
		dao.DeleteMyAttendingR(rdto);

	}

	public void AddWinner(RSpotDTO dto) throws Exception {
		dao.AddWinnder(dto);

	}

	public RwinDTO Winnercheck(int resell_rno) throws Exception {
		return dao.Winnercheck(resell_rno);
	}

	public void MyAttendingListR(RSpotDTO rdto) throws Exception {
		dao.MyAttendingListR(rdto);
	}

	public RSpotDTO selectRSpot(HashMap<String, Integer> map) throws Exception {
		return dao.selectRSpot(map);
	}

	public List<RSpotDTO> selectRSpotList(int memberno) throws Exception {
		return dao.selectRSpotList(memberno);
	}

	public void DeleteSpotR(HashMap<String, Integer> map) throws Exception {
		dao.DeleteSpotR(map);

	}

}
