<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: Samantha
  Date: 3/15/2017
  Time: 11:43 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>

<h1> Food Nearby </h1> <br>
<table border=1>

    <c:forEach var="element" items="${model.food}">
        <tr>
            <td> ${element.name}</td> <td> ${element.address}</td> <td><a href = "${element.website}">${element.website}</a></td>
        </tr>
    </c:forEach>

</table> <br>

<h1> Entertainment Nearby </h1> <br>
<table border=1>

    <c:forEach var="element" items="${model.entertainment}">
        <tr>
            <td> ${element.name}</td> <td> ${element.address}</td> <td><a href = "${element.website}">${element.website}</a></td>
        </tr>
    </c:forEach>

</table> <br>

<h1> Retail Nearby </h1> <br>

<table border=1>

    <c:forEach var="element" items="${model.retail}">
        <tr>
            <td> ${element.name}</td> <td> ${element.address}</td> <td><a href = "${element.website}">${element.website}</a></td>
        </tr>
    </c:forEach>

</table> <br>

<a href = "mainpage">Go back to main</a>


</body>
</html>
