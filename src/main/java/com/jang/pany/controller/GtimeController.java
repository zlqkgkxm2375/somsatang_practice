package com.jang.pany.controller;

import java.io.PrintWriter;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.jang.pany.model.Gtime;
import com.jang.pany.service.GtimeService;

@Controller
public class GtimeController {

	@Autowired
	private GtimeService gtimeService;
	
	@RequestMapping(value ="/goUpdate", method= RequestMethod.POST)
	public String onSubmit(@RequestParam(value = "eid", required = false, defaultValue="0") String eid, String gu, HttpServletRequest request, Model model, HttpServletResponse response) throws Exception {
		
		HttpSession session = request.getSession();
		session.getAttribute("eid");
		List<Gtime> list = this.gtimeService.getGListForChecking(eid, gu);

		response.setContentType("text/html; charset=utf-8");
		PrintWriter out = response.getWriter();
		if (list.size() == 0) {
			int gtime = this.gtimeService.insertGtime(eid, gu);
			model.addAttribute("gtime", gtime);
			if(gu.equals("출근")) {
				out.println("<script>alert('출근하였습니다.'); </script>");
			}else {
				out.println("<script>alert('퇴근하였습니다.'); </script>");
			}
		}else {
			if(gu.equals("출근")) {
				out.println("<script>alert('이미 출근하였습니다.'); </script>");
			}else {
				out.println("<script>alert('이미 퇴근하였습니다.'); </script>");
			}
		}
		out.flush();
		return "EmainForm"; 
		}
	
	@RequestMapping(value = "/goList", method= RequestMethod.GET)
	public String glist(Model model, String eid) throws Exception{
		List<Gtime> glist = this.gtimeService.getGList(eid);
		model.addAttribute("glist", glist);
		return "Gtime";
	}
	
	
	/*@RequestMapping(value = "/list", method = RequestMethod.GET)
	public String list(Model model) throws Exception {
		
		List<Card> list = this.cardService.getCardList();
		model.addAttribute("list",list);
		
		return "CardList";
	}*/
	
	
}
	

