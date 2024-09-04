<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%> 
<%@ taglib uri="jakarta.tags.core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Your Registered Courses</title>
<link rel="stylesheet" href="css/csscard.css">
<%@ include file="studentnavbar.jsp" %>
<style>
    /* Modal styles */
    .modal {
        display: none;
        position: fixed;
        z-index: 1;
        padding-top: 100px;
        left: 0;
        top: 0;
        width: 100%;
        height: 100%;
        overflow: auto;
        background-color: rgb(0,0,0);
        background-color: rgba(0,0,0,0.4);
    }

    .modal-content {
        background-color: #fefefe;
        margin: auto;
        padding: 20px;
        border: 1px solid #888;
        width: 80%;
        max-height: 80%; /* Ensure the modal doesn't exceed screen height */
        overflow: hidden; /* Hide overflow for cleaner appearance */
    }

    .close {
        color: #aaa;
        float: right;
        font-size: 28px;
        font-weight: bold;
    }

    .close:hover,
    .close:focus {
        color: black;
        text-decoration: none;
        cursor: pointer;
    }

    .pdf-viewer {
        width: 100%;
        height: 600px; /* Set height for PDF display */
        border: none; /* Remove border for cleaner appearance */
    }
</style>
</head>
<body>
<h2 align="center">Your Courses</h2>

<div class="grid-container">
  <c:forEach items="${coursedata}" var="course"> 
    <div class="card">
        <img src='displaycourseimage?id=${course.id}' alt="Course Image">
        <h2>${course.coursertitle}</h2>
        <!-- Updated button to open modal -->
        <button onclick="openModal(${course.id})">View</button>
    </div>
  </c:forEach> 
</div>

<!-- Modal structure for PDF display -->
<div id="pdfModal" class="modal">
  <div class="modal-content">
    <span class="close" onclick="closeModal()">&times;</span>
    <iframe id="pdfViewer" class="pdf-viewer" src=""></iframe>
  </div>
</div>

<script>
  // Function to open the modal and display the PDF
  function openModal(courseId) {
    var modal = document.getElementById("pdfModal");
    var pdfViewer = document.getElementById("pdfViewer");
    pdfViewer.src = "displaycoursehandout?id=" + courseId; // Set iframe src to load PDF
    modal.style.display = "block"; // Display the modal
  }

  // Function to close the modal
  function closeModal() {
    var modal = document.getElementById("pdfModal");
    modal.style.display = "none";
    document.getElementById("pdfViewer").src = ""; // Clear iframe src to reset state
  }

  // Close the modal when clicking outside of it
  window.onclick = function(event) {
    var modal = document.getElementById("pdfModal");
    if (event.target == modal) {
      closeModal(); // Call closeModal function
    }
  }
</script>

</body>
</html>
