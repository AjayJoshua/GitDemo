package com.cts.p027.controller;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.propertyeditors.CustomDateEditor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.cts.p027.model.Employer;
import com.cts.p027.model.InterviewDate;
import com.cts.p027.model.Resume;
import com.cts.p027.service.EmployeeService;
import com.cts.p027.service.ResumeService;

@Controller
public class RolesController {
	@Autowired
	Employer employer;
	@Autowired
	EmployeeService employeeservice;
	@Autowired
	ResumeService resumeservice;
	@Autowired
	Resume resume;
	@Autowired
	InterviewDate interview;
	
	@InitBinder     
	public void initBinder(WebDataBinder binder){
	     binder.registerCustomEditor(       Date.class,     
	                         new CustomDateEditor(new SimpleDateFormat("yyyy-MM-dd"), true, 10));   
	}
	
	@GetMapping("/jobdetails")
	public String showjobdetails(ModelMap model)
	{
		List<Employer> emp;
		emp=employeeservice.viewdetails();
		System.out.println(emp);
		model.addAttribute("employer", emp);
		return "jobdetails";
	}
@PostMapping("/matchingcandidates")
public String showMatchedCandidates(@RequestParam String roles,ModelMap model) {
	List<Resume> resumelist;
	resumelist=resumeservice.matchOnRoles(roles);

	if(resumelist.isEmpty())
	{
		model.addAttribute("errorMessage","No Matching Candidates for");
		model.put("roles",roles);
		return "matchingcandidates";
	}
	resume=resumelist.get(0);


	
	model.addAttribute("resume", resumelist);
	model.put("roles", roles);
	return "showresumedetails";
}
@PostMapping("/datesent")
public String adminSendDate()
{
	return "datesent";
}

@PostMapping("/notification")
public String notification(ModelMap model ,@RequestParam String email,@RequestParam Date interviewdate)
{
	List<InterviewDate> interviewlist;
	interview.setEmail(email);
	interview.setInterviewdate(interviewdate);
	employeeservice.insertinterviewdatedetails(interview);
    model.put("interviewdate", interviewdate);
	return "notification";
}



}
