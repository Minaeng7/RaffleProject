package com.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.dto.RSpotDTO;

@Repository
public class RSpotDAO {

	@Autowired
	SqlSessionTemplate session;

	public void registinglist(RSpotDTO dto) {
		session.insert("SpotMapper.Rregistringlist", dto);
		
	}

	public List<RSpotDTO> shuffle(int resell_rno) {
		List<RSpotDTO> list = session.selectList("SpotMapper.RShuffle",resell_rno);
		return list;
	}

	public void UpdateMyAttendingR(RSpotDTO rdto) {
		session.update("SpotMapper.UpdateMyAttendingR", rdto);
		
	}

	public void DeleteMyAttendingR(int memberno) {
		session.delete("SpotMapper.DeleteMyAttendingR", memberno);
		
	}

	public void AddWinnder(RSpotDTO dto) {
		session.insert("SpotMapper.AddwinnerR", dto);
		
	}
}
