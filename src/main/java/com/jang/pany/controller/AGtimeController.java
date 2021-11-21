package com.jang.pany.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.jang.pany.model.Astime;
import com.jang.pany.model.SearchVO;
import com.jang.pany.service.GtimeService;

@Controller
public class AGtimeController {

	@Autowired
	private GtimeService gtimeService;
	
	@RequestMapping(value ="/AgoUpdate", method= RequestMethod.POST)
	public String onSubmit(@RequestParam(value = "eid", required = false, defaultValue="0") String eid, String gu, HttpServletRequest request, Model model) throws Exception {
		
		HttpSession session = request.getSession();
		session.getAttribute("aid");
		return "AmainForm"; 
		}
	
	@RequestMapping(value = "/AgoList", method= RequestMethod.GET)
	public String glist(@ModelAttribute("searchVO") SearchVO searchVO, Model model) throws Exception{
		

		List<Astime> aglist = this.gtimeService.getAGList(searchVO);
		model.addAttribute("aglist", aglist);
		
		StringBuffer pageUrl = gtimeService.getPageUrl(searchVO);
		model.addAttribute("pageHttp", pageUrl);
		
		model.addAttribute("searchVO", searchVO);
		
		return "AGtime";
	}


	
	@RequestMapping(value = "/AgoSList", method= RequestMethod.GET)
	public String Slist(@ModelAttribute("searchVO") SearchVO searchVO, @Valid Astime astime, Model model) throws Exception{
		

		List<Astime> aglist = this.gtimeService.getASList(searchVO, astime);
		model.addAttribute("aglist", aglist);
		
		StringBuffer pageUrl = gtimeService.getPageSUrl(searchVO, astime);
		model.addAttribute("pageHttp", pageUrl);
		
		model.addAttribute("searchVO", searchVO);
		
		return "AGtime";
	}
	
	
	
}
	

