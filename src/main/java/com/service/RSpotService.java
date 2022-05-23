package com.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.dao.RSpotDAO;
import com.dto.RSpotDTO;
import com.dto.RwinDTO;

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

	public void DeleteMyAttendingR(RSpotDTO rdto) {//응모정보 삭제
		dao.DeleteMyAttendingR(rdto);
		
	}

	public void AddWinner(RSpotDTO dto) {
		dao.AddWinnder(dto);
		
	}

	public RwinDTO Winnercheck(int resell_rno) {
		return dao.Winnercheck(resell_rno);
	}

	public void MyAttendingListR(RSpotDTO rdto) {
		dao.MyAttendingListR(rdto);
	}

	public List<RSpotDTO> selectRSpotList(int memberno) {
		return dao.selectRSpotList(memberno);
	}

	public RSpotDTO selectRSpot(Map<String, Integer> map) {
		return dao.selectRSpot(map);
	}

}
