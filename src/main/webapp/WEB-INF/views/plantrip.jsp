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

<form>

    <select name="station" onchange="this.form.submit()">
        <option value="" disabled="disabled" selected="selected">Please select a station</option>
        <option value="Congress" >Congress</option>
        <option value="Campus Martius">Campus Martius</option>
        <option value="Grand Circus">Grand Circus</option>
        <option value="FoxTown ">FoxTown </option>
        <option value="Sibley">Sibley</option>
        <option value="Martin Luther King Jr.">Martin Luther King Jr.</option>
        <option value="Canfield">Canfield</option>
        <option value="Warren">Warren</option>
        <option value="Ferry">Ferry</option>
        <option value="Amsterdam">Amsterdam</option>
        <option value="Amtrak">Amtrak</option>
        <option value="Grand Station">Grand Station</option>
    </select>

</form>

</body>
</html>
