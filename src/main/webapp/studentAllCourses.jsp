<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%> 
<%@ taglib uri="jakarta.tags.core" prefix="c"%> 

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>All Courses</title>
<link rel="stylesheet" href="css/csscard.css">
<%@ include file="studentnavbar.jsp" %>
</head>
<body>
<h2 align="center">All Courses</h2>
<div class="grid-container">
  <c:forEach items="${allCourses}"  var="course"> 
    <div class="card">
        <img src='displaycourseimage?id=${course.id}'  alt="Profile Photo">
        <h2>${course.coursertitle}</h2>
        
        <c:choose>
            <c:when test="${registeredCourses.contains(course)}">
                <button>
                    <a href='<c:url value="displayRegisteredCourses"></c:url>'>View</a>
                </button>
            </c:when>
            <c:otherwise>
                <button>
                  <a href='<c:url value="/registercourse?id=${course.id}"></c:url>'>Register</a>

                </button>
            </c:otherwise>
        </c:choose>
    </div>
  </c:forEach> 
</div>
</body>
</html>
