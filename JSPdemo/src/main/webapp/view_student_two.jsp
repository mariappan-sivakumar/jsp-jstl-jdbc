<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="java.util.*, com.mvcdemo.Student" %>
<% List<Student> students = (ArrayList<Student>)request.getAttribute("student_list");
  pageContext.setAttribute("myStudent",students); %>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>Student Table</title>
</head>
<body>
<h2>List of Student</h2>
<hr>
<br/>
<table border="1">
  <tr>
    <th>First name</th>
    <th>Last name</th>
    <th>email</th>
  </tr>
  <c:forEach var="tempStudent" items="${student_list}">
    <tr>
      <td> ${tempStudent.firstName}</td>
      <td> ${tempStudent.lastname}</td>
      <td> ${tempStudent.email}</td>
    </tr>
  </c:forEach>
  <%
  for(Student student: students){
  out.println("<tr>");
  out.println("<td>"+student.getFirstName()+"</td>");
  out.println("<td>"+student.getLastname()+"</td>");
  out.println("<td>"+student.getEmail()+"</td>");
  out.println("</tr>");
  }
  %>
</table>
</body>
</html>