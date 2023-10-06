<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="theLocale" value="${not empty param.theLocale ? param.theLocale : 'en_US'}" scope="session"/>

<fmt:setLocale value="${theLocale}"/>
<fmt:setBundle basename="com.jspdemo.i18n.resources"/>

<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>I18N</title>
</head>
<body>
<a href="?theLocale=en_US">English (US)</a>
<a href="?theLocale=es_ES">Spanish (ES)</a>
<a href="?theLocale=de_DE">Germany (DE)</a>
<br>
<fmt:message key="label.greeting"/> <br><br>
<fmt:message key="label.firstname"/> <i>Mari</i> <br><br>
<fmt:message key="label.lastname"/> <i>S</i> <br><br>
<fmt:message key="label.Welcome"/>  <br><br>
selected Locale is ${theLocale}
</body>
</html>
