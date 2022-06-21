package com.dao;

import java.util.HashMap;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.dto.RSpotDTO;
import com.dto.SSpotDTO;
import com.dto.SwinDTO;

@Repository
public class SSpotDAO {

	@Autowired
	SqlSessionTemplate session;

	public int registinglist(SSpotDTO dto) throws Exception {
		int n = session.insert("SpotMapper.Sregistringlist", dto);
		return n;

	}

	public List<SSpotDTO> shuffle(int sell_rno) throws Exception {
		List<SSpotDTO> list = session.selectList("SpotMapper.SShuffle", sell_rno);
		return list;
	}

	public void UpdateMyAttendingS(SSpotDTO rdto) throws Exception {
		session.update("SpotMapper.UpdateMyAttendingS", rdto);

	}

	public void DelteMyAttendingS(SSpotDTO sdto) throws Exception {
		session.delete("SpotMapper.DeleteMyAttendingS", sdto);

	}

	public void AddWinner(SSpotDTO dto) throws Exception {
		session.insert("SpotMapper.AddWinnerS", dto);

	}

	public SwinDTO Winnercheck(int sell_rno) throws Exception {
		SwinDTO dto = session.selectOne("SpotMapper.WinnercheckS", sell_rno);
		return dto;
	}

	public void Sorder(int sell_rno) throws Exception {
		session.selectOne("SpotMapper.Sorder", sell_rno);
	}

	public void DeleteSpotS(HashMap<String, Integer> map) throws Exception {
		session.delete("SpotMapper.DeleteSpotS", map);
	}

}
