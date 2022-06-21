package com.service;

import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.dao.RaffleDAO;
import com.dto.RSpotDTO;
import com.dto.ResellRDTO;
import com.dto.RwinDTO;
import com.dto.SellRDTO;
import com.dto.SorderDTO;
import com.dto.SwinDTO;

@Service
public class RaffleService {
	@Autowired
	RaffleDAO dao;

	public void addResell_r(ResellRDTO rdto) throws Exception {
		dao.addResell_r(rdto);
	}

	public void addSell_r(SellRDTO sdto) throws Exception {
		dao.addSell_r(sdto);
	}

	public List<SellRDTO> SellList() throws Exception {
		return dao.SellList();
	}

	public void UpdateResell_r(ResellRDTO rdto) throws Exception {
		dao.UpdateResell_R(rdto);

	}

	public void UpdateSell_r(SellRDTO rdto) throws Exception {
		dao.UpdateSell_R(rdto);

	}

	public List<ResellRDTO> ResellList() throws Exception {
		return dao.ResellList();

	}

	public ResellRDTO ResellRetrieve(int resell_rno) throws Exception {
		return dao.ResellRetrieve(resell_rno);
	}

	public void DeleteMyRaffleR(HashMap<String, Integer> map) throws Exception {
		dao.DeleteMyRaffleR(map);

	}

	public void DeleteMyRaffleS(HashMap<String, Integer> map) throws Exception {
		dao.DeleteMyRaffleS(map);

	}

	public List<SellRDTO> mainListS() throws Exception {
		List<SellRDTO> list = dao.mainListS();
		return list;
	}

	public List<SellRDTO> mainListS_new() throws Exception {
		List<SellRDTO> list = dao.mainListS_new();
		return list;
	}

	public List<ResellRDTO> mainListR() throws Exception {
		List<ResellRDTO> list = dao.mainListR();
		return list;
	}

	public List<ResellRDTO> mainListR_new() throws Exception {
		List<ResellRDTO> list = dao.mainListR_new();
		return list;
	}

	public SellRDTO SellRetrieve(int sell_rno) throws Exception {
		return dao.SellRetrieve(sell_rno);
	}

	public List<ResellRDTO> RRlist() throws Exception {
		return dao.RRlist();
	}

	public List<SellRDTO> SSlist() throws Exception {
		return dao.SSlist();
	}

	public void RincreaseViewcnt(int resell_rno, HttpSession session) throws Exception {
		dao.RincreaseViewcnt(resell_rno);
	}

	public void SincreaseViewcnt(int sell_rno, HttpSession session) throws Exception {
		dao.SincreaseViewcnt(sell_rno);

	}

	public void updatingSpot(ResellRDTO rdto) throws Exception {
		// TODO Auto-generated method stub
		dao.updatingSpot(rdto);
	}

	public void orderSell(SwinDTO sdto) throws Exception {
		dao.orderSell(sdto);
	}

	public List<SwinDTO> WinListS() throws Exception {
		return dao.WinListS();
	}

	public List<RwinDTO> WinListR() throws Exception {
		return dao.WinListR();
	}

	public RwinDTO OrderDoneR(int resell_rno) throws Exception {
		return dao.OrderDoneR(resell_rno);
	}

	public SwinDTO OrderDoneS(int sell_rno) throws Exception {
		return dao.OrderDoneS(sell_rno);
	}

}
