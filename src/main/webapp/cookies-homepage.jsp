<%--
  Created by IntelliJ IDEA.
  User: sali
  Date: 2/12/23
  Time: 2:47 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Cookie Homepage</title>
</head>
<body>


<h1>Training Portal</h1>
<%
    // Initialize variable
    String favLang = "java";
    // Request Cookie from browser
    Cookie[] theCookies = request.getCookies();
    // find favorite language Cookie
    if(theCookies != null) {
        for(Cookie tempCookie: theCookies){
            if("myApp.favoriteLanguage".equals(tempCookie.getName())){
                favLang = tempCookie.getValue();
                break;
            }
        }
    }
%>
<br>
<br>
<h2>New Books for <%=favLang%></h2>
<br>
<br>
<ul>
    <li>xxxx</li>
    <li>xxxx</li>
</ul>
<br>
<br>

<h2>Latest News for <%=favLang%></h2>
<br>
<br>
<ul>
    <li>xxxx</li>
    <li>xxxx</li>
</ul><br>
<br>

<h2>Hot Jobs for <%=favLang%></h2>
<br>
<br>
<ul>
    <li>xxxx</li>
    <li>xxxx</li>
</ul>
<br>
<br>
<a href="cookies-personalize-form.html">Personalize.</a>

</body>
</html>
