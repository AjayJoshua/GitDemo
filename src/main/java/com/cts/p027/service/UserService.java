package com.cts.p027.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.cts.p027.model.User;

@Service

public class UserService {
	@Autowired
	private JdbcTemplate jdbc;

	public void createNewUser(User user) {

		String sql = "insert into user(firstname,lastname,dateofbirth,email,phonenumber,newpassword,confirmpassword,securityquestion,answer,gender) values(?,?,?,?,?,?,?,?,?,?)";
		jdbc.update(sql, user.getFirstname(), user.getLastname(), user.getDateofbirth(), user.getEmail(),user.getPhonenumber(),
				user.getNewpassword(), user.getConfirmpassword(), user.getSecurityquestion(),user.getAnswer(), user.getGender());
	}
	public List<User> checkemail(String email)
	{
		String sql="select email from user where email='"+email+"';";
		System.out.println(sql);
		List<User> user=jdbc.query(sql,BeanPropertyRowMapper.newInstance(User.class));
		System.out.println(user);
		return user;
	}
	
	public List<User> checklogin(String email,String newpassword) {
		String sql="select * from user where email='"+email+"';";
		System.out.println(sql);
		List<User> user=jdbc.query(sql,BeanPropertyRowMapper.newInstance(User.class));
		System.out.println(user);
		return user;	
	}
	
	public List<User> checkQuestionAnswer(String securityquestion1,String answer1,String email1){
		String sql="select * from user where email='"+email1+"';";
		List<User> user=jdbc.query(sql,BeanPropertyRowMapper.newInstance(User.class));
		System.out.println(user);
		return user;
		
	}

	public void updatePassword(String resetnewpassword, String resetconfirmpassword, String email1,User user) {
		resetnewpassword=user.getNewpassword();
		resetconfirmpassword=user.getConfirmpassword();
		//email1=user.getEmail();
		String sql="update user set newpassword='"+resetnewpassword+"',confirmpassword='"+resetconfirmpassword+"' where email='"+email1+"';";
		
		jdbc.update(sql);
	
	}
	public List<User> afterUpdate(String email1){
		String sql="select * from user where email='"+email1+"';";
		List<User> user=jdbc.query(sql,BeanPropertyRowMapper.newInstance(User.class));
		System.out.println(user);
		return user;
		
	}



}
