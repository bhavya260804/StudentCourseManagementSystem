<%@ page contentType="text/html; charset=ISO-8859-1" isELIgnored="false"%> 
<%@ taglib uri="jakarta.tags.core" prefix="c"%> 

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta http-equiv="X-UA-Compatible" content="ie=edge">
  <title>Mapping</title>
  <!---Custom CSS File--->
  <link rel="stylesheet" href="css/facultycoursemapping.css">
  <%@ include file="adminnavbar.jsp" %>
  <br>
  <br>
</head>
<body>
<img src="/img/viewallstudentsbg.jpg"  id="background-image">
<h3 align="center" style="color:red">${message}</h3>

<form method="post" action="fcoursemappinginsert">

 <div class="container">
    
    <div class="registration form">
      <header>Course</header>
  <table align=center style="height:200px">
    <tr>
      <td><label>Select Faculty</label></td>
      <td>
        <select name="fid" required>
          
        <option value="">--Select--</option>
        
        <c:forEach items="${facultydata}" var="faculty"> 
        <option value="${faculty.id}">${faculty.id}</option>
        </c:forEach>
        
        </select>
        
      </td>
    </tr>
    <tr>
      <td><label>Select Course</label></td>
      <td>
        <select name="cid" required>
        
        <option value="">--Select--</option>
        
        <c:forEach items="${coursedata}" var="course"> 
        <option value="${course.id}">${course.coursecode}-${course.coursertitle}</option>
        </c:forEach>
        
        </select>
      </td>
    </tr>
    <tr>
      <td><label>Provide Section</label></td>
      <td>
        <input type="number" name="section" required>
      </td>
    </tr>
    <tr>
      <td><label>Select Faculty Type</label></td>
      <td>
        <select name="ftype" required>
          <option value="">--Select--</option>
          <option value="MAIN">Main Faculty</option>
          <option value="ASSISTANCE">Assistance Faculty</option>
        </select>
      </td>
    </tr>
    <tr>
    <td></td>
    </tr>
     <tr align="center">
       <td>
        <input type="submit" name="Submit" class="button">
      </td>
      <td>
        <input type="reset" name="Clear" class="button">
      </td>
    </tr>
  </table>
  
   </div>
  </div>
</form>



</body>
</html>