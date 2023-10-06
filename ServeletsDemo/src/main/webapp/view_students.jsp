<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="java.util.*, com.myapp.servlets.MvcDemo" %>

<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>Student List</title>
</head>
<body>
<table>
<tr>
  <th>First Name</th>
</tr>
  <c:forEach var="tempStudent" items="${student_list}">
<tr>
  ${tempStudent} <br/>
</tr>
</c:forEach>
</table>
</body>
</html>