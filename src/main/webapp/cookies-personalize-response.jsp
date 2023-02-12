<%--
  Created by IntelliJ IDEA.
  User: sali
  Date: 2/12/23
  Time: 2:49 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Response</title>
</head>
<body>
    <%
        String favLang = request.getParameter("favoriteLanguage");
    // Create Cookie
        Cookie theCookie = new Cookie("myApp.favoriteLanguage",favLang);
    //Sets life span
        theCookie.setMaxAge(60*60*24*365);
    //send cookie to browser
        response.addCookie(theCookie);
    %>
    <h2>Thanks! We set your favorite language to: ${param.favoriteLanguage}</h2>
    <br>
    <a href="cookies-homepage.jsp">Return to homepage.</a>
</body>
</html>
