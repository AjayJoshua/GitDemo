package com.cts.p027.service;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Service;

import com.cts.p027.model.Confirmation;
import com.cts.p027.model.Employer;
import com.cts.p027.model.InterviewDate;
@Service
public class EmployeeService {
	@Autowired
	JdbcTemplate jdbc;
	
	public boolean validateUser(String email, String password) {
		
		return email.equalsIgnoreCase("ajay@cognizant.com") && password.equalsIgnoreCase("ajay123");
	}
public void insertJobDetails(Employer employer) {
	String sql="insert into employer(jobdescription,skillset,role,experience,numberofresources,expecteddoj) values(?,?,?,?,?,?)";
	jdbc.update(sql,employer.getJobdescription(),employer.getSkillset(),employer.getRole(),employer.getExperience(),employer.getNumberofresources(),employer.getExpecteddoj());
}

public List<Employer> viewdetails() {

	String sql="select * from employer;";
	List<Employer> employer = jdbc.query(sql, BeanPropertyRowMapper.newInstance(Employer.class));
	return employer;
}
public void insertinterviewdatedetails(InterviewDate interview)
{
	String sql="insert into interviewdatedetails(email,interviewdate) values(?,?)";
	jdbc.update(sql,interview.getEmail(),interview.getInterviewdate());
}
public List<InterviewDate> viewInterviewdetails() {

	String sql="select * from interviewdatedetails";
	System.out.println(sql);
	List<InterviewDate> interviewdate1 = jdbc.query(sql, BeanPropertyRowMapper.newInstance(InterviewDate.class));
	return interviewdate1;
}
public List<InterviewDate> viewInterviewdatedetails(String email) {

	String sql="select interviewdate from interviewdatedetails where email='"+email+"';";
	System.out.println(sql);
	List<InterviewDate> interviewdate1 = jdbc.query(sql, BeanPropertyRowMapper.newInstance(InterviewDate.class));
	return interviewdate1;
}


public void insertcommentdetails(Confirmation confirm)
{
	String sql="insert into confirmation(email,comment,status) values(?,?,?)";
	jdbc.update(sql,confirm.getEmail(),confirm.getComment(),confirm.getStatus());
}
}
