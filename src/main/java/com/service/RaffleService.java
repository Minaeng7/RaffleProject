package com.service;

import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.dao.RaffleDAO;
import com.dto.RSpotDTO;
import com.dto.ResellRDTO;
import com.dto.SellRDTO;
import com.dto.SwinDTO;

@Service
public class RaffleService {
	@Autowired
	RaffleDAO dao;
	
	public void addResell_r(ResellRDTO rdto) {
		dao.addResell_r(rdto);
	}

	public void addSell_r(SellRDTO sdto) {
		dao.addSell_r(sdto);
	}

	public List<SellRDTO> SellList() {
		return dao.SellList();
	}


	public void UpdateResell_r(ResellRDTO rdto) {
		dao.UpdateResell_R(rdto);
		
	}

	public void UpdateSell_r(SellRDTO rdto) {
		dao.UpdateSell_R(rdto);
		
	}
	public List<ResellRDTO> ResellList() {
		return dao.ResellList();

	}

	public ResellRDTO ResellRetrieve(int resell_rno) {
		return dao.ResellRetrieve(resell_rno);
	}

	public void DeleteMyRaffleR(HashMap<String, Integer> map) {
		dao.DeleteMyRaffleR(map);
		
	}

	public void DeleteMyRaffleS(HashMap<String, Integer> map) {
		dao.DeleteMyRaffleS(map);
		
	}

	public List<SellRDTO> mainListS() {
		List<SellRDTO> list = dao.mainListS();
		return list;
	}
	
	public List<SellRDTO> mainListS_new() {
		List<SellRDTO> list = dao.mainListS_new();
		return list;
	}

	public List<ResellRDTO> mainListR() {
		List<ResellRDTO> list = dao.mainListR();
		return list;
	}
	
	public List<ResellRDTO> mainListR_new() {
		List<ResellRDTO> list = dao.mainListR_new();
		return list;
	}

	public SellRDTO SellRetrieve(int sell_rno) {
		return dao.SellRetrieve(sell_rno);
	}

	public List<ResellRDTO> RRlist() {
		return dao.RRlist();
	}

	public List<SellRDTO> SSlist() {
		return dao.SSlist();
	}


	public void RincreaseViewcnt(int resell_rno, HttpSession session) {
		dao.RincreaseViewcnt(resell_rno);
	}

	public void SincreaseViewcnt(int sell_rno, HttpSession session) {
		dao.SincreaseViewcnt(sell_rno);
		
	}

	public void updatingSpot(ResellRDTO rdto) {
		// TODO Auto-generated method stub
		dao.updatingSpot(rdto);
	}

	public void orderSell(SwinDTO sdto) {
		dao.orderSell(sdto);
	}

}
