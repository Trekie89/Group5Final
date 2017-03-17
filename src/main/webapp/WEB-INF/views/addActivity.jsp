
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>

<form action="addFood" method = "post">

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

<form action="addRetail" method = "post">

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

<form action="addEntertainment" method = "post">

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

<a href = "/">Go back to main</a>

</body>
</html>
