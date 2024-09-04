package com.klef.jfsd.springboot.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.klef.jfsd.springboot.model.Faculty;
public interface FacultyRepository extends JpaRepository<Faculty, Integer>
{

}
