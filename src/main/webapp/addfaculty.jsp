<!DOCTYPE html>
<!-- Coding By CodingNepal - codingnepalweb.com -->
<html lang="en">
<head>
      
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta http-equiv="X-UA-Compatible" content="ie=edge">
  <title>AddCourse</title>
  <!---Custom CSS File--->
  <link rel="stylesheet" href="css/addfaculty.css">
  <%@ include file="adminnavbar.jsp" %>
  <br>
  <br>
</head>
<body>
<img src="/img/viewallstudentsbg.jpg"  id="background-image">
  
  <div class="container">
    
    <div class="registration form">
      <header>Faculty</header>
      <form action="insertfaculty" >
        <input type="text" name="id" placeholder="ID">
        <input type="text" name="name" placeholder="Enter Name">
        <input type="text" name="designation" placeholder="Enter Designation">
        <input type="text" name="department" placeholder="Enter Department">
        <input type="text" name="contact" placeholder="Contact Number">
  
        <input type="submit" class="button" value="Submit">
      </form>
    </div>
  </div>
</body>
</html>