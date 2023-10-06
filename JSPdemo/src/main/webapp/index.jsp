<%@ page import="com.newpack.Test" %>
<html>
<head>
    <meta charset="UTF-8">
    <title>Practice</title>
</head>
<body>
<jsp:include page="my-header.html" />
<h2>Hello World!</h2>
    <%= new java.util.Date() %><br>
    converting a string to upper case: <%= new String("Hello World").toUpperCase()%><br>
    Multiply 24 and 3 is: <%= 24*3%><br>
    Is 24 greater than 4: <%= 24>4%>
    <%
    for(int i=0; i<5;i++){
    out.println("<br>Current loop is"+i);
    }
    %>
    <%!
    String makeLower(String data){
    return data.toLowerCase();
    }
    %><br>
    Lower case of the word "Hi I am Mari" is:  <%= makeLower("Hi I am Mari") %><br>
<% String string=new String("Hi Mari");
 String result = Test.test(string); %>
<p>Result from Test class: <%= result %></p>
User Agent: <%= request.getHeader("User-Agent") %><br>
User Language: <%= request.getLocale() %><br>

<jsp:include page="my-footer.jsp" />
</body>
</html>
