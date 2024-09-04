<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta http-equiv="X-UA-Compatible" content="ie=edge">
  <title>Add Course</title>
  <!-- Custom CSS File -->
  <link rel="stylesheet" href="css/addcourse.css">
  <%@ include file="adminnavbar.jsp" %>
  <br>
  <br>
</head>
<body>
  <img src="/img/viewallstudentsbg.jpg" id="background-image">
  
  <div class="container">
    <div class="registration form">
      <header>Course</header>
      <form action="insertcourse" method="post" enctype="multipart/form-data">
        <input type="text" name="year" placeholder="Enter Year">
        <input type="text" name="semester" placeholder="Enter Semester">
        <input type="text" name="coursecode" placeholder="Enter Course Code">
        <input type="text" name="coursetitle" placeholder="Enter Course Title">
        <input type="text" name="ltps" placeholder="L-T-P-S">
        <input type="text" name="credits" placeholder="Enter Credits">
        
        <!-- Course Image Input with Heading -->
        <div class="file-input-group">
          <label for="courseimage">Course Image:</label>
          <input type="file" id="courseimage" name="courseimage" required="required"/>
        </div>

        <!-- Course Handout Input with Heading -->
        <div class="file-input-group">
          <label for="coursehandout">Course Handout:</label>
          <input type="file" id="coursehandout" name="coursehandout" accept="application/pdf" required="required"/>
        </div>
        
        <input type="submit" class="button" value="Submit">
      </form>
    </div>
  </div>
</body>
</html>
