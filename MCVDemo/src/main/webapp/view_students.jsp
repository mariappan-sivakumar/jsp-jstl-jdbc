<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>Student List</title>
</head>
<body>
<%
    String[] newStudent=(String[]) request.getAttribute("student");
    for(String stu: newStudent){
        out.println(stu+"<br>");
    }
pageContext.setAttribute("myStudent", newStudent);
    %>
    <c:set var="test" value='<%= (String[]) request.getAttribute("student") %>' />
<c:forEach var="studentname" items="${test}">
    <p>   ${studentname}</p>
    </c:forEach>


</body>
</html>