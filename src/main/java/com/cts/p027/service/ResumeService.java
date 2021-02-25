package com.cts.p027.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Service;

import com.cts.p027.model.Resume;

@Service
public class ResumeService {
	@Autowired
	private JdbcTemplate jdbc;
	@Autowired
	Resume resume;
	
	public void resumeDetails(Resume resume)
	{
		String sql="insert into resumedetails(firstname,lastname,dateofbirth,email,address,phonenumber,gender,experience,collegename,degree,specialization,cgpa,technicalskills,achievements,appliedrole) values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
		jdbc.update(sql, resume.getFirstname(),resume.getLastname(),resume.getDateofbirth(),resume.getEmail(),resume.getAddress(),resume.getPhonenumber(),resume.getGender(),resume.getExperience(),resume.getCollegename(),resume.getDegree(),resume.getSpecialization(),resume.getCgpa(),resume.getTechnicalskills(),resume.getAchievements(),resume.getAppliedrole());
	}
	

	public List<Resume> viewdetails() {
		List<Resume> resume;
		String sql="select firstname,email,appliedrole from resumedetails ";
		resume = jdbc.query(sql, BeanPropertyRowMapper.newInstance(Resume.class));
		return resume;
	}

	public List<Resume> viewresumedetails(String email) {
		List<Resume> resume;
		String sql="select * from resumedetails  where email='"+email+"';";
		System.out.println(sql);
		resume = jdbc.query(sql, BeanPropertyRowMapper.newInstance(Resume.class));
		System.out.println(resume);
		return resume;		
	}
	public void showResumeDetails(Resume resume)
	{
		String sql="select * from resumedetails";
		jdbc.update(sql);
	}
	public List<Resume> matchOnRoles(String roles)
	{
		List<Resume> resume;
		String sql="select * from resumedetails where appliedrole='"+roles+"';";
		resume=jdbc.query(sql,BeanPropertyRowMapper.newInstance(Resume.class));
		return resume;
	}


	public List<Resume> viewresumename(String email) {
		List<Resume> resume;
		String sql="select firstname from resumedetails  where email='"+email+"';";
		System.out.println(sql);
		resume = jdbc.query(sql, BeanPropertyRowMapper.newInstance(Resume.class));
		System.out.println(resume);
		return resume;		
	}


	public List<Resume> emailcheck(String email) {
		List<Resume> resume;
		String sql="select * from resumedetails where  email='"+email+"';";
		System.out.println(sql);
		resume = jdbc.query(sql, BeanPropertyRowMapper.newInstance(Resume.class));
		System.out.println(resume);
		return resume;
	}
	
}
