package com.klef.jfsd.springboot.model;

import java.sql.Blob;
import java.util.*;

import com.klef.jfsd.springboot.model.Student;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.ManyToMany;
import jakarta.persistence.Table;

@Entity
@Table(name = "course_table")
public class Course 
{
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
	@Column(nullable = false)
	private int year;
	@Column(nullable = false)
	private int semester;
	@Column(unique = true)
	private String coursecode;
	@Column(unique = true)
	private String coursertitle;
	@Column(nullable = false)
	private String ltps;
	@Column(unique = true)
	private int credits;
	private Blob courseimage;
	private Blob coursehandout;
	
	public Blob getCoursehandout() {
		return coursehandout;
	}
	public void setCoursehandout(Blob coursehandout) {
		this.coursehandout = coursehandout;
	}
	@ManyToMany
	List<Student> students = new ArrayList<Student>();
	
	public List<Student> getStudents() {
		return students;
	}
	public void setStudents(List<Student> students) {
		this.students = students;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
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
	public String getCoursecode() {
		return coursecode;
	}
	public void setCoursecode(String coursecode) {
		this.coursecode = coursecode;
	}
	public String getCoursertitle() {
		return coursertitle;
	}
	public void setCoursertitle(String coursertitle) {
		this.coursertitle = coursertitle;
	}
	public String getLtps() {
		return ltps;
	}
	public void setLtps(String ltps) {
		this.ltps = ltps;
	}
	public int getCredits() {
		return credits;
	}
	public void setCredits(int credits) {
		this.credits = credits;
	}
	public Blob getCourseimage() {
		return courseimage;
	}
	public void setCourseimage(Blob courseimage) {
		this.courseimage = courseimage;
	}
	
}
