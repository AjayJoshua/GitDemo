package com.cts.p027.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Service;
@Service
public class AdminService {
	@Autowired
	JdbcTemplate jdbc;
	public boolean validateUser(String email, String password) {
		
		return email.equalsIgnoreCase("ajay@gmail.com") && password.equalsIgnoreCase("ajay123");
	}

}
