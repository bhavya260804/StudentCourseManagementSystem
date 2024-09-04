<%@ page language="java" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Student Profile</title>
    <link rel="stylesheet" type="text/css" href="css/studentprofile.css">
    <%@ include file="studentnavbar.jsp" %>
</head>
<body>
    <div class="profile-container">
        <h1>Student Profile</h1>
        <div class="profile-details">
            <p><strong>Name:</strong> ${student.name}</p>
            <p><strong>Email:</strong> ${student.email}</p>
            <p><strong>Branch:</strong> ${student.branch}</p>
            <p><strong>Year:</strong> ${student.year}</p>
            <p><strong>Semester:</strong> ${student.semester}</p>
            <p><strong>Contact:</strong> ${student.contact}</p>
        </div>
        <div class="action-buttons">
            <a href="studenthome" class="back-button">Back to Home</a>
            <a href="editstudentprofile.jsp" class="edit-button">Edit</a>
        </div>
    </div>
</body>
</html>
