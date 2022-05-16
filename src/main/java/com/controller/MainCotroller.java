package com.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.dto.ResellRDTO;
import com.dto.SellRDTO;
import com.service.RaffleService;

@Controller
public class MainCotroller {

	@Autowired
	RaffleService service;
	
	@RequestMapping(value = "/")
	public ModelAndView main() {
		List<SellRDTO> slist = (List<SellRDTO>) service.mainListS();
		List<ResellRDTO> rlist = (List<ResellRDTO>) service.mainListR();
		ModelAndView mav = new ModelAndView();
		mav.addObject("slist", slist);
		mav.addObject("rlist", rlist);
		mav.setViewName("index");
		return mav;
	}
}
