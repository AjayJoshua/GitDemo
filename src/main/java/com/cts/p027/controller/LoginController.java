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
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.cts.p027.model.InterviewDate;
import com.cts.p027.model.Resume;
import com.cts.p027.model.User;
import com.cts.p027.service.EmployeeService;
import com.cts.p027.service.ResumeService;
import com.cts.p027.service.UserService;


@Controller

public class LoginController {
	@Autowired
	UserService userservice;
	@Autowired
	User usermodel;
	@Autowired
	User usermodel1;
	@Autowired
	EmployeeService employeeservice;
	@Autowired
	InterviewDate interview;
	@Autowired
	ResumeService resumeservice;
	@Autowired
	Resume resume;
	
	@InitBinder     
	public void initBinder(WebDataBinder binder){
	     binder.registerCustomEditor(       Date.class,     
	                         new CustomDateEditor(new SimpleDateFormat("yyyy-MM-dd"), true, 10));   
	}
	@GetMapping("/home")
	public String showHomePage() {
		return "home";
	}
	@GetMapping("/aboutus")
	public String showAboutUs() {
		return "aboutus";
	}
	
	@GetMapping("/signin")
	public String showSigninPage() {
		return "signin";
	}
	
	@GetMapping("/signup")
	public String showSignupPage() {
		return "signup";
	}
	
	@PostMapping("/signup")
	public String DisplayMenupageForNewUser(User user, @RequestParam String firstname,@RequestParam String lastname,@RequestParam Date dateofbirth,
			@RequestParam String phonenumber,@RequestParam String email,@RequestParam String newpassword, @RequestParam String confirmpassword,@RequestParam String securityquestion,@RequestParam String answer,@RequestParam String gender, ModelMap model) {
		user.setFirstname(firstname);
		user.setLastname(lastname);
		user.setDateofbirth(dateofbirth);
		user.setEmail(email);
		user.setPhonenumber(phonenumber);
		user.setNewpassword(newpassword);
		user.setConfirmpassword(confirmpassword);
		user.setSecurityquestion(securityquestion);
		user.setAnswer(answer);
		user.setGender(gender);
		List<User> userlist;
		System.out.println(email);
		userlist=userservice.checkemail(email);
		String suserlist;
		suserlist=userlist.toString();
		System.out.println(suserlist);
		System.out.println(userlist);
		if(suserlist.contains(user.getEmail()))
		{
			model.addAttribute("errorMessage1", "Mail Already Exists");
			return "signup";
		}
		if (!(user.getNewpassword().equals(confirmpassword))) {
			model.put("errorMessage", "Password mismatch");
			return "signup";
		}
		
		userservice.createNewUser(user);
		
		return "signin";
	}
	@PostMapping("/signin")
	public String postLoginPage(ModelMap model,@RequestParam String email,@RequestParam String newpassword)
	{
		
		List<User> userlist=userservice.checklogin(email, newpassword);
		System.out.println(userlist);
		if(userlist.isEmpty())
		{
			model.addAttribute("errorMessage", "Invalid Credentials");
			return "signin";
		}
		System.out.println(usermodel);
		usermodel=userlist.get(0);
		System.out.println(usermodel);
		if(!(usermodel.getNewpassword().contentEquals(newpassword)))
				{
			
			model.addAttribute("errorMessage", "Invalid Password");
			return "signin";
				}
		model.addAttribute("firstname", usermodel.getFirstname());	
		return "signedinhome";
	}
	
	@GetMapping("/forgotpassword")
	public String forgotPassword()
	{
		return "forgotpassword";
	}
	@PostMapping("/forgotpassword")
	public String checkQuesAns(User user,ModelMap model,@RequestParam String email1,@RequestParam String resetnewpassword,@RequestParam String resetconfirmpassword,@RequestParam String securityquestion1,@RequestParam String answer1) {
		List<User> userlist=userservice.checkQuestionAnswer(securityquestion1, answer1,email1);
		//usermodel=userlist.get(0);
		if(userlist.isEmpty())
		{
			model.addAttribute("errorMessage", "Give the correct email address");
			return "forgotpassword";
		}
	
		System.out.println(user);
		System.out.println(userlist);
		System.out.println(email1);
		System.out.println(securityquestion1);
		System.out.println(answer1);
		user.setNewpassword(resetnewpassword);
		user.setConfirmpassword(resetconfirmpassword);
		userservice.updatePassword(resetnewpassword, resetconfirmpassword, email1, user);
		List<User> userlist1=userservice.afterUpdate(email1);
		 usermodel1 = userlist1.get(0);
			
		
		usermodel=userlist.get(0);
		System.out.println(usermodel);
		if(!(usermodel.getEmail().contentEquals(email1)))
		{
	
			model.addAttribute("errorEmail", "Enter the correct email address");
			return "forgotpassword";
		}
		if(!(usermodel.getSecurityquestion().contentEquals(securityquestion1)))
		{
	
			model.addAttribute("errorQuestion", "Select the Security Question which you have used during signup");
			return "forgotpassword";
		}
		if(!(usermodel.getAnswer().contentEquals(answer1)))
		{
	
			model.addAttribute("errorAnswer", "Answer is incorrect");
			return "forgotpassword";
		}
	
		if (!(resetnewpassword.equals(resetconfirmpassword))) {
			model.put("errorPassword", "Password mismatch");
			return "forgotpassword";
		}
	
		return "passwordresetstatus";
	}

	@GetMapping("/showbeforecandidatenotification")
	public String showbeforecandidatenotification()
	{
		return "beforecandidatenotification";
	}
@PostMapping("/candidatenotification")
	public String beforenotification(@RequestParam String email,ModelMap model)
	{
		List<InterviewDate> interviewlist;
		System.out.println(usermodel.getEmail());
		System.out.println(email);
		
		if(!(email.contentEquals(usermodel.getEmail())))
		{
			model.addAttribute("errorMessage1", "Enter the email which you have registered");
			return "beforecandidatenotification";
		}
		interviewlist=employeeservice.viewInterviewdatedetails(email);
		if(interviewlist.isEmpty())
		{
			model.addAttribute("errorMessage", "No Notifications");
			return "beforecandidatenotification";
		}
		interview=interviewlist.get(0);
		System.out.println(interview);
		model.put("interviewlist", interview);
		return "candidatenotification";
	}
@PostMapping("/resume")

public String notifyResume(ModelMap model,@RequestParam String firstname,@RequestParam String lastname,@RequestParam Date dateofbirth,@RequestParam String email,@RequestParam String address,@RequestParam String phonenumber
,@RequestParam String gender,@RequestParam float experience,@RequestParam String collegename,@RequestParam String degree,@RequestParam String specialization,@RequestParam float cgpa,@RequestParam String technicalskills,@RequestParam String appliedrole
,@RequestParam String achievements)
{
	System.out.println(usermodel);
	System.out.println(email);
	System.out.println(usermodel.getEmail());
	if(!(email.contentEquals(usermodel.getEmail()))) {
		model.addAttribute("errorMessage", "Already Exists");
		return "resume";
	}
	resume.setFirstname(firstname);
	resume.setLastname(lastname);
	resume.setDateofbirth(dateofbirth);
	resume.setEmail(email);
	resume.setAddress(address);
	resume.setPhonenumber(phonenumber);
	resume.setGender(gender);
	resume.setExperience(experience);
	resume.setCollegename(collegename);
	resume.setDegree(degree);
	resume.setSpecialization(specialization);
	resume.setCgpa(cgpa);
	resume.setTechnicalskills(technicalskills);
	resume.setAchievements(achievements);
	resume.setAppliedrole(appliedrole);
	resumeservice.resumeDetails(resume);
	//List<Resume> resumelist=resumeservice.viewdetails();
	
	return "resumenotify";
}
	
@GetMapping("/viewcandidatedetails")
public String showCandidateDetails()
{
	return "ecandidatedetails";
}

@PostMapping("/afterviewcandidatedetails")
public String viewCandidateDetails(ModelMap model,@RequestParam String email) {
	
	
	List<Resume> emailcheck;
	emailcheck=resumeservice.emailcheck(email);
	
	System.out.println(resume);
	if(emailcheck.isEmpty())
	{
		model.addAttribute("errorMessage1", "Enter valid mail");
		return "ecandidatedetails";
	}
	model.put("resumelist",emailcheck);
	return "afterviewcandidatedetails";

	}

}
