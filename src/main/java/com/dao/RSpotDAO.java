package com.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.dto.RSpotDTO;
import com.dto.RwinDTO;

@Repository
public class RSpotDAO {

	@Autowired
	SqlSessionTemplate session;

	public void registinglist(RSpotDTO dto) throws Exception {
		session.insert("SpotMapper.Rregistringlist", dto);

	}

	public List<RSpotDTO> shuffle(int resell_rno) throws Exception {
		List<RSpotDTO> list = session.selectList("SpotMapper.RShuffle", resell_rno);
		return list;
	}

	public void UpdateMyAttendingR(RSpotDTO rdto) throws Exception {
		session.update("SpotMapper.UpdateMyAttendingR", rdto);

	}

	public void DeleteMyAttendingR(RSpotDTO rdto) throws Exception {
		session.delete("SpotMapper.DeleteMyAttendingR", rdto);

	}

	public void AddWinnder(RSpotDTO dto) throws Exception {
		session.insert("SpotMapper.AddWinnerR", dto);

	}

	public RwinDTO Winnercheck(int resell_rno) throws Exception {
		return session.selectOne("SpotMapper.WinnercheckR", resell_rno);
	}

	public void MyAttendingListR(RSpotDTO rdto) throws Exception {
		session.selectList("SpotMapper.MyAttendingListR", rdto);
	}

	public RSpotDTO selectRSpot(HashMap<String, Integer> map) throws Exception {
		return session.selectOne("SpotMapper.RSpot", map);
	}

	public List<RSpotDTO> selectRSpotList(int memberno) throws Exception {
		return session.selectList("SpotMapper.RSpotList", memberno);
	}

	public void DeleteSpotR(HashMap<String, Integer> map) throws Exception {
		session.delete("SpotMapper.DeleteSpotR", map);

	}

}
