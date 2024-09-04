<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%> 
<%@ taglib uri="jakarta.tags.core" prefix="c"%> 
 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="css/csscard.css">
 <%@ include file="studentnavbar.jsp" %>
</head>
<body>
<h2 align="center">Your Courses</h2>.
  <div class="grid-container">
  <c:forEach items="${coursedata}"  var="course"> 
    <div class="card">
        <img src='displaycourseimage?id=${course.id}'  alt="Profile Photo">
        <h2>${cousedata.coursetitle}</h2>
        <button><a href='<c:url value="registercourse?id=${course.id}"></c:url>'>View</a></button>
      </div>
  </c:forEach> 
  </div>
</body>
</html>