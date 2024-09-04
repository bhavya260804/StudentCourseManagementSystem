<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>


<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>About</title>
    <style>
        body {
            margin: 0;
            padding: 0;
           
            
            background-size: 'initial';
            text-align: center;
            color: #fff;
        }

        h1 {
            text-align: center;
        }

        #about-info {
            background-color: rgba(0, 0, 0, 0.5);
            padding: 20px;
        }

        footer {
            background-color: rgba(0, 0, 0, 0.7);
            padding: 20px;
            text-align: center;
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
        footer a {
            color: #fff;
            text-decoration: none;
            margin: 0 10px;
        }
    </style>
     <%@ include file="adminnavbar.jsp" %>
</head>
<body>
<img src="/img/aboutbg1.jpg"  id="background-image">
    <h1>About</h1>
  
    <div id="about-info">
        <p>About Us

Welcome to our Student Course Management System! We're committed to making education administration more efficient and accessible. Our platform is designed to simplify the management of courses, classes, and student records, allowing educational institutions to focus on what matters most - education.

Our Mission

Our mission is to provide an intuitive and user-friendly system that empowers educational institutions to streamline their course management processes. We strive to enhance the learning experience by reducing administrative burdens, increasing productivity, and improving overall educational outcomes.</p>
        <p>Key Features

Our system offers a range of key features, including:

Course Management: Create and manage courses with ease.
Student Enrollment: Seamlessly enroll students and keep track of attendance.
Grade Management: Efficiently record and report student grades.
Resource Sharing: Share important educational resources and documents.
User-Friendly Interface: Our user interface is designed for simplicity and ease of use.</p>
    </div>

</body><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
<footer>
    Follow us on:
    <a href="https://www.instagram.com/your_instagram" target="_blank">Instagram</a>
    <a href="https://www.facebook.com/your_facebook" target="_blank">Facebook</a>
    <a href="https://www.yourwebsite.com" target="_blank">Website</a>
</footer>
</html>