package com.cts.p027.model;

import java.util.Date;

import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.stereotype.Component;

@Component
public class InterviewDate {
	private String email;
	@DateTimeFormat(pattern = "yyyy-MM-dd")
	private Date interviewdate;
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public Date getInterviewdate() {
		return interviewdate;
	}
	public void setInterviewdate(Date interviewdate) {
		this.interviewdate = interviewdate;
	}
	@Override
	public String toString() {
		return "InterviewDate [email=" + email + ", interviewdate=" + interviewdate + "]";
	}
	

}
