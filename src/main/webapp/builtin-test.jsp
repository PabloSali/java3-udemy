<%--
  Created by IntelliJ IDEA.
  User: sali
  Date: 2/12/23
  Time: 9:49 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Builtin Test</title>
</head>
<body>
  <h3> JSP Built-In Objects</h3>

  Request user agent: <%= request.getHeader("User-Agent") %>

  <br>

  Request Language: <%= request.getLocale()%>


</body>
</html>
