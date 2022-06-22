package com.controller;

import java.io.File;
import java.util.HashMap;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.servlet.ModelAndView;

import com.dto.MemberDTO;
import com.dto.ResellRDTO;
import com.dto.RwinDTO;
import com.dto.SellRDTO;
import com.dto.SwinDTO;
import com.service.RaffleService;

@Controller
public class RaffleController {
	@Autowired
	RaffleService service;
	@Autowired
	SupervisingController con;
	
	@Resource(name="uploadPath")
	private String path;
	
	@RequestMapping(value="/loginCheck/AddSell", method=RequestMethod.POST)
	public String AddSell(SellRDTO sdto, MultipartHttpServletRequest multi) throws Exception {
			MultipartFile file = multi.getFile("file");// id가 file인 태그의 val 값
		
		if(!file.isEmpty()) {
			String image = System.currentTimeMillis()+file.getOriginalFilename();// 데이터베이스에 image에 저장할 이미지이름 생성	
			file.transferTo(new File(path + File.separator + image));
			sdto.setImage(image);
		}
		MultipartFile file1 = multi.getFile("file1");// id가 file인 태그의 val 값
		
		if(!file1.isEmpty()) {
			String image1 = System.currentTimeMillis()+file1.getOriginalFilename();// 데이터베이스에 image에 저장할 이미지이름 생성	
			file1.transferTo(new File(path + File.separator + image1));
			sdto.setImage1(image1);
		}
		
		MultipartFile file2 = multi.getFile("file2");// id가 file인 태그의 val 값

		if(!file2.isEmpty()) {
			String image2 = System.currentTimeMillis()+file2.getOriginalFilename();// 데이터베이스에 image에 저장할 이미지이름 생성	
			file2.transferTo(new File(path + File.separator + image2));
			sdto.setImage2(image2);
		}
		
		service.addSell_r(sdto);		
		return "redirect:../SList";
	}

	@RequestMapping(value="/loginCheck/AddResell", method=RequestMethod.POST)
	public String AddResell(ResellRDTO rdto, MultipartHttpServletRequest multi) throws Exception {
		MultipartFile file = multi.getFile("file");// id가 file인 태그의 val 값
		
		if(!file.isEmpty()) {
			String image = System.currentTimeMillis()+file.getOriginalFilename();// 데이터베이스에 image에 저장할 이미지이름 생성	
			file.transferTo(new File(path + File.separator + image));
			rdto.setImage(image);
		}
		MultipartFile file1 = multi.getFile("file1");// id가 file인 태그의 val 값
		
		if(!file1.isEmpty()) {
			String image1 = System.currentTimeMillis()+file1.getOriginalFilename();// 데이터베이스에 image에 저장할 이미지이름 생성	
			file1.transferTo(new File(path + File.separator + image1));
			rdto.setImage1(image1);
		}
		
		MultipartFile file2 = multi.getFile("file2");// id가 file인 태그의 val 값

		if(!file2.isEmpty()) {
			String image2 = System.currentTimeMillis()+file2.getOriginalFilename();// 데이터베이스에 image에 저장할 이미지이름 생성	
			file2.transferTo(new File(path + File.separator + image2));
			rdto.setImage2(image2);
		}
		service.addResell_r(rdto);
		return "redirect:../RList";
	}
	
	@RequestMapping("/SList")
	public ModelAndView SellList(SellRDTO sdto) {//리스트 뿌리기
		List<SellRDTO> slist = null;
		try {
			slist = (List<SellRDTO>) service.SellList();
		} catch (Exception e) {
			// TODO Auto-generated catch block
			ModelAndView mav = new ModelAndView();
			mav.setViewName("Error/Error");
			return mav;
		}
		List<SwinDTO> dto = null;
		try {
			dto = service.WinListS();
		} catch (Exception e) {
			// TODO Auto-generated catch block
			ModelAndView mav = new ModelAndView();
			mav.setViewName("Error/Error");
			return mav;
		}
		ModelAndView mav = new ModelAndView();
		mav.addObject("sdto", slist);
		mav.addObject("dto", dto);
		mav.setViewName("SList");
		return mav;
	}
	
	@RequestMapping("/RList")
	public ModelAndView ResellList(ResellRDTO rdto) {
		List<ResellRDTO> rlist = null;
		try {
			rlist = (List<ResellRDTO>) service.ResellList();
		} catch (Exception e) {
			// TODO Auto-generated catch block
			ModelAndView mav = new ModelAndView();
			mav.setViewName("Error/Error");
			return mav;
		}
		List<RwinDTO> dto = null;
		try {
			dto = service.WinListR();
		} catch (Exception e) {
			// TODO Auto-generated catch block
			ModelAndView mav = new ModelAndView();
			mav.setViewName("Error/Error");
			return mav;
		}
		ModelAndView mav = new ModelAndView();
		mav.addObject("rdto", rlist);
		mav.addObject("dto", dto);
		mav.setViewName("RList");
		return mav;
	}	
	@RequestMapping(value="/ResellRetrieve")
	public ModelAndView ResllRetrieve(int resell_rno, HttpSession session) {//상품상세정보
		List<ResellRDTO> rlist = null;
		try {
			rlist = service.RRlist();
		} catch (Exception e) {
			// TODO Auto-generated catch block
			ModelAndView mav = new ModelAndView();
			mav.setViewName("Error/Error");
			return mav;
		}
		try {
			service.RincreaseViewcnt(resell_rno, session);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			ModelAndView mav = new ModelAndView();
			mav.setViewName("Error/Error");
			return mav;
		}
		RwinDTO rwin = null;
		try {
			rwin = service.OrderDoneR(resell_rno);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			ModelAndView mav = new ModelAndView();
			mav.setViewName("Error/Error");
			return mav;
		}
//		System.out.println(rwin);
		ModelAndView mav = new ModelAndView();
		ResellRDTO rdto = null;
		try {
			rdto = service.ResellRetrieve(resell_rno);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			mav.setViewName("Error/Error");
			return mav;
		}
		mav.addObject("rdto", rdto);
		mav.addObject("rlist", rlist);
		mav.addObject("rwin", rwin);
		mav.setViewName("ResellRetrieve");
		return mav;
	}
	
	@RequestMapping(value="/SellRetrieve")
	public ModelAndView SellRetrieve(int sell_rno, HttpSession session) {//상품상세정보 
		List<SellRDTO> slist = null;
		try {
			slist = service.SSlist();
		} catch (Exception e) {
			// TODO Auto-generated catch block
			ModelAndView mav = new ModelAndView();
			mav.setViewName("Error/Error");
			return mav;
		}
		try {
			service.SincreaseViewcnt(sell_rno, session);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			ModelAndView mav = new ModelAndView();
			mav.setViewName("Error/Error");
			return mav;
		}
		SwinDTO swin = null;
		try {
			swin = service.OrderDoneS(sell_rno);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			ModelAndView mav = new ModelAndView();
			mav.setViewName("Error/Error");
			return mav;
		}
		ModelAndView mav = new ModelAndView();
		SellRDTO sdto = null;
		try {
			sdto = service.SellRetrieve(sell_rno);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			mav.setViewName("Error/Error");
			return mav;
		}
		mav.addObject("sdto", sdto);
		mav.addObject("slist", slist);
		mav.addObject("swin", swin);
		mav.setViewName("SellRetrieve");
		return mav;
	}
	@RequestMapping("UpdateMyRaffleR")
	public ModelAndView UpdateMyRaffleR(ResellRDTO rdto) {
		ModelAndView mav = new ModelAndView();
		mav.addObject("resellrdto",rdto);
		mav.setViewName("MyRaffle/UpdateMyRaffleR");
		return mav;
	}
	@RequestMapping("UpdateMyRaffleRR")
	public ModelAndView UpdateMyRaffleRR(ResellRDTO rdto, HttpSession session) {//수정
		try {
			service.UpdateResell_r(rdto);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			ModelAndView mav = new ModelAndView();
			mav.setViewName("Error/Error");
			return mav;
		}
		ModelAndView mav = new ModelAndView();
		mav = con.MyRaffle(session);
		return mav;
	}
	@RequestMapping("UpdateMyRaffleS")
	public ModelAndView UpdateMyRaffleS(SellRDTO rdto) {
		ModelAndView mav = new ModelAndView();
		mav.addObject("sellrdto",rdto);
		mav.setViewName("MyRaffle/UpdateMyRaffleS");
		return mav;
	}
	@RequestMapping("UpdateMyRaffleSS")
	public ModelAndView UpdateMyRaffleSS(SellRDTO rdto, HttpSession session) {
		try {
			service.UpdateSell_r(rdto);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			ModelAndView mav = new ModelAndView();
			e.printStackTrace();
			mav.setViewName("Error/Error");
			return mav;
		}
		ModelAndView mav = new ModelAndView();
		mav = con.MyRaffle(session);
		return mav;
	}
	
	@RequestMapping("DeleteMyRaffleS")
	public String DeleteMyRaffleS(int sell_rno, HttpServletRequest request) {
		request.setAttribute("rno", sell_rno);
		return "MyRaffle/DeleteMyRaffleS";
	}
	@RequestMapping("DeleteMyRaffleR")
	public String DeleteMyRaffleR(int resell_rno, HttpServletRequest request) {
		request.setAttribute("rno", resell_rno);
		return "MyRaffle/DeleteMyRaffleR";
	}
	@RequestMapping("DeleteMyRaffleRR")
	public ModelAndView DeleteMyRaffleRR(int resell_rno, HttpSession session ) {//삭제
		MemberDTO dto = (MemberDTO)session.getAttribute("login");
		int memberno = dto.getMemberno();
		HashMap <String, Integer> map = new HashMap<>();
		map.put("memberno", memberno);
		map.put("resell_rno", resell_rno);
		try {
			service.DeleteMyRaffleR(map);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			ModelAndView mav = new ModelAndView();
			mav.setViewName("Error/Error");
			return mav;
		}
		ModelAndView mav = new ModelAndView();
		mav = con.MyRaffle(session);
		return mav;

	}
	@RequestMapping("/DeleteMyRaffleSS")
	public ModelAndView DeleteMyRaffleSS(int sell_rno, HttpSession session) {
//		System.out.println(sell_rno);
		MemberDTO dto = (MemberDTO)session.getAttribute("login");
		int memberno = dto.getMemberno();
		HashMap <String, Integer> map = new HashMap<>();
		map.put("memberno", memberno);
		map.put("sell_rno", sell_rno);
		try {
			service.DeleteMyRaffleS(map);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			ModelAndView mav = new ModelAndView();
			mav.setViewName("Error/Error");
			return mav;
		}
		ModelAndView mav = new ModelAndView();
		mav = con.MyRaffle(session);
		return mav;
	}
	@RequestMapping("/JoinRSpot")
	public String JoinRSpot(String rafflename, HttpSession session) {
		//System.out.println("JoinRSpot"+rafflename);
		MemberDTO dto = (MemberDTO) session.getAttribute("login");
		
		return "redirect:RList";
	}
	/*
	 * @RequestMapping("/listView") public ModelAndView view(@RequestParam int
	 * resell_rno, HttpSession session) { service.increaseViewcnt(resell_rno,
	 * session); ModelAndView mav = new ModelAndView(); mav.addObject("sellrdto",
	 * resell_rno); mav.setViewName("Product/RList"); return mav; }
	 */
}
