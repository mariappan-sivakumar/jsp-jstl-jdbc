<%@ page import="java.util.*" %>

<html>

<body>
<form action="to-do-list.jsp">
    add new item:  <input type="text" name="item"/>
    <input type="submit" value="Submit">
</form>

<br>
<%
    List<String> items= (List<String>) session.getAttribute("myToDoList");
    if(items==null){
        items=new ArrayList<String>();
        session.setAttribute("myToDoList",items);
    }
    String item=request.getParameter("item");
    if(item!=null && !item.trim().equals("") && !items.contains(item.trim())){
        items.add(item);
    }
%>
<hr>
<b> To Do list </b> <br>

<ol>
    <%
    for (String temp: items){
        out.println("<li>"+temp+"</li>");
    }
    %>
</ol>
</body>
</html>