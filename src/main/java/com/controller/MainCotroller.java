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
		List<SellRDTO> slist_new= (List<SellRDTO>) service.mainListS_new();
		List<ResellRDTO> rlist = (List<ResellRDTO>) service.mainListR();
		List<ResellRDTO> rlist_new = (List<ResellRDTO>) service.mainListR_new();
		ModelAndView mav = new ModelAndView();
		mav.addObject("slist", slist);
		mav.addObject("slist_new", slist_new);
		mav.addObject("rlist", rlist);
		mav.addObject("rlist_new", rlist_new);
//		System.out.println(slist_new+"\t"+rlist_new);
		mav.setViewName("index");
		return mav;
	}
}
