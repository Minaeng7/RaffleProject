package com.dao;

import java.util.HashMap;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.dto.RSpotDTO;
import com.dto.ResellRDTO;
import com.dto.RwinDTO;
import com.dto.SSpotDTO;
import com.dto.SellRDTO;
import com.dto.SorderDTO;
import com.dto.SwinDTO;

@Repository
public class RaffleDAO {
	@Autowired
	SqlSessionTemplate template;

	public void addResell_r(ResellRDTO rdto) throws Exception {
		template.insert("RaffleMapper.addResell_r", rdto);
	}

	public void addSell_r(SellRDTO sdto) throws Exception {
		template.insert("RaffleMapper.addSell_r", sdto);
	}

	public List<SellRDTO> SellList() throws Exception {
		return template.selectList("RaffleMapper.SellList");
	}

	public void UpdateResell_R(ResellRDTO rdto) throws Exception {
		template.update("RaffleMapper.UpdateResell_r", rdto);

	}

	public void UpdateSell_R(SellRDTO rdto) throws Exception {
		template.update("RaffleMapper.UpdateSell_r", rdto);
	}

	public List<ResellRDTO> ResellList() throws Exception {
		return template.selectList("RaffleMapper.ResellList");

	}

	public ResellRDTO ResellRetrieve(int resell_rno) throws Exception {
		return template.selectOne("RaffleMapper.ResellRetrieve", resell_rno);
	}

	public void DeleteMyRaffleR(HashMap<String, Integer> map) throws Exception {
		template.delete("RaffleMapper.DeleteResell_r", map);

	}

	public void DeleteMyRaffleS(HashMap<String, Integer> map) throws Exception {
		template.delete("RaffleMapper.Deletesell_r", map);

	}

	public List<SellRDTO> mainListS() throws Exception {
		List<SellRDTO> list = template.selectList("RaffleMapper.mainListS");
		return list;
	}

	public List<SellRDTO> mainListS_new() throws Exception {
		List<SellRDTO> list = template.selectList("RaffleMapper.mainListS_new");
		return list;
	}

	public List<ResellRDTO> mainListR() throws Exception {
		List<ResellRDTO> list = template.selectList("RaffleMapper.mainListR");
		return list;
	}

	public List<ResellRDTO> mainListR_new() throws Exception {
		List<ResellRDTO> list = template.selectList("RaffleMapper.mainListR_new");
		return list;
	}

	public SellRDTO SellRetrieve(int sell_rno) throws Exception {
		return template.selectOne("RaffleMapper.SellRetrieve", sell_rno);
	}

	public List<ResellRDTO> RRlist() throws Exception {
		return template.selectList("RaffleMapper.RRlist");
	}

	public List<SellRDTO> SSlist() throws Exception {
		return template.selectList("RaffleMapper.SSlist");
	}

	public Object RincreaseViewcnt(int resell_rno) throws Exception {
		return template.update("RaffleMapper.RincreaseViewcnt", resell_rno);
	}

	public Object SincreaseViewcnt(int sell_rno) throws Exception {
		return template.update("RaffleMapper.SincreaseViewcnt", sell_rno);

	}

	public void updatingSpot(ResellRDTO rdto) throws Exception {
		template.update("RaffleMapper.updatingSpot", rdto);

	}

	public void orderSell(SwinDTO sdto) throws Exception {
		template.insert("RaffleMapper.orderSell", sdto);
	}

	public List<SwinDTO> WinListS() throws Exception {
		return template.selectList("RaffleMapper.WinListS");
	}

	public List<RwinDTO> WinListR() throws Exception {
		return template.selectList("RaffleMapper.WinListR");
	}

	public RwinDTO OrderDoneR(int resell_rno) throws Exception {
		return template.selectOne("RaffleMapper.OrderDoneR", resell_rno);
	}

	public SwinDTO OrderDoneS(int sell_rno) throws Exception {
		return template.selectOne("RaffleMapper.OrderDoneS", sell_rno);
	}

}
