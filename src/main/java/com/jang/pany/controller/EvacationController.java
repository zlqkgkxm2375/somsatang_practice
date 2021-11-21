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
import com.jang.pany.model.Vacation;
import com.jang.pany.service.VacationService;

@Controller
public class EvacationController {
	
	@Autowired
	private VacationService vacationService;
	
	@RequestMapping(value ="/evacationUpdate", method= RequestMethod.POST)
	public String onSubmit(@RequestParam(value = "eid", required = false, defaultValue="0") String eid, HttpServletRequest request, Model model) throws Exception {
		
		HttpSession session = request.getSession();
		session.getAttribute("eid");
		int evacation = this.vacationService.insertEvacation(eid);
		
		model.addAttribute("evacation", evacation);
	
		return "EmainForm"; 
		}

	@RequestMapping(value = "/evacationList", method= RequestMethod.GET)
	public String evacation(@ModelAttribute("vacation") Vacation vacation, Model model, String eid) throws Exception{
		List<Vacation> vlist = this.vacationService.getVList(vacation);
		model.addAttribute("vlist", vlist);
		return "Evacation";
	}
	@RequestMapping(value = "/evacationView", method= RequestMethod.GET)
	public String evacationView(@ModelAttribute("vacation") Vacation vacation, Model model, String eid) throws Exception{
		List<Vacation> vlist = this.vacationService.getVList(vacation);
		model.addAttribute("vlist", vlist);
		return "evacationView";
	}

	
}
