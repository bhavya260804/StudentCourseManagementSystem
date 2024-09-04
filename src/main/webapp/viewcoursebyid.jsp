<%@ page contentType="text/html; charset=ISO-8859-1" isELIgnored="false"%> 
<%@ taglib uri="jakarta.tags.core" prefix="c"%> 
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c1" %>
 
<html> 
<head>
<style>
  #data-container {
    background-color: skyblue; /* Background color for the card */
    border-radius: 10px; /* Rounded corners for the card */
    box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1); /* Box shadow for depth */
    padding: 20px; /* Spacing inside the card */
    width: 300px; /* Adjust the width of the card as needed */
    margin: 110px auto 0; /* Center the card horizontally and add 20px margin above */
    text-align: center; /* Center the text inside the card */
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

  #logo {
    display: block;
    margin: 0 auto 20px; /* Center the logo horizontally and add 20px margin at the bottom */
    max-width: 100px; /* Set the maximum width of the logo */
    height: auto; /* Automatically adjust the height to maintain the aspect ratio */
    border-radius: 50%; /* Apply rounded edges to the logo (circle) */
  }

  #back-button {
    background-color: white;
    color: black; /* Change the text color to black */
    padding: 10px 20px;
    text-align: center;
    text-decoration: none;
    display: inline-block;
    border-radius: 5px;
    cursor: pointer;
  }
</style> 
</head> 
<body> 
<img src="/img/viewallstudentsbg.jpg"  id="background-image">

<%@ include file="adminnavbar.jsp" %>

<div id="data-container">
  <img src='displaycourseimage?id=${course.id}' id="logo" alt="Student Logo">
  ID: ${course.id}<br>
 Year: ${course.year}<br>
  Semester: ${course.semester}<br>
  Course Title: ${course.coursertitle}<br>
  Course Code: ${course.coursecode}<br>
  Credits: ${course.credits}<br>
  <br>
  <a href="viewallcoursesaction" id="back-button">Back</a>
</div>

</body>
</html>
