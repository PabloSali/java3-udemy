<%--
  Created by IntelliJ IDEA.
  User: sali
  Date: 2/12/23
  Time: 9:26 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Declaration Test</title>
</head>
<body>
  <h3>Hello World</h3>

  <%!
    String makeItLower(String data){
      return data.toLowerCase();
    }
  %>
  Lower case "Hello World": <%= makeItLower("Hello World")%>
</body>
</html>
