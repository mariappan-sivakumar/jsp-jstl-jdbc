<%@ page import="java.net.URLDecoder" %>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>Cookie HomePage</title>
</head>
<body>
<%
String favLang="Java";
Cookie[] cookies= request.getCookies();
if (cookies!=null){
  for(Cookie tempCookie: cookies){
    if ("myApp.favoriteLanguage".equals(tempCookie.getName())){
favLang = URLDecoder.decode(tempCookie.getValue(), "UTF-8");
      break;
        }
        }
        }
%>
<h2>New Books for <%= favLang %></h2>
<ul>
  <li>Book 1</li>
  <li>Book 2</li>
  <li>Book 2</li>
</ul>
<h2>Latest news on <%= favLang %></h2>
<ul>
  <li>News 1</li>
  <li>News 2</li>
  <li>News 2</li>
</ul>
<h2>New Jobs for <%= favLang %></h2>
<ul>
  <li>Job 1</li>
  <li>Job 2</li>
  <li>Job 2</li>
</ul>
<hr>
<a href="cookie-personalise.html">Personalize Favorite Language</a>
</body>
</html>