<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>Function Practice</title>
</head>
<body>
<c:set var="data" value="Mariappan" />
Length of the String <b>${data}</b>: ${fn:length(data)}
<br><br>
Upper case of the String <b>${data}</b>: ${fn: toUpperCase(data)}
<br><br>
Lower case of the String <b>${data}</b>: ${fn: toLowerCase(data)}
<br><br>
Does the String <b>${data}</b> starts with <b>Mari</b>: ${fn: startsWith(data,"Mari")}
<br><br>
<c:set var="data" value="Thoothukudi,Chennai,Coimbatore,Madurai"/>
<h3>Split</h3>
<c:set var="cityArray" value="${fn: split(data,',')}"/>
<c:forEach var="tempCity" items="${cityArray}">
  ${tempCity}<br>
</c:forEach>
<h3>Join</h3>
<c:set var="join" value="${fn: join(cityArray,'-')}"/>
Result of joining ${join}
</body>
</html>