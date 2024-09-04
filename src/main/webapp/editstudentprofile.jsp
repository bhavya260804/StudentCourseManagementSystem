<%@ page language="java" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Edit Student Profile</title>
    <link rel="stylesheet" type="text/css" href="css/studentprofile.css">
    <%@ include file="studentnavbar.jsp" %>
</head>
<body>
    <div class="profile-container">
        <h1>Edit Student Profile</h1>
        <form action="updatestudentprofile" method="post">
            <input type="hidden" id="studentId" name="studentId" value="${student.id}">
            
            <div class="form-group">
                <label for="year">Year:</label>
                <!-- Display the existing value in the input field -->
                <input type="text" id="year" name="year" value="${student.year}" required>
            </div>
            
            <div class="form-group">
                <label for="semester">Semester:</label>
                <!-- Display the existing value in the input field -->
                <input type="text" id="semester" name="semester" value="${student.semester}" required>
            </div>
            
            <div class="form-group">
                <label for="contact">Contact Number:</label>
                <!-- Display the existing value in the input field -->
                <input type="text" id="contact" name="contactno" value="${student.contact}" required>
            </div>
            
            <button type="submit" class="save-button">Save</button>
            <a href="viewstudentprofile" class="cancel-button">Cancel</a>
        </form>
        
        <c:if test="${not empty error}">
            <div class="error-message">${error}</div>
        </c:if>
    </div>
</body>
</html>
