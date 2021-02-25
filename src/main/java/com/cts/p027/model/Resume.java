package com.cts.p027.model;

import java.util.Date;

import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.stereotype.Component;

@Component
public class Resume {
	private String id;
private String firstname;
private String lastname;
@DateTimeFormat(pattern = "yyyy-MM-dd")
private Date dateofbirth;
private String email;
private String address;
private String phonenumber;
private String gender;
private float experience;
private String collegename;
private String degree;
private String specialization;
private float cgpa;
private String technicalskills;
private String achievements;
private String appliedrole;
public String getId() {
	return id;
}
public void setId(String id) {
	this.id = id;
}
public String getFirstname() {
	return firstname;
}
public void setFirstname(String firstname) {
	this.firstname = firstname;
}
public String getLastname() {
	return lastname;
}
public void setLastname(String lastname) {
	this.lastname = lastname;
}
public Date getDateofbirth() {
	return dateofbirth;
}
public void setDateofbirth(Date dateofbirth) {
	this.dateofbirth = dateofbirth;
}
public String getEmail() {
	return email;
}
public void setEmail(String email) {
	this.email = email;
}
public String getAddress() {
	return address;
}
public void setAddress(String address) {
	this.address = address;
}
public String getPhonenumber() {
	return phonenumber;
}
public void setPhonenumber(String phonenumber) {
	this.phonenumber = phonenumber;
}
public String getGender() {
	return gender;
}
public void setGender(String gender) {
	this.gender = gender;
}
public float getExperience() {
	return experience;
}
public void setExperience(float experience) {
	this.experience = experience;
}
public String getCollegename() {
	return collegename;
}
public void setCollegename(String collegename) {
	this.collegename = collegename;
}
public String getDegree() {
	return degree;
}
public void setDegree(String degree) {
	this.degree = degree;
}
public String getSpecialization() {
	return specialization;
}
public void setSpecialization(String specialization) {
	this.specialization = specialization;
}
public float getCgpa() {
	return cgpa;
}
public void setCgpa(float cgpa) {
	this.cgpa = cgpa;
}
public String getTechnicalskills() {
	return technicalskills;
}
public void setTechnicalskills(String technicalskills) {
	this.technicalskills = technicalskills;
}
public String getAchievements() {
	return achievements;
}
public void setAchievements(String achievements) {
	this.achievements = achievements;
}
public String getAppliedrole() {
	return appliedrole;
}
public void setAppliedrole(String appliedrole) {
	this.appliedrole = appliedrole;
}
@Override
public String toString() {
	return "Resume [id=" + id + ", firstname=" + firstname + ", lastname=" + lastname + ", dateofbirth=" + dateofbirth
			+ ", email=" + email + ", address=" + address + ", phonenumber=" + phonenumber + ", gender=" + gender
			+ ", experience=" + experience + ", collegename=" + collegename + ", degree=" + degree + ", specialization="
			+ specialization + ", cgpa=" + cgpa + ", technicalskills=" + technicalskills + ", achievements="
			+ achievements + ", appliedrole=" + appliedrole + "]";
}



}
