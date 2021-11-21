package com.jang.pany.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.jang.pany.model.Home;
import com.jang.pany.service.HomeService;

@Controller
public class EhomeController {
	
	@Autowired
	private HomeService homeService;
	
	@RequestMapping(value ="/ehomeUpdate", method= RequestMethod.POST)
	public String onSubmit(@RequestParam(value = "eid", required = false, defaultValue="0") String eid, HttpServletRequest request, Model model) throws Exception {
		
		HttpSession session = request.getSession();
		session.getAttribute("eid");
		int ehome = this.homeService.insertEhome(eid);
		
		model.addAttribute("ehome", ehome);
	
		return "EmainForm"; 
		}

	@RequestMapping(value = "/ehomeList", method= RequestMethod.GET)
	public String ehome(@ModelAttribute("home") Home home, Model model, String eid) throws Exception{
		List<Home> hlist = this.homeService.getHList(home);
		model.addAttribute("hlist", hlist);
		return "Ehome";
	}
	@RequestMapping(value = "/ehomeView", method= RequestMethod.GET)
	public String ehomeView(@ModelAttribute("home") Home home, Model model, String eid) throws Exception{
		List<Home> hlist = this.homeService.getHList(home);
		model.addAttribute("hlist", hlist);
		return "ehomeView";
	}

	
}
