package com.jang.pany.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.jang.pany.model.Vacation;
import com.jang.pany.service.VacationService;

@Controller
public class AvacationController {
	
	@Autowired
	private VacationService vacationService;
	
	@RequestMapping(value = "/avacationList", method= RequestMethod.GET)
	public String evacation(@ModelAttribute("vacation") Vacation vacation, Model model, String eid) throws Exception{
		List<Vacation> vlist = this.vacationService.getVList(vacation);
		model.addAttribute("vlist", vlist);
		return "Avacation";
	}

}
