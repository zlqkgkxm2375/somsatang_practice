package com.jang.pany.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.jang.pany.model.Home;
import com.jang.pany.service.HomeService;

@Controller
public class AhomeController {
	
	@Autowired
	private HomeService homeService;
	
	@RequestMapping(value = "/ahomeList", method= RequestMethod.GET)
	public String ahome(@ModelAttribute("home") Home home, Model model, String eid) throws Exception{
		List<Home> hlist = this.homeService.getHList(home);
		model.addAttribute("hlist", hlist);
		return "Ahome";
	}

}
