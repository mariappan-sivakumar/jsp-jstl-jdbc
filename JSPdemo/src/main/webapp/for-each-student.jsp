<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="java.util.*, com.jspdemo.Students" %>

<%
  List<Students> data= new ArrayList<>();
        data.add(new Student("Mari","S",true));
        data.add(new Student("Balaji","B",false));
        data.add(new Student("raj","r",false));
        data.add(new Student("jeya","n",true));
        pageContext.setAttribute("myStudent",data);
        %>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>Student</title>
</head>
<body>
<table border="1">
    <tr>
        <th>First Name</th>
        <th>Last Name</th>
        <th>Gold Member</th>
    </tr>
    <c:forEach var="tempStudent" items="${myStudent}">
        <tr>
            <td>
                ${tempStudent.firstName}
            </td>
            <td>
                ${tempStudent.lastName}
            </td>
            <td>
                <c:if test="${tempStudent.goldCustomer}">
                    Special Discount
                </c:if>
                <c:if test="${not tempStudent.goldCustomer}">
                -
                </c:if>
            </td>
        </tr>
    </c:forEach>
</table>
</body>
</html>