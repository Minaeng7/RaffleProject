package com.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.dto.ResellRDTO;
import com.dto.SSpotDTO;
import com.dto.SellRDTO;

@Repository
public class RaffleDAO {
	@Autowired
	SqlSessionTemplate template;

	public void addResell_r(ResellRDTO rdto) {
		template.insert("RaffleMapper.addResell_r", rdto);
	}

	public void addSell_r(SellRDTO sdto) {
		template.insert("RaffleMapper.addSell_r", sdto);
	}

	public List<SellRDTO> SellList() {
		return template.selectList("RaffleMapper.SellList");
	}


	public void UpdateResell_R(ResellRDTO rdto) {
		template.update("RaffleMapper.UpdateResell_r",rdto);
		
	}

	public void UpdateSell_R(SellRDTO rdto) {
		template.update("RaffleMapper.UpdateSell_r",rdto);
	}
	public List<ResellRDTO> ResellList() {
		return template.selectList("RaffleMapper.ResellList");

	}

	public ResellRDTO ResellRetrieve(int resell_rno) {
		return template.selectOne("RaffleMapper.ResellRetrieve", resell_rno);
	}

	public void DeleteMyRaffleR(int memberno) {
		template.delete("RaffleMapper.DeleteResell_r",memberno);
		
	}

	public void DeleteMyRaffleS(int memberno) {
		template.delete("RaffleMapper.Deletesell_r",memberno);
		
	}

	public List<SellRDTO> mainListS() {
		List<SellRDTO> list = template.selectList("RaffleMapper.mainListS");
		return list;
	}
	
	public List<SellRDTO> mainListS_new() {
		List<SellRDTO> list = template.selectList("RaffleMapper.mainListS_new");
		return list;
	}

	public List<ResellRDTO> mainListR() {
		List<ResellRDTO> list = template.selectList("RaffleMapper.mainListR");
		return list;
	}
	
	public List<ResellRDTO> mainListR_new() {
		List<ResellRDTO> list = template.selectList("RaffleMapper.mainListR_new");
		return list;
	}

	public SellRDTO SellRetrieve(int sell_rno) {
		return template.selectOne("RaffleMapper.SellRetrieve", sell_rno);
	}
	
}
