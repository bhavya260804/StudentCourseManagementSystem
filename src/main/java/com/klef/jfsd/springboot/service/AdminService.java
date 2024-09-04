package com.klef.jfsd.springboot.service;

import java.util.List;

import com.klef.jfsd.springboot.model.Admin;
import com.klef.jfsd.springboot.model.Course;
import com.klef.jfsd.springboot.model.Faculty;
import com.klef.jfsd.springboot.model.FacultyCourseMapping;
import com.klef.jfsd.springboot.model.Student;


public interface AdminService 
{
	public Admin checkadminlogin(String uname, String pwd);
	
	public String deleteStudent(int sid);
	public List<Student> viewallstudents();
	public Student viewstudentbyid(int id);
	public String addcourse(Course c);
	public List<Course> viewallcourses();
	public Course viewcoursebyid(int id);
	public String deleteCourse(int id);
	public String addfaculty(Faculty f);
	public Faculty facultybyid(int fid);
	public List<Faculty> viewallfaculty();
	

	public List<FacultyCourseMapping> viewfaFacultyCourseMappings();
	public String facultycoursemapping(FacultyCourseMapping fcm);
	public long checkfcoursemapping(Faculty f,Course c,int section);

}
