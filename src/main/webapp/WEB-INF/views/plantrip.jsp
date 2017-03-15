<%--
  Created by IntelliJ IDEA.
  User: Samantha
  Date: 3/13/2017
  Time: 2:30 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>

<h1> Option 1</h1>

<p> I parked here, where is the closest station?</p>

<form>

    Parked Here:

    Closest Station:

</form>

<h1> Option 2</h1>

<p> I know what I want to do, where is the closest station</p>

    <select name="activity" onchange="this.form.submit()">
        <option value="" disabled="disabled" selected="selected">Please select a activity</option>
        <option value="Food" >Food</option>
        <option value="Entertainment">Entertainment</option>
        <option value="Retail">Retail</option>
    </select>

<form>


</form>

<h1> Option 3</h1>

<p> I'm at a station, what can I do</p>

<form action="getStation" method="get">

    <select name="station" onchange="this.form.submit()">
        <option value="" disabled="disabled" selected="selected">Please select a station</option>
        <option value=1 >Congress</option>
        <option value=2>Campus Martius</option>
        <option value=3>Grand Circus</option>
        <option value=4>FoxTown </option>
        <option value=5>Sibley</option>
        <option value=6>Martin Luther King Jr.</option>
        <option value=7>Canfield</option>
        <option value=8>Warren</option>
        <option value=9>Ferry</option>
        <option value=10>Amsterdam</option>
        <option value=11>Amtrak</option>
        <option value=12>Grand Station</option>
    </select>

</form>

</body>
</html>
