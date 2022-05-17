package com.controller;

import java.util.Collections;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.dto.RSpotDTO;
import com.dto.SSpotDTO;
import com.service.RSpotService;
import com.service.SSpotService;

@Controller
public class RandomController {

	@Autowired
	RSpotService rservice;
	@Autowired
	SSpotService sservice;
	
	@RequestMapping("/RShuffle")
	public ModelAndView RShuffle(int resell_rno) {//추첨
		List<RSpotDTO>list = rservice.shuffle(resell_rno);
		Collections.shuffle(list);
		RSpotDTO dto = list.get(0);
		rservice.AddWinner(dto);
		ModelAndView mav = new ModelAndView();
		mav.addObject("Winner",dto);
		mav.setViewName("RWinneris");
		return mav;
	}
	@RequestMapping("/SShuffle")
	public ModelAndView SShuffle(int sell_rno) {
		List<SSpotDTO>list = sservice.shuffle(sell_rno);
		Collections.shuffle(list);
		SSpotDTO dto = list.get(0);
		sservice.AddWinner(dto);
		ModelAndView mav = new ModelAndView();
		mav.addObject("Winner",dto);
		mav.setViewName("SWinneris");
		return mav;
	}

}
