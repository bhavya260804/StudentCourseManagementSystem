<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!-- Coding By CodingNepal - codingnepalweb.com -->
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta http-equiv="X-UA-Compatible" content="ie=edge">
  <title>Login</title>
  <!---Custom CSS File--->
  <link rel="stylesheet" href="css/loginstyle.css">
  <%@ include file="navbar.jsp" %>
</head>
<body>
 
 <span class="blink">
<h3 align=center   style="color: red">${message}</h3>
</span>
  <div class="container">
   
    <div class="login form">
      <header>Login</header>
      <form method ="post" action="checkadminlogin">
        <input type="text" name="email" placeholder="Enter your email">
        <input type="password" name="password" placeholder="Enter your password">
        <a href="#">Forgot password?</a>
        <input type="submit" class="button" value="Login">
      </form>
      <div class="signup">

      </div>
    </div>
    
  </div>
</body>
</html>