package com.jang.pany.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.EmptyResultDataAccessException;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.jang.pany.model.Admin;
import com.jang.pany.model.Emp;
import com.jang.pany.service.AdminService;

@Controller
public class AloginController {
	
	@Autowired
	private AdminService adminService;
	
	@RequestMapping(value = "/alogin", method = RequestMethod.GET)
	public String toALoginView(Model model) {
		model.addAttribute("admin", new Admin());
		return "Alogin";
	}
	
	@RequestMapping(value = "/amain", method = RequestMethod.GET)
	public String toAMainView(Model model) {
		model.addAttribute("admin", new Admin());
		return "AmainForm";
	}
	
	@RequestMapping(value="/alogin", method= RequestMethod.POST)
	public String onASubmit( @Valid Admin admin, BindingResult result, HttpServletRequest request, Model model, HttpSession session) {

		if (result.hasFieldErrors("aid")||result.hasFieldErrors("apwd")) {
			model.addAllAttributes(result.getModel());
			return "Alogin";
		} 
		
		try {
			System.out.println(admin.getAid());
			Admin loginAdmin = this.adminService.getAdmin(admin.getAid());
			
			if(admin.getApwd().equals(loginAdmin.getApwd())) {
				model.addAttribute("loginAdmin", loginAdmin);
				session.setAttribute("aid", loginAdmin.getAid());
				return "AmainForm";
			} else {
				result.rejectValue("apwd", "error.apwd.amdin", "1");
				model.addAllAttributes(result.getModel());
				return "Alogin";
			}
		} catch (EmptyResultDataAccessException e) {
			result.rejectValue("aid", "error.aid.admin", "2");
			model.addAllAttributes(result.getModel());
			return "Alogin";
		}
		
	}
	
	@RequestMapping(value="/afindId", method = RequestMethod.GET)
	public String toAFindIdForm(Model model) {
		model.addAttribute("admin", new Admin());
		return "AfindIdForm";
	}
	
	@RequestMapping(value="/afindId", method= RequestMethod.POST)
	public String findIdSubmit( @Valid Admin admin, BindingResult result, Model model) {
		
		if (result.hasFieldErrors("aname")||result.hasFieldErrors("aemail")) {
			model.addAllAttributes(result.getModel());
			return "AfindIdForm";
		} 
		
		try {
			Admin findAdmin = this.adminService.afindId(admin.getAname(), admin.getAemail());
				model.addAttribute("findAdmin", findAdmin);
				return "AfindIdSuccess";

		} catch (EmptyResultDataAccessException e) {
			model.addAttribute("errMsg", "1");
			return "AfindIdForm";
		}
		
	}
	
	@RequestMapping(value="/afindPass", method = RequestMethod.GET)
	public String toAFindPassForm(Model model) {
		model.addAttribute("admin", new Admin());
		return "AfindPassForm";
	}
	
	@RequestMapping(value="/afindPass", method= RequestMethod.POST)
	public String findPassSubmit( @Valid Admin admin, BindingResult result, Model model) {
		if (result.hasFieldErrors("aid")||result.hasFieldErrors("aemail")) {
			model.addAllAttributes(result.getModel());
			return "AfindPassForm";
		} 
		
		try {
			Admin findAdmin = this.adminService.afindPass(admin.getAid(), admin.getAemail());
				model.addAttribute("admin", findAdmin);
				return "AupdatePassForm";
			
		} catch (EmptyResultDataAccessException e) {
			model.addAttribute("errMsg", "2");
			return "AfindPassForm";
		}
		
	}

	@RequestMapping(value="/aupdatePass", method = RequestMethod.GET)
	public String toAUpdatePassForm(Model model) {
		model.addAttribute("admin", new Admin());
		return "AupdatePassForm";
	}
	@RequestMapping(value="/aupdatePass", method= RequestMethod.POST)
	public String updateSubmit( @Valid Admin admin, BindingResult result, Model model) throws Exception {
		
		if (result.hasFieldErrors("aid")||result.hasFieldErrors("apwd")) {
			model.addAllAttributes(result.getModel());
			return "AupdatePassForm";
		} 
		
		if (this.adminService.aupdatePass(admin) == 1) {
			model.addAttribute("adminId", admin.getAid());
			return "AupdatePassSuccess";
		} else {
			model.addAttribute("errMsg", "1");
			return "AupdatePassForm";
		}
		
	}

	   @RequestMapping("/alogout")
	     public ModelAndView logout(HttpSession session) {
	        session.invalidate();
	        ModelAndView mv = new ModelAndView("redirect:/alogin");
	        return mv;
	}
}
