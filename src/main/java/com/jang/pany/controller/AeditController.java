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
public class AeditController {
	
	@Autowired
	private AdminService adminService;
	
	@RequestMapping(value="/aedit", method = RequestMethod.GET)
	public String toAdminEditView( @RequestParam("adminId") String adminId, Model model) {
		Admin admin = new Admin();
		
		try {
			admin = this.adminService.getAdmin(adminId);
			model.addAttribute("admin", admin);
			return "AeditForm";
			
		} catch (EmptyResultDataAccessException e) {
			model.addAttribute("admin", admin);
			model.addAttribute("errMsg", "사용자 정보가 존재하지 않습니다");
			return "AeditForm";
		}
	}
	@RequestMapping(value="/aedit", method = RequestMethod.POST)
	public String onSubmit ( @Valid Admin admin, BindingResult result, Model model) throws Exception {
		
		if (result.hasErrors()) {
			model.addAllAttributes(result.getModel());
			return "AeditForm";
		}
		
		if (this.adminService.updateAdmin(admin) != 0) {
			//사용자 정보 수정 실패
			model.addAttribute("admin", admin);
			model.addAttribute("message", "다음과 같이 회원님의 정보가 수정 되었습니다");
			return "AmainForm";
		} else {
			model.addAttribute("errMsg", "사용자 정보 수정에 실패하였습니다");
			return "AeditForm";
		}
	}
	
	@RequestMapping(value="/adelete", method = RequestMethod.POST)
	public String onDelSubmit(@Valid Admin admin, BindingResult result, Model model) throws Exception {
		
		if(this.adminService.deleteAdmin(admin.getAid()) != 0) {
			model.addAttribute("message", "탈퇴되었습니다");
			return "Alogin";
		} else {
			model.addAttribute("errMsg", "사용자 회원탈퇴에 실패하였습니다. 관리자에게 연락하세요");
			return "AeditForm";
		}
		
	}
	
}
