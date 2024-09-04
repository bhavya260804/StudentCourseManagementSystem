package com.klef.jfsd.springboot.service;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.klef.jfsd.springboot.model.Admin;
import com.klef.jfsd.springboot.model.Course;
import com.klef.jfsd.springboot.model.Faculty;
import com.klef.jfsd.springboot.model.FacultyCourseMapping;
import com.klef.jfsd.springboot.model.Student;
import com.klef.jfsd.springboot.repository.AdminRepository;
import com.klef.jfsd.springboot.repository.CourseRepository;
import com.klef.jfsd.springboot.repository.FacultyCourseMappingRepository;
import com.klef.jfsd.springboot.repository.FacultyRepository;
import com.klef.jfsd.springboot.repository.StudentRepository;

@Service
public class AdminServiceImpl implements AdminService
{
	@Autowired
	private AdminRepository adminRepository;
	
	@Autowired
	private StudentRepository studentRepository;
	
	@Autowired
	private CourseRepository courseRepository;
	
	@Autowired
	private FacultyRepository facultyRepository;
	
	@Autowired
	private FacultyCourseMappingRepository facultymappRepository;
	
	@Override
	public Admin checkadminlogin(String uname, String pwd) 
	{
		
		return adminRepository.checkadminlogin(uname, pwd);
	}




	@Override
	public List<Student> viewallstudents() 
	{
		List<Student> slist = studentRepository.findAll();
		return slist;
	}




	@Override
	public Student viewstudentbyid(int id)
	{
        Optional<Student> obj =  studentRepository.findById(id);
        
        if(obj.isPresent())
        {
          Student stu = obj.get();
          
          return stu;
        }
        else
        {
          return null;
        }
	}

	@Override
	public String addcourse(Course c) 
	{
		courseRepository.save(c);
		return "Added Successfully";
	}

	@Override
	public List<Course> viewallcourses() 
	{
		return (List<Course>)courseRepository.findAll();
	}

	@Override
	public Course viewcoursebyid(int id) 
	{
		
        Optional<Course> obj = courseRepository.findById(id);    
        if(obj.isPresent())
        {
          Course c = obj.get();
          return c;
        }
        else
        {
          return null;
        }
	}




	@Override
	public String deleteStudent(int sid) 
	{
Optional<Student> obj =  studentRepository.findById(sid);
        
        String msg = null;
        
        if(obj.isPresent())
        {
          Student stu = obj.get();
          
          studentRepository.delete(stu);
          
          msg = "Student Deleted Successfully";
        }
        else
        {
          msg = "Student Not Found";
        }
        
        return msg;
	}




	@Override
	public String deleteCourse(int id) {
    Optional<Course> obj =  courseRepository.findById(id);
        
        String msg = null;
        
        if(obj.isPresent())
        {
          Course c = obj.get();
          
          courseRepository.delete(c);
          
          msg = "Course Deleted Successfully";
        }
        else
        {
          msg = "Course Not Found";
        }
        
        return msg;
	}




	@Override
	public String addfaculty(Faculty f) {
		facultyRepository.save(f);
		return "Added Successfully";
	}




	@Override
	public String facultycoursemapping(FacultyCourseMapping fcm) {
		facultymappRepository.save(fcm);
		return "Mapping Done";
	}




	@Override
	public long checkfcoursemapping(Faculty f, Course c, int section) {
		return facultymappRepository.checkfcoursemapping(f, c, section);
	}




	@Override
	public Faculty facultybyid(int fid) {
		return facultyRepository.findById(fid).get();
	}




	@Override
	public List<Faculty> viewallfaculty() {
		List<Faculty> slist = facultyRepository.findAll();
		return slist;
	}




	@Override
	public List<FacultyCourseMapping> viewfaFacultyCourseMappings() {
		return (List<FacultyCourseMapping>) facultymappRepository.findAll();

	}

	
}
