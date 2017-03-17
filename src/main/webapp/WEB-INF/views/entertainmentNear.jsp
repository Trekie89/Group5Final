<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

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

<a href = "plan">Go back to choices</a>

</body>
</html>
