<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Contact Us</title><br>
    <style>
        h1, h2, h3, h4, h5 {
            font-size: 20px; /* Adjust the font size as needed */
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
    <%@ include file="adminnavbar.jsp" %>
</head>
<body>
    <h1>Contact Us</h1><br>
   <img src="/img/contactbg1.jpg"  id="background-image">
    <h2>You can reach us through this mail: abc@gmail.com</h2><br>
    <h3>Our contact Number: 7894561238</h3><br>
    <h4>Office Address: 70-4-7, Autonagar, Vijayawada</h4><br>
    <h5>Availability timings: 9am - 5pm (Mon-Sat)</h5><br>
</body>
</html>