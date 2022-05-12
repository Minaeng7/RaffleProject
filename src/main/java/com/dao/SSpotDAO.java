package com.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.dto.RSpotDTO;
import com.dto.SSpotDTO;

@Repository
public class SSpotDAO {

	@Autowired
	SqlSessionTemplate session;

	public void registinglist(SSpotDTO dto) {
		session.insert("SpotMapper.Sregistringlist", dto);
		
	}

	public List<SSpotDTO> shuffle(int sell_rno) {
		List<SSpotDTO> list = session.selectList("SpotMapper.SShuffle",sell_rno);
		return list;
	}

	public void UpdateMyAttendingS(SSpotDTO rdto) {
		session.update("SpotMapper.UpdateMyAttendingS", rdto);
		
	}

	public void DelteMyAttendingS(int memberno) {
		session.delete("SpotMapper.DeleteMyAttendingS", memberno);
		
	}
}
