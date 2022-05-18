package com.dao;

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

	public int registinglist(SSpotDTO dto) {
		int n = session.insert("SpotMapper.Sregistringlist", dto);
		return n;
		
	}

	public List<SSpotDTO> shuffle(int sell_rno) {
		List<SSpotDTO> list = session.selectList("SpotMapper.SShuffle",sell_rno);
		return list;
	}

	public void UpdateMyAttendingS(SSpotDTO rdto) {
		session.update("SpotMapper.UpdateMyAttendingS", rdto);
		
	}

	public void DelteMyAttendingS(SSpotDTO sdto) {
		session.delete("SpotMapper.DeleteMyAttendingS", sdto);
		
	}

	public void AddWinner(SSpotDTO dto) {
		session.insert("SpotMapper.AddWinnerS", dto);
		
	}

	public SwinDTO Winnercheck(int sell_rno) {
		SwinDTO dto = session.selectOne("SpotMapper.WinnercheckS",sell_rno);
		return dto;
	}
}
