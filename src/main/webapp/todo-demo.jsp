<%@ page import="java.util.*" %>

<%--
  Created by IntelliJ IDEA.
  User: sali
  Date: 2/12/23
  Time: 11:24 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>To Do List</title>
</head>
<body>
  <form action="todo-demo.jsp">
    Add new item <input type="text" name="newItem">
    <br>
    <input type="submit" value="Submit">
  </form>

<%
 //Gets items from session
  List<String> items = (List<String>) session.getAttribute("myToDoList");
 //Checks if item exists and creates one if it doesn't
  if(items == null){
      items = new ArrayList<String>();
      session.setAttribute("myToDoList", items);
  }
  // See if there's form data to add
  String newItem = request.getParameter("newItem");
  if(newItem != null){
    items.add(newItem);
  }
%>

<h3>To Do List:</h3>
<ol>
  <%
    for(String item: items){
      out.print("<li>" +  item + "</li>");
    }
  %>
</ol>

</body>
</html>
