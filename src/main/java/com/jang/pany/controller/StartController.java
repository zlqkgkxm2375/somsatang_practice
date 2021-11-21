package com.jang.pany.controller;



import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.jang.pany.model.Admin;
import com.jang.pany.model.Emp;

@Controller
public class StartController {
	
	@RequestMapping(value = "/company25", method = RequestMethod.GET)
	public String toMainView(Model model) {
		model.addAttribute("admin", new Admin());
		return "EmainForm";
	}
	
	@RequestMapping(value = "/service1", method = RequestMethod.GET)
	public String toServiceView1(Model model) {
		model.addAttribute("admin", new Admin());
		return "service1";
	}

   
	   @RequestMapping("/ahomework2")
	   public String Calendar() {
	      return "NewFile";
	   }
	   

		@RequestMapping(value = "/notice", method = RequestMethod.GET)
		public String toNoticeView1(Model model) {
			model.addAttribute("admin", new Admin());
			return "notice";
		}

		@RequestMapping(value = "/faq", method = RequestMethod.GET)
		public String toFaqView1(Model model) {
			model.addAttribute("admin", new Admin());
			return "faq";
		}
		
		@RequestMapping(value = "/apay", method = RequestMethod.GET)
		public String toaPay(Model model) {
			model.addAttribute("admin", new Admin());
			return "Acompanypay";
		}
		
		@RequestMapping(value = "/epay", method = RequestMethod.GET)
		public String toePay(Model model) {
			model.addAttribute("emp", new Emp());
			return "Ecompanypay";
		}
}
