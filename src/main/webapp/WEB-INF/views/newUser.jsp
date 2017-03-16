<%--
  Created by IntelliJ IDEA.
  User: Frett
  Date: 3/16/2017
  Time: 1:27 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>newUser</title>
</head>
<body>
<form action="processForm" method = "post">

<h3> User Registration</h3>


    <select name="stationId" >
        <option value= "userLogin">User Name</option>
        <option value="firstName">First Name</option>
        <option value="lastName">Last Name </option>
        <option value="phoneNumber">Phone Number </option>
        <option value="password">Password</option>
    </select>

    <input type="submit" value="submit">

</form> <br>
</body>
</html>
