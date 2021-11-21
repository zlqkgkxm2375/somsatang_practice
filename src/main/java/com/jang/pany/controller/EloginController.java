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

import com.jang.pany.model.Emp;
import com.jang.pany.service.EmpService;

@Controller
public class EloginController {
	
	@Autowired
	private EmpService empService;
	
	@RequestMapping(value = "/elogin", method = RequestMethod.GET)
	public String toELoginView(Model model) {
		model.addAttribute("emp", new Emp());
		return "Elogin";
	}
	
	@RequestMapping(value = "/emain", method = RequestMethod.GET)
	public String toEMainView(Model model) {
		model.addAttribute("emp", new Emp());
		return "EmainForm";
	}
		@RequestMapping(value="/elogin", method= RequestMethod.POST)
	public String onASubmit( @Valid Emp emp, BindingResult result, HttpServletRequest request, Model model, HttpSession session) {
		
		if (result.hasFieldErrors("eid")||result.hasFieldErrors("epwd")) {
			model.addAllAttributes(result.getModel());
			return "Elogin";
		} 
		
		try {
			System.out.println(emp.getEid());
			Emp loginEmp = this.empService.getEmp(emp.getEid());
			
			if(emp.getEpwd().equals(loginEmp.getEpwd())) {
				model.addAttribute("loginEmp", loginEmp);
				session.setAttribute("eid", loginEmp.getEid());
				return "EmainForm";
			} else {
				result.rejectValue("epwd", "error.epwd.emp", "비밀번호 일치하지않음");
				model.addAllAttributes(result.getModel());
				return "Elogin";
			}
		} catch (EmptyResultDataAccessException e) {
			result.rejectValue("eid", "error.eid.emp", "�쉶�썝�엯 �떎�뙣");
			model.addAllAttributes(result.getModel());
			return "Elogin";
		}
		
	}
	
	@RequestMapping(value="/efindId", method = RequestMethod.GET)
	public String toEFindIdForm(Model model) {
		model.addAttribute("emp", new Emp());
		return "EfindIdForm";
	}
	
	@RequestMapping(value="/efindId", method= RequestMethod.POST)
	public String findIdSubmit( @Valid Emp emp, BindingResult result, Model model) {
		
		if (result.hasFieldErrors("ename")||result.hasFieldErrors("eemail")) {
			model.addAllAttributes(result.getModel());
			return "EfindIdForm";
		} 
		
		try {
			Emp findEmp = this.empService.efindId(emp.getEname(), emp.getEemail());
				model.addAttribute("findEmp", findEmp);
				return "EfindIdSuccess";

		} catch (EmptyResultDataAccessException e) {
			model.addAttribute("errMsg", "占싱몌옙占싱놂옙 占싱몌옙占쏙옙 占쏙옙占쏙옙占쏙옙 占쏙옙치占쏙옙占쏙옙 占십쏙옙占싹댐옙. 확占쏙옙 占쏙옙 占쌕쏙옙 占시듸옙占싹울옙 占쌍십시울옙");
			return "EfindIdForm";
		}
		
	}
	
	@RequestMapping(value="/efindPass", method = RequestMethod.GET)
	public String toAFindPassForm(Model model) {
		
		
		model.addAttribute("emp", new Emp());
		return "EfindPassForm";
	}
	
	@RequestMapping(value="/efindPass", method= RequestMethod.POST)
	public String findPassSubmit( @Valid Emp emp, BindingResult result, Model model) {
		if (result.hasFieldErrors("eid")||result.hasFieldErrors("eemail")) {
			model.addAllAttributes(result.getModel());
			return "EfindPassForm";
		} 
		
		try {
			Emp findEmp = this.empService.efindPass(emp.getEid(), emp.getEemail());
				model.addAttribute("emp", findEmp);
				return "EupdatePassForm";
			
		} catch (EmptyResultDataAccessException e) {
			model.addAttribute("errMsg", "占쏙옙占싱듸옙 占싱몌옙占쏙옙 占쏙옙占쏙옙占쏙옙 占쏙옙치占쏙옙占쏙옙 占십쏙옙占싹댐옙. 확占쏙옙 占쏙옙 占쌕쏙옙 占시듸옙占싹울옙 占쌍십시울옙");
			return "EfindPassForm";
		}
		
	}

	@RequestMapping(value="/eupdatePass", method = RequestMethod.GET)
	public String toEUpdatePassForm(Model model) {
		model.addAttribute("emp", new Emp());
		return "EupdatePassForm";
	}
	@RequestMapping(value="/eupdatePass", method= RequestMethod.POST)
	public String updateSubmit( @Valid Emp emp, BindingResult result, Model model) throws Exception {
		
		if (result.hasFieldErrors("eid")||result.hasFieldErrors("epwd")) {
			model.addAllAttributes(result.getModel());
			return "EupdatePassForm";
		} 
		
		if (this.empService.eupdatePass(emp) == 1) {
			model.addAttribute("empId", emp.getEid());
			return "EupdatePassSuccess";
		} else {
			model.addAttribute("errMsg", "占싻쏙옙占쏙옙占쏙옙 占쏙옙占썸에 占쏙옙占쏙옙占싹울옙占쏙옙占싹댐옙. 占쌕쏙옙 占시듸옙占싹울옙 占쌍십시울옙");
			return "EupdatePassForm";
		}
		
	}

	   @RequestMapping("/elogout")
	     public ModelAndView logout(HttpSession session) {
	        session.invalidate();
	        ModelAndView mv = new ModelAndView("redirect:/elogin");
	        return mv;
	}
}
