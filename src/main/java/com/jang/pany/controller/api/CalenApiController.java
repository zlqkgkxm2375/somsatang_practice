package com.jang.pany.controller.api;

import java.util.HashMap;
import java.util.Map;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.jang.pany.model.Calendar;
import com.jang.pany.service.CalenService;

@RestController
public class CalenApiController {

	@Autowired
	private CalenService calenService;
	
	@RequestMapping(value="/api/addSave", method = RequestMethod.POST)
	public String add(@RequestBody @Valid Calendar calen, BindingResult result, RedirectAttributes rea) throws Exception {
		/*
		if (result.hasErrors()) {
			rea.addAllAttributes(result.getModel());
			return "redirect:acalen";
		}
		
		if (this.calenService.insertCalen(calen) == 1) {
			rea.addFlashAttribute("message", "2");
			return "redirect:acalen";
		} else {
			rea.addFlashAttribute("message", "1");
			return "redirect:acalen"; 
		}
		*/
		return "redirect:alogin";
	}
	
	@RequestMapping(value="/api/agoDataList", method= RequestMethod.GET)
	@ResponseBody
	public Map<String, Object> getAgoDataList() throws Exception {
		
		Map<String, Object> result = new HashMap<String, Object>();
		
		// todo DB���� ��
		
		result.put("title", "title");
		result.put("start_date", "2021-11-13");
		
		return result;
	}
}
