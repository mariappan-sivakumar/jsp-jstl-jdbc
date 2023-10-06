<%@ page import="java.net.URLEncoder" %>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>Language Conformation</title>
</head>
<body>
<%
  String favLang= request.getParameter("favoriteLanguage");
favLang = URLEncoder.encode(favLang, "UTF-8");
  Cookie cookie= new Cookie("myApp.favoriteLanguage",favLang);
  cookie.setMaxAge(60*60*24*365);
  response.addCookie(cookie);
%>
 <p>Thanks we set your favorite Language to <%= favLang %> </p>
<a href="cookie-homepage.jsp"> Return to HomePage</a>
</body>
</html>