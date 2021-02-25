package com.cts.p027.controller;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.propertyeditors.CustomDateEditor;
import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.cts.p027.model.Resume;
import com.cts.p027.model.User;
import com.cts.p027.service.ResumeService;

@Controller

public class ResumeController {
	@Autowired
	Resume resume;
	@Autowired
	ResumeService resumeservice;
	@Autowired
	User usermodel;
	
	@InitBinder     
	public void initBinder(WebDataBinder binder){
	     binder.registerCustomEditor(       Date.class,     
	                         new CustomDateEditor(new SimpleDateFormat("yyyy-MM-dd"), true, 10));   
	}
	@GetMapping("/resume")
	public String showResume() {
		return "resume";
	}
	
	
	/*@PostMapping("/showresumedetails")
	public String showNames(ModelMap model,@RequestParam String email)
	{
		System.out.println(email);
		List<Resume> resumelist;
		resumelist=resumeservice.viewresumedetails(email);
		if(resumelist.isEmpty())
		{
			
			model.put("errorMessage","Invalid Search");
			return "showresumenames";
		}
		System.out.println(resumelist);
		resume=resumelist.get(0);
		model.addAttribute("resume",resume );
		System.out.println(resume);
		return "showresumedetails";
	}*/

}
