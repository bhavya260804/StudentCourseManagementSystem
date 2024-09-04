package com.klef.jfsd.springboot.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import com.klef.jfsd.springboot.model.Course;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.klef.jfsd.springboot.model.Student;
import java.util.*;
@Repository
public interface StudentRepository extends JpaRepository<Student, Integer>
{
	@Query("select s from Student s where email=?1 and password=?2")
	public Student checkstudentlogin(String email,String pwd);
	
	@Query("select s.courses from Student s where s.id = ?1")
	public List<Course> getCoursesById(int id);
	
	
	
}
