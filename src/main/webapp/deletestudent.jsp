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
<h3 align="center"><u>View All Students</u></h3> 
<table align=center  border=2>  
<tr bgcolor="skyblue" style="color:white"> 
<td>ID</td> 
<td>NAME</td> 
<td>EMAIL</td> 
<td>BRANCH</td> 
<td>YEAR</td> 
<td>SEMESTER</td> 
<td>ACTION</td>
</tr> 
<c:forEach items="${studentdata}"  var="stu"> 
<tr> 
<td><c:out value="${stu.id}" /></td> 
<td><c:out value="${stu.name}" /></td> 
<td><c:out value="${stu.email}" /></td> 
<td><c:out value="${stu.branch}" /></td> 
<td><c:out value="${stu.year}" /></td> 
<td><c:out value="${stu.semester}" /></td> 
<td>
<a href='<c:url value="delete/${stu.id}"></c:url>'>Delete</a>
</td>
</tr> 
</c:forEach> 
</table> 
</body> 
</html>
