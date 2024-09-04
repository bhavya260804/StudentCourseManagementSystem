<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!-- Coding By CodingNepal - codingnepalweb.com -->
<html lang="en">
<head>
      
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta http-equiv="X-UA-Compatible" content="ie=edge">
  <title>Registration Form</title>
  <!---Custom CSS File--->
  
  <link rel="stylesheet" href="css/registrationstyle.css">
  <%@ include file="navbar.jsp" %>
</head>
<body>
  
  <div class="container">
    
    <div class="registration form">
      <header>Signup</header>
      <form action="insertstudent">
        <input type="text" name = "email" placeholder="Enter your email">
        <input type="text" name = "name" placeholder="Enter your Name">
        <input type="text" name = "branch" placeholder="Branch">
        <input type="text" name = "year" placeholder="year">
        <input type="text"  name = "semester" placeholder="semester">
        <input type="text" name = "contactno"  placeholder="Contact No">
        <input type="password" name = "password" placeholder="Enter password">
        <input type="submit" class="button" value="Signup">
      </form>
      <div class="signup">
        <span class="signup">Already have an account?
         <a href="studentlogin">Login</a>
        </span>
      </div>
    </div>
  </div>
</body>
</html>