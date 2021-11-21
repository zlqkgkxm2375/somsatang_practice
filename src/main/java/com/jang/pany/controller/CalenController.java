package com.jang.pany.controller;

import java.util.List;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.jang.pany.model.Calendar;
import com.jang.pany.service.CalenService;

@Controller
public class CalenController {
	
	@Autowired
	private CalenService calenService;
	
	@RequestMapping(value = "/acalen", method = RequestMethod.GET)
	public String toCalenEntryView(Model model) {
		model.addAttribute("calen", new Calendar());
		return "Acalendar";
	}
	
	@RequestMapping(value="/acalen", method= RequestMethod.POST)
	public String onSubmit( @Valid Calendar calen, BindingResult result, Model model) throws Exception {
		if (result.hasErrors()) { 
			model.addAllAttributes(result.getModel());
			return "Acalendar"; 
		} 
		
			if(this.calenService.insertCalen(calen)!=0) { 
				model.addAttribute("message", "2");
				model.addAttribute("calen", calen);
				return "Acalendar";
			} else {
				model.addAttribute("errMsg", "1");
				model.addAllAttributes(result.getModel());
				return "Acalendar"; 
		} 
		
	}

	@RequestMapping(value="/newUpdate")
	public String form(@RequestParam(value = "aid", required = false, defaultValue="0") String aid, Model model) throws Exception {
		if (aid != null) {
			Calendar calen = this.calenService.getCalen(aid);
			
			System.out.println(calen.getTitle());
			
			model.addAttribute("commandUrl", "editSave");
			model.addAttribute("calen", calen);
	
		} else {
			model.addAttribute("commandUrl", "addSave");
			model.addAttribute("calen", new Calendar() );
		} 
		return "Acalendar";
	}
	
	
	@RequestMapping(value="/addSave", method = RequestMethod.POST)
	public String add(@Valid Calendar calen, BindingResult result, RedirectAttributes rea) throws Exception {
		if (result.hasErrors()) {
			rea.addAllAttributes(result.getModel());
			return "redirect:alogin";
		}
		
		if (this.calenService.insertCalen(calen) == 1) {
			rea.addFlashAttribute("message", "2");
			return "redirect:alogin";
		} else {
			rea.addFlashAttribute("message", "1");
			return "redirect:alogin";
		}
		
	}	
	
	@RequestMapping(value="/editSave", method = RequestMethod.POST)
	public String update( @ModelAttribute("card") @Valid Calendar calen, BindingResult result, RedirectAttributes rea) throws Exception {

		if (result.hasErrors()) {
			rea.addAllAttributes(result.getModel());
			return "redirect:acalen";
			}	

		if (this.calenService.updateCalen(calen) == 1) {
				rea.addFlashAttribute("message", "1");
				return "redirect:acalen";
			} else {
				rea.addFlashAttribute("message", "2");
				return "redirect:acalen"; 
			
			}
		
	}
	
	@RequestMapping(value="/delete", method = RequestMethod.POST)
	public String delete(@RequestParam(value = "dno", required = false) int dno, RedirectAttributes rea) throws Exception {

		if (this.calenService.deleteCalen(dno) == 1) {
				rea.addFlashAttribute("message", "2");
				return "redirect:acalen";
			} else {
				rea.addFlashAttribute("message", "1");
				return "redirect:acalen"; 
			
			}
		
	}
	
	@RequestMapping(value = "/acalenView", method= RequestMethod.GET)
	public String calenView(@ModelAttribute("Calendar") Model model, Calendar calendar) throws Exception{
		

		List<Calendar> calenView = this.calenService.getCalen(calendar);
		model.addAttribute("calenView", calenView);
		
		return "acalen";
	}

		
}