
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%--<html>--%>
<%--<head>--%>
    <%--<title>Title</title>--%>
<%--</head>--%>
<%--<body>--%>

<%--<h1> Option 1</h1>--%>

<%--<p> I parked here, where is the closest station?</p>--%>
<%--<a href="direction">Directions</a>--%>


<%--<h1> Option 2</h1>--%>

<%--<p> I know what I want to do, where is the closest station</p>--%>
<%--<form action="getFromCategory" method="get">--%>

    <%--<select name="activity" onchange="this.form.submit()">--%>
        <%--<option value="" disabled="disabled" selected="selected">Please select a activity</option>--%>
        <%--<option value=1 >Food</option>--%>
        <%--<option value=2>Entertainment</option>--%>
        <%--<option value=3>Retail</option>--%>
    <%--</select>--%>

<%--<form>--%>


<%--</form>--%>

<%--<h1> Option 3</h1>--%>

<%--<p> I'm at a station, what can I do</p>--%>

<%--<form action="getStation" method="get">--%>

    <%--<select name="stationId" onchange="this.form.submit()">--%>
        <%--<option value="" disabled="disabled" selected="selected">Please select a station</option>--%>
        <%--<option value= "1">Congress</option>--%>
        <%--<option value="2">Campus Martius</option>--%>
        <%--<option value="3">Grand Circus</option>--%>
        <%--<option value="4">FoxTown </option>--%>
        <%--<option value="5">Sibley</option>--%>
        <%--<option value="6">Martin Luther King Jr.</option>--%>
        <%--<option value="7">Canfield</option>--%>
        <%--<option value="8">Warren</option>--%>
        <%--<option value="9">Ferry</option>--%>
        <%--<option value="10">Amsterdam</option>--%>
        <%--<option value="11">Amtrak</option>--%>
        <%--<option value="12">Grand Station</option>--%>
    <%--</select>--%>

<%--</form> <br>--%>

<%--<a href = "/">Go back to main</a>--%>

<%--</body>--%>
<%--</html>--%>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Stylish Portfolio - Start Bootstrap Theme</title>

    <!-- Bootstrap Core CSS -->
    <link href="../resources/css/bootstrapmin.css" rel="stylesheet">

    <!-- Custom CSS -->
    <link href="../resources/css/stylish.css" rel="stylesheet">

    <!-- Custom Fonts -->
    <link href="../resources/font.css" rel="stylesheet" type="text/css">
    <link href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,700,300italic,400italic,700italic" rel="stylesheet" type="text/css">

    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
    <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->

</head>

<body>

<!-- Navigation -->
<a id="menu-toggle" href="#" class="btn btn-dark btn-lg toggle"><i class="fa fa-bars"></i></a>
<nav id="sidebar-wrapper" style = "color: white">
    <ul class="sidebar-nav">
        <a id="menu-close" href="#" class="btn btn-light btn-lg pull-right toggle" ><i class="fa fa-times"></i></a>
        <li class="sidebar-brand">
            <a href="/" onclick=$("#menu-close").click();>Home</a>
        </li>
        <li>
            <a href="plan" onclick=$("#menu-close").click();>Plan</a>
        </li>
        <li>
            <a href="about" onclick=$("#menu-close").click();>About</a>
        </li>
        <li>
            <a href="safety" onclick=$("#menu-close").click();>Safety</a>
        </li>
        <li>
            <a href="addActivity" onclick=$("#menu-close").click();>Add Activity</a>
        </li>
        <li>
            <a href="#contact" onclick=$("#menu-close").click();>Contact</a>
        </li>
    </ul>
</nav>

<!-- Header -->
<header id="top" class="header">
    <div class="text-vertical-center">
        <h1 style="color:#ff1f00">QLine Trip Planner</h1>
        <br>
        <a href="login" class="btn btn-dark btn-lg">Login/Register</a>
    </div>
</header>

<!-- About -->
<section id="about" class="about">
    <div class="container">
        <div class="row">
            <div class="col-lg-12 text-center">

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

                <a href = "plan">Go back to choices</a>

            </div>
        </div>
        <!-- /.row -->
    </div>
    <!-- /.container -->
</section>



<!-- Portfolio -->
<section id="portfolio" class="portfolio">
    <div class="container">
        <div class="row">
            <div class="col-lg-10 col-lg-offset-1 text-center">
                <h2>Map of the Stations</h2>
                <hr class="small">
                <div class="row">
                    <div class="col-md-6">
                        <div class="portfolio-item">
                            <a href="#">
                                <img class="img-portfolio img-responsive" src="../resources/images/map.jpg">
                            </a>
                        </div>
                    </div>
                </div>
                <!-- /.row (nested) -->
            </div>
            <!-- /.col-lg-10 -->
        </div>
        <!-- /.row -->
    </div>
    <!-- /.container -->
</section>


<!-- Footer -->
<footer>
    <div class="container">
        <div class="row">
            <div class="col-lg-10 col-lg-offset-1 text-center">
                <h4><strong>Q-line</strong>
                </h4>
                <p>7520 Woodward Avenue
                    <br>Detroit, MI 48202</p>
                <ul class="list-unstyled">
                    <li><i class="fa fa-phone fa-fw"></i> 1.800.511.3931</li>
                    <li><i class="fa fa-envelope-o fa-fw"></i> <a href="http://www.m-1rail.com/"> info@m-1rail.com</a>
                    </li>
                </ul>
                <br>
                <ul class="list-inline">
                    <li>
                        <a href="#"><i class="fa fa-facebook fa-fw fa-3x"></i></a>
                    </li>
                    <li>
                        <a href="#"><i class="fa fa-twitter fa-fw fa-3x"></i></a>
                    </li>
                    <li>
                        <a href="#"><i class="fa fa-dribbble fa-fw fa-3x"></i></a>
                    </li>
                </ul>
                <hr class="small">
                <p class="text-muted">Copyright &copy; Your Website 2017</p>
            </div>
        </div>
    </div>
    <a id="to-top" href="#top" class="btn btn-dark btn-lg"><i class="fa fa-chevron-up fa-fw fa-1x"></i></a>
</footer>

<!-- jQuery -->
<script src="../resources/js/jquery.js"></script>

<!-- Bootstrap Core JavaScript -->
<script src="../resourcse/js/bootstrap.min.js"></script>

<!-- Custom Theme JavaScript -->
<script>
    // Closes the sidebar menu
    $("#menu-close").click(function(e) {
        e.preventDefault();
        $("#sidebar-wrapper").toggleClass("active");
    });
    // Opens the sidebar menu
    $("#menu-toggle").click(function(e) {
        e.preventDefault();
        $("#sidebar-wrapper").toggleClass("active");
    });
    // Scrolls to the selected menu item on the page
    $(function() {
        $('a[href*=#]:not([href=#],[data-toggle],[data-target],[data-slide])').click(function() {
            if (location.pathname.replace(/^\//, '') == this.pathname.replace(/^\//, '') || location.hostname == this.hostname) {
                var target = $(this.hash);
                target = target.length ? target : $('[name=' + this.hash.slice(1) + ']');
                if (target.length) {
                    $('html,body').animate({
                        scrollTop: target.offset().top
                    }, 1000);
                    return false;
                }
            }
        });
    });
    //#to-top button appears after scrolling
    var fixed = false;
    $(document).scroll(function() {
        if ($(this).scrollTop() > 250) {
            if (!fixed) {
                fixed = true;
                // $('#to-top').css({position:'fixed', display:'block'});
                $('#to-top').show("slow", function() {
                    $('#to-top').css({
                        position: 'fixed',
                        display: 'block'
                    });
                });
            }
        } else {
            if (fixed) {
                fixed = false;
                $('#to-top').hide("slow", function() {
                    $('#to-top').css({
                        display: 'none'
                    });
                });
            }
        }
    });
</script>

</body>

</html>
