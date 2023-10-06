
<head>
  <meta charset="UTF-8">
  <title>Student Confirmation</title>
</head>
<body>
    Student is confirmed :  <%= request.getParameter("firstname") %> <%= request.getParameter("lastname") %>
    from <%= request.getParameter("Department")%> Department <br/><br/>
    Favorite programming language is: <%= request.getParameter("programmingLanguage") %>
    <br/><br/> Student Knows the following Language: <br/><br/>
    <ul>
    <%
    String[] languages=request.getParameterValues("knownLanguage");
    if(languages!=null){
    for(String language: languages){
    out.println("<li>"+language+"</li>");
    }
    }
    %>
    </ul>
</body>
</html>