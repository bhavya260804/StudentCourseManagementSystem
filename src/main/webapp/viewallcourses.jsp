<%@ page contentType="text/html; charset=ISO-8859-1" isELIgnored="false"%> 
<%@ taglib uri="jakarta.tags.core" prefix="c"%> 
 
<html> 
<head> 
<style>
  table {
    margin: 0 auto; /* Set left and right margins to auto to center the table horizontally */
  }
  #background-image {
    position: fixed;
    top: 0;
    left: 0;
    width: 100%;
    height: 100%;
    object-fit: cover;
    z-index: -1; /* Ensure it's behind the content */
}

</style>
<img src="/img/viewallstudentsbg.jpg"  id="background-image">
<%@ include file="adminnavbar.jsp" %>
</head> 
<body> 
<
<br> 
<h3 align="center"><u>View All Courses</u></h3> 
<table align=center  border=2>  
<tr bgcolor="skyblue" style="color:white">
<td>YEAR</td> 
<td>SEMESTER</td>   
<td>Course Title</td> 
<td>Course Code</td> 
<td>Logo</td> 
<td>ACTION</td>
</tr> 
<c:forEach items="${coursedata}"  var="course"> 
<tr> 
<td><c:out value="${course.year}" /></td> 
<td><c:out value="${course.semester}" /></td> 
<td><c:out value="${course.coursertitle}" /></td>
<td><c:out value="${course.coursecode}" /></td> 
<td> 
<img src='displaycourseimage?id=${course.id}' width="20%" height="20%"> 
</td>
<td>
<a href='<c:url value="viewcoursebyid?id=${course.id}"></c:url>'>View</a>
</td>
</tr> 
</c:forEach> 
</table> 
</body> 
</html>
