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

import com.cts.p027.model.Confirmation;
import com.cts.p027.model.Employer;
import com.cts.p027.model.InterviewDate;
import com.cts.p027.model.Resume;
import com.cts.p027.service.AdminService;
import com.cts.p027.service.EmployeeService;
import com.cts.p027.service.ResumeService;

@Controller
public class AdminController {
	@Autowired
	AdminService adminservice;
	@Autowired
	EmployeeService employeeservice;
	@Autowired
	ResumeService resumeservice;
	@Autowired
	Resume resume;
	@Autowired
	Employer employer;
	@Autowired
	InterviewDate interview;
	@Autowired
	Confirmation confirm;
	
	@InitBinder     
	public void initBinder(WebDataBinder binder){
	     binder.registerCustomEditor(       Date.class,     
	                         new CustomDateEditor(new SimpleDateFormat("yyyy-MM-dd"), true, 10));   
	}
	@GetMapping("/admin")
	public String showAdminLoginPage() {
		return "adminsignin";
	}
	@GetMapping("/employee")
	public String showemployeeLoginPage() {
		return "employeesignin";
	}
	
	@PostMapping("/admin")
	public String showNamesWhoApplied(ModelMap model, @RequestParam String email, @RequestParam String newpassword) {
		boolean isValidUser = adminservice.validateUser(email, newpassword);

		if (!isValidUser) {
			model.put("errorMessage", "Invalid Credentials");
			return "adminsignin";
		}
		
			
			return "adminaftersignin";

	}
	@GetMapping("/matchingcandidates")
	public String showMatchingCandidates() {
		return "matchingcandidates";
		
	}

	
	@PostMapping("/employee")
	public String postJD(ModelMap model, @RequestParam String email, @RequestParam String newpassword) {
		boolean isValidUser = employeeservice.validateUser(email, newpassword);

		if (!isValidUser) {
			model.put("errorMessage", "Invalid Credentials");
			return "adminsignin";
		}
		
			return "employeesignedin";

	}
	@GetMapping("/filljobdetails")
	public String employeeSignedIn()
	{
		return "postjobdetails";
	}
	@GetMapping("/employeefetch")
	public String employeeFetch(ModelMap model)
	{
		List<InterviewDate> interviewlist;
		interviewlist=employeeservice.viewInterviewdetails();
		model.put("interviewdate", interviewlist);
		return "employeefetch";
	}
	
	@PostMapping("/postcomments")
	public String employeecomment(ModelMap model,@RequestParam String email,@RequestParam String comment,@RequestParam String status)
	{
		confirm.setEmail(email);
		confirm.setComment(comment);;
		confirm.setStatus(status);
		employeeservice.insertcommentdetails(confirm);
		return "employeenotify";
	}
	
	
	@PostMapping("/postnotify")
	public String postedJD(@RequestParam String jobdescription,@RequestParam String skillset,@RequestParam String role,@RequestParam float experience,@RequestParam int numberofresources,@RequestParam Date expecteddoj)
	{
		employer.setJobdescription(jobdescription);
		employer.setSkillset(skillset);
		employer.setRole(role);
		employer.setExperience(experience);
		employer.setNumberofresources(numberofresources);
		employer.setExpecteddoj(expecteddoj);
		System.out.println(employer);
		employeeservice.insertJobDetails(employer);
	
		return "postedjobdetailsnotify";
	}
	
	

}
