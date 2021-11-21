package com.jang.pany.controller;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.EmptyResultDataAccessException;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.jang.pany.model.Admin;
import com.jang.pany.service.AdminService;

@Controller
public class AjoinController {
	
	@Autowired
	private AdminService adminService;
	
	@RequestMapping(value = "/ajoin", method = RequestMethod.GET)
	public String toAdminEntryView(Model model) {
		model.addAttribute("admin", new Admin());
		return "AjoinForm";
	}
	
	@RequestMapping(value="/ajoin", method= RequestMethod.POST)
	public String onSubmit( @Valid Admin admin, BindingResult result, Model model) throws Exception {
		if (result.hasErrors()) { 
			
			model.addAllAttributes(result.getModel());
			return "AjoinForm"; 
		} 
		
			if(this.adminService.insertAdmin(admin)!=0) { 
				model.addAttribute("message", "1");
				model.addAttribute("admin", admin);
				System.out.println("AjoinController => " + admin);
				return "Alogin";
			} else {
				model.addAttribute("errMsg", "2");
				model.addAllAttributes(result.getModel());
				return "AjoinForm"; 
		} 
		
	}

	@RequestMapping(value="/acheckid", method=RequestMethod.GET)
	public String duplicateAId(@RequestParam("adminId") String adminId, Model model) {
		
		String message = "";
		int available = 0; 
		
		try {
			Admin loginAdmin = this.adminService.getAdmin(adminId);
			message = "1";
			available = 0;
			adminId="";
			
		} catch (EmptyResultDataAccessException e) {
			message = "2";
			available = 1;
		}
		
		model.addAttribute("admin", new Admin());
		model.addAttribute("message", message);
		model.addAttribute("available", available);
		model.addAttribute("adminId", adminId);

		
		
		return "AjoinForm";
	}

}
