<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: Mike
  Date: 3/16/2017
  Time: 11:37 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<table border="1">
    <tr>
        <th>Station ID</th>
        <th>Station Name</th>
        <th>Quantity</th>
    </tr>
    <c:forEach var="station" items="${nearby}">
        <tr>
            <td>${station.stationID}</td>
            <td>${station.stattionName}</td>
            <td>${station.quantity}</td>
        </tr>
    </c:forEach>
</table>

</body>
</html>
