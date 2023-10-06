<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"  %>
<!DOCTYPE html>
<%
String[] cities={"Thoothukudi", "Tirunelveli", "Coimbatore", "Chennai"};
pageContext.setAttribute("myCities", cities);
%>
<html>
<head>
    <title>Current Time Example</title>
</head>
<body>
    <h1>Display Current Time</h1>
    <c:set var="currentTime" value="<%= new java.util.Date() %>"/>

    <p>Current Time: ${currentTime} </p>
    <c:out value="Mari"></c:out> <br>
    <c:forEach var="tempCity" items="${myCities}">
        ${tempCity}<br>
    </c:forEach>
</body>
</html>
