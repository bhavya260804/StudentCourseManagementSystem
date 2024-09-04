package com.klef.jfsd.springboot.service;

import com.klef.jfsd.springboot.model.Course;
import org.springframework.stereotype.Repository;
import java.util.*;
import com.klef.jfsd.springboot.model.Student;

@Repository
public interface StudentService 
{
	public String addstudent(Student s);
	public Student checkstudentlogin(String email,String pwd);
	public String  registerCourse(Student s);
	public List<Course> getCoursesById(int sid);
	
}
