package com.klef.jfsd.springboot.model;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.ManyToMany;
import jakarta.persistence.Table;
import com.klef.jfsd.springboot.model.Course;
import java.util.*;


@Entity
@Table(name = "student_table")
public class Student 
{
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "sid")
	private int id;
	@Column(name="sname",nullable=false,length = 60)
	private String name;
	@Column(name="semail",nullable=false,unique = true,length = 30)
	private String email;
	@Column(name="sbranch",nullable=false,length = 30)
	private String branch;
	@Column(name="syear",nullable=false)
	private int year;
	@Column(name="ssem",nullable=false)
	private int semester;
	@Column(name="spassword",nullable=false,length = 30)
	private String password;
	@Column(name="sactive",nullable=false)
	private boolean active;  
	@Column(name="scontact",nullable=false,unique = true)
	private String contact;
	
	
	@ManyToMany
    private List<Course> courses  = new ArrayList<Course>();
	
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getBranch() {
		return branch;
	}
	public void setBranch(String branch) {
		this.branch = branch;
	}
	public int getYear() {
		return year;
	}
	public void setYear(int year) {
		this.year = year;
	}
	public int getSemester() {
		return semester;
	}
	public void setSemester(int semester) {
		this.semester = semester;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public boolean isActive() {
		return active;
	}
	public void setActive(boolean active) {
		this.active = active;
	}
	public String getContact() {
		return contact;
	}
	public void setContact(String contact) {
		this.contact = contact;
	}
	public List<Course> getCourses() {
		return courses;
	}
	public void setCourses(List<Course> courses) {
		this.courses = courses;
	}
	@Override
	public String toString() {
		return "Student [id=" + id + ", name=" + name + ", email=" + email + ", branch=" + branch + ", year=" + year
				+ ", semester=" + semester + ", password=" + password + ", active=" + active + ", contact=" + contact
				+ "]";
	}
	
}
