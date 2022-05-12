package com.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.dao.RaffleDAO;
import com.dto.ResellRDTO;
import com.dto.SellRDTO;

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

	public List<SellRDTO> SellList(SellRDTO sdto) {
		return dao.SellList(sdto);
	}


	public void UpdateResell_r(ResellRDTO rdto) {
		dao.UpdateResell_R(rdto);
		
	}

	public void UpdateSell_r(SellRDTO rdto) {
		dao.UpdateSell_R(rdto);
		
	}
	public List<ResellRDTO> ResellList(ResellRDTO rdto) {
		return dao.ResellList(rdto);

	}

	public ResellRDTO ResellRetrieve(int resell_rno) {
		return dao.ResellRetrieve(resell_rno);
	}

	public void DeleteMyRaffleR(int memberno) {
		dao.DeleteMyRaffleR(memberno);
		
	}

	public void DeleteMyRaffleS(int memberno) {
		dao.DeleteMyRaffleS(memberno);
		
	}

	public List<SellRDTO> mainListS() {
		List<SellRDTO> list = dao.mainListS();
		return list;
	}

	public List<ResellRDTO> mainListR() {
		List<ResellRDTO> list = dao.mainListR();
		return list;
	}

}
