<%--
  Created by IntelliJ IDEA.
  User: Samantha
  Date: 3/17/2017
  Time: 10:47 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>

<form action="login" method = "post">

User Name: <input type="text" name="userLogin"><br>
Password: <input type="text" name="password"><br>
</form>

<a href = "${message}">Facebook Login!</a>

<a href = "register">Register Here!</a>

</body>
</html>
