package com.klef.jfsd.springboot.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.klef.jfsd.springboot.model.Course;
import com.klef.jfsd.springboot.model.Student;

public interface CourseRepository extends JpaRepository<Course, Integer>
{

}
