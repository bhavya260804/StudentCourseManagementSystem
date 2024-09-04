<%@ page contentType="text/html; charset=ISO-8859-1" isELIgnored="false"%> 
<%@ taglib uri="jakarta.tags.core" prefix="c"%> 
 
<html> 
<head> 
<style>
  table {
    margin: 0 auto; /* Set left and right margins to auto to center the table horizontally */
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
<img src="/img/viewallstudentsbg.jpg"  id="background-image">
<%@ include file="adminnavbar.jsp" %>
</head> 
<body> 

<br> 
<div style="text-align: center;">
<input type="text" id="searchInput" placeholder="Search by name">
</div>
<h3 align="center"><u>View All Students</u></h3> 
<table align=center  border=2>  
<tr bgcolor="skyblue" style="color:white"> 
<td>ID</td> 
<td>NAME</td> 
<td>EMAIL</td> 
<td>BRANCH</td> 
<td>YEAR</td> 
<td>SEMESTER</td> 
<td>ACTION</td>
</tr> 
<c:forEach items="${studentdata}"  var="stu"> 
<tr>

<td><c:out value="${stu.id}" /></td> 
<td><c:out value="${stu.name}" /></td> 
<td><c:out value="${stu.email}" /></td> 
<td><c:out value="${stu.branch}" /></td> 
<td><c:out value="${stu.year}" /></td> 
<td><c:out value="${stu.semester}" /></td> 
<td>
<a href='<c:url value="viewstudentbyid?id=${stu.id}"></c:url>'>View</a>
</td>
</tr> 
</c:forEach> 
</table>



 <script>
    function filterTable() {
        var input, filter, table, rows, cell, name;
        input = document.getElementById("searchInput");
        filter = input.value.toUpperCase();
        table = document.querySelector("table");
        rows = table.getElementsByTagName("tr");

        for (var i = 1; i < rows.length; i++) { // Start from index 1 to skip the header row
            cell = rows[i].getElementsByTagName("td")[1]; // Index 1 for the "NAME" column
            if (cell) {
                name = cell.textContent || cell.innerText;
                if (name.toUpperCase().indexOf(filter) > -1) {
                    rows[i].removeAttribute("hidden");
                } else {
                    rows[i].setAttribute("hidden", "true");
                }
            }
        }
    }

    // Add an event listener to trigger the filtering
    document.getElementById("searchInput").addEventListener("input", filterTable);
</script>

 
</body> 
</html>
