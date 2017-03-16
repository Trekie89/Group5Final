
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>

<h1> Option 1</h1>

<p> I parked here, where is the closest station?</p>
<a href="direction">Directions</a>


<h1> Option 2</h1>

<p> I know what I want to do, where is the closest station</p>
<form action="getFromCategory" method="get">

    <select name="activity" onchange="this.form.submit()">
        <option value="" disabled="disabled" selected="selected">Please select a activity</option>
        <option value=1 >Food</option>
        <option value=2>Entertainment</option>
        <option value=3>Retail</option>
    </select>

<form>


</form>

<h1> Option 3</h1>

<p> I'm at a station, what can I do</p>

<form action="getStation" method="get">

    <select name="stationId" onchange="this.form.submit()">
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

</form> <br>

<a href = "/">Go back to main</a>

</body>
</html>
