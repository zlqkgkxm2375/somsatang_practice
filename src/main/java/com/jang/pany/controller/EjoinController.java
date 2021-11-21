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
public class EjoinController {
	
	@Autowired
	private EmpService empService;
	
	@RequestMapping(value = "/ejoin", method = RequestMethod.GET)
	public String toEmpEntryView(Model model) {
		model.addAttribute("emp", new Emp());
		return "EjoinForm";
	}
	
	@RequestMapping(value="/ejoin", method= RequestMethod.POST)
	public String onSubmit( @Valid Emp emp, BindingResult result, Model model) throws Exception {
		if (result.hasErrors()) { 
			
			model.addAllAttributes(result.getModel());
			return "EjoinForm"; 
		} 
		
			if(this.empService.insertEmp(emp)!=0) { 
				model.addAttribute("message", "회원가입 완료");
				model.addAttribute("emp", emp);
				System.out.println("EjoinController => " + emp);
				return "Elogin";
			} else {
				model.addAttribute("errMsg", "회원가입 실패");
				model.addAllAttributes(result.getModel());
				return "EjoinForm"; 
		} 
		
	}

	@RequestMapping(value="/echeckid", method=RequestMethod.GET)
	public String duplicateEId(@RequestParam("empId") String empId, Model model) {
		
		String message = "";
		int available = 0; 
		
		try {
			Emp loginEmp = this.empService.getEmp(empId);
			message = "존재하는 아이디";
			available = 0;
			empId="";
			
		} catch (EmptyResultDataAccessException e) {
			message = "사용 가능 아이디";
			available = 1;
		}
		
		model.addAttribute("emp", new Emp());
		model.addAttribute("message", message);
		model.addAttribute("available", available);
		model.addAttribute("empId", empId);

		
		
		return "EjoinForm";
	}

}
