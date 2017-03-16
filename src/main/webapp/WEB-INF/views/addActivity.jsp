<%--
  Created by IntelliJ IDEA.
  User: Samantha
  Date: 3/16/2017
  Time: 10:57 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>

<form action="processForm" method = "post">

    Type: Food <br>
    Name: <input type="text" name="name"> <br>
    Full Address: <input type="text" name="address"> <br>
    Website: <input type="text" name="website"> <br>
    Closest Station:
                    <select name="stationId" >
                        <option value="" disabled="disabled" selected="selected">Please select a station</option>
                        <option value= "1">Congress</option>
                        <option value="2">Campus Martius</option>
                        <option value="3">Grand Circus</option>
                        <option value="4">FoxTown </option>
                        <option value="5">Sibley</option>
                        <option value="6">Martin Luther King Jr.</option>
                        <option value="7">Canfield</option>
                        <option value="8">Warren</option>
                        <option value="9">Ferry</option>
                        <option value="10">Amsterdam</option>
                        <option value="11">Amtrak</option>
                        <option value="12">Grand Station</option>
                    </select>

    <input type="submit" value="submit">

</form> <br>

<form action="processForm1" method = "post">

    Type: Retail <br>
    Name: <input type="text" name="name"> <br>
    Full Address: <input type="text" name="address"> <br>
    Website: <input type="text" name="website"> <br>
    Closest Station:
    <select name="stationId" >
        <option value="" disabled="disabled" selected="selected">Please select a station</option>
        <option value= "1">Congress</option>
        <option value="2">Campus Martius</option>
        <option value="3">Grand Circus</option>
        <option value="4">FoxTown </option>
        <option value="5">Sibley</option>
        <option value="6">Martin Luther King Jr.</option>
        <option value="7">Canfield</option>
        <option value="8">Warren</option>
        <option value="9">Ferry</option>
        <option value="10">Amsterdam</option>
        <option value="11">Amtrak</option>
        <option value="12">Grand Station</option>
    </select>

    <input type="submit" value="submit">

</form> <br>

<form action="processForm2" method = "post">

    Type: Entertainment <br>
    Name: <input type="text" name="name"> <br>
    Full Address: <input type="text" name="address"> <br>
    Website: <input type="text" name="website"> <br>
    Closest Station:
    <select name="stationId" >
        <option value="" disabled="disabled" selected="selected">Please select a station</option>
        <option value= "1">Congress</option>
        <option value="2">Campus Martius</option>
        <option value="3">Grand Circus</option>
        <option value="4">FoxTown </option>
        <option value="5">Sibley</option>
        <option value="6">Martin Luther King Jr.</option>
        <option value="7">Canfield</option>
        <option value="8">Warren</option>
        <option value="9">Ferry</option>
        <option value="10">Amsterdam</option>
        <option value="11">Amtrak</option>
        <option value="12">Grand Station</option>
    </select>

    <input type="submit" value="submit">

</form> <br>

<a href = "mainpage">Go back to main</a>

</body>
</html>
