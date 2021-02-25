package com.cts.p027.model;

import org.springframework.stereotype.Controller;

@Controller

public class Confirmation {
	private String email;
	private String comment;
	private String status;
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getComment() {
		return comment;
	}
	public void setComment(String comment) {
		this.comment = comment;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	@Override
	public String toString() {
		return "Confirmation [email=" + email + ", comment=" + comment + ", status=" + status + "]";
	}
	

}
