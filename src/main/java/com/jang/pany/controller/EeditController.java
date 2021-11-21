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

import com.jang.pany.model.Emp;
import com.jang.pany.service.EmpService;

@Controller
public class EeditController {
	
	@Autowired
	private EmpService empService;
	
	@RequestMapping(value="/eedit", method = RequestMethod.GET)
	public String toEmpEditView( @RequestParam("empId") String empId, Model model) {
		Emp emp = new Emp();
		
		try {
			emp = this.empService.getEmp(empId);
			model.addAttribute("emp", emp);
			return "EeditForm";
			
		} catch (EmptyResultDataAccessException e) {
			model.addAttribute("emp", emp);
			model.addAttribute("errMsg", "메시지");
			return "EeditForm";
		}
	}
	@RequestMapping(value="/eedit", method = RequestMethod.POST)
	public String onSubmit ( @Valid Emp emp, BindingResult result, Model model) throws Exception {
		
		if (result.hasErrors()) {
			model.addAllAttributes(result.getModel());
			return "EeditForm";
		}
		
		if (this.empService.updateEmp(emp) != 0) {
			model.addAttribute("emp", emp);
			model.addAttribute("message", "메시지");
			return "EmainForm";
		} else {
			model.addAttribute("errMsg", "메시지");
			return "EeditForm";
		}
	}
	
	@RequestMapping(value="/edelete", method = RequestMethod.POST)
	public String onDelSubmit(@Valid Emp emp, BindingResult result, Model model) throws Exception {
		
		if(this.empService.deleteEmp(emp.getEid()) != 0) {
			model.addAttribute("message", "메시지");
			return "Elogin";
		} else {
			model.addAttribute("errMsg", "메시지");
			return "EeditForm";
		}
		
	}
	
}
