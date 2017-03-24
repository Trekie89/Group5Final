<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Q-Line</title>

    <!-- Bootstrap Core CSS -->
    <link href="../resources/css/bootstrapmin.css" rel="stylesheet">

    <!-- Custom CSS -->
    <link href="../resources/css/stylish.css" rel="stylesheet">

    <!-- Custom Fonts -->
    <link href="../resources/font.css" rel="stylesheet" type="text/css">
    <link href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,700,300italic,400italic,700italic"
          rel="stylesheet" type="text/css">

    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
    <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
<style>

</style>
    <script language="JavaScript">


        function preloader()

        {

            // counter
            var i = 0;

            // create object
            imageObj = new Image();

            var imgs = [,
                '',
                '',
                ''];
            // set image list
            images = new Array();
            images[0]="../resources/images/Grand.jpg"
            images[1]="../resources/images/amtrak.jpg"
            images[2]="../resources/images/UnderConstruction.png"
            images[3]="../resources/images/Ferry.jpg"

            // start preloading
            for(i=0; i<=3; i++)
            {
                imageObj.src=images[i];
            }
        }

    </script>

</head>

<body>

<!-- Navigation -->

<a id="menu-toggle" href="#" class="btn btn-dark btn-lg toggle"><i class="fa fa-bars"></i></a>
<nav id="sidebar-wrapper" style="color: white">
    <ul class="sidebar-nav">
        <a id="menu-close" href="#" class="btn btn-light btn-lg pull-right toggle"><i class="fa fa-times"></i></a>
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
            <a href="safety" onclick=$("#menu-close").click();>Qline FAQ's</a>
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
<header id="top" class="header-main">
    <div style="background-color: transparent; position: absolute;text-align: center;height:175px;width:180px">
        <h4>Temperature: ${showTemp} &#8457;</h4>
        <h4>Wind Speed: ${showWind} m.p.h</h4>
        <h4>Current Conditions: ${currentWeather}</h4>
        <img src="${Gif}">
    </div>
    <div class="text-vertical-center" style="position: relative">
        <h1 style="color:black">Discover the Q-Line</h1>
        <br>
        <a href="login" class="btn btn-dark btn-lg">Login/Register</a>
    </div>
</header>

<!-- About -->
<section id="about" class="about">
    <div class="container">
        <div class="row">
            <div class="col-lg-12 text-center">
                <h2>Welcome to the QLine in Detroit, MI.</h2>
            </div>
        </div>
        <!-- /.row -->
    </div>
    <!-- /.container -->
</section>

<!-- Services -->
<!-- The circle icons use Font Awesome's stacked icon classes. For more information, visit http://fontawesome.io/examples/ -->
<section id="services" class="services bg-primary">
    <div class="container">
        <div class="row text-center">
            <div class="col-lg-10 col-lg-offset-1">
                <h2>Our Services</h2>
                <hr class="small">
                <div class="row">
                    <div class="col-md-3 col-sm-6">
                        <div class="service-item">
                                <span class="fa-stack fa-4x">
                                <i class="fa fa-circle fa-stack-2x"></i>
                                <i class="fa fa-cloud fa-stack-1x text-primary"></i>
                            </span>
                            <h4>
                                <strong>Plan Trip</strong>
                            </h4>
                            <a href="plan" class="btn btn-light">Plan</a>
                        </div>
                    </div>
                    <div class="col-md-3 col-sm-6">
                        <div class="service-item">
                                <span class="fa-stack fa-4x">
                                <i class="fa fa-circle fa-stack-2x"></i>
                                <i class="fa fa-compass fa-stack-1x text-primary"></i>
                            </span>
                            <h4>
                                <strong>About the Qline</strong>
                            </h4>
                            <a href="about" class="btn btn-light">Learn More</a>

                        </div>
                    </div>
                    <div class="col-md-3 col-sm-6">
                        <div class="service-item">
                                <span class="fa-stack fa-4x">
                                <i class="fa fa-circle fa-stack-2x"></i>
                                <i class="fa fa-flask fa-stack-1x text-primary"></i>
                            </span>
                            <h4>
                                <strong>Qline FAQ's</strong>
                            </h4>
                            <a href="safety" class="btn btn-light">Questions</a>
                        </div>
                    </div>
                    <div class="col-md-3 col-sm-6">
                        <div class="service-item">
                                <span class="fa-stack fa-4x">
                                <i class="fa fa-circle fa-stack-2x"></i>
                                <i class="fa fa-shield fa-stack-1x text-primary"></i>
                            </span>
                            <h4>
                                <strong>Add Activity</strong>
                            </h4>
                            <a href="addActivity" class="btn btn-light">Add</a>
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

<!-- Portfolio -->

<link rel="stylesheet" type="text/css" href="../resources/css/map.css">

<!--Fixed when scrolling -->

<div id="parent" style="position:fixed; top:300px; left:1000px;background-color: transparent; float: right;">

    <div id="popup" style="display: none"></div>
</div>

<div id="popup" style="display: none"><img src="" width="640" height="480"></div>


<div style="margin-left: 200px; background-color: #CCFFFF">
    <img src="../resources/images/map.png" width="800" height="3771" border="0" usemap="#map" />
</div>

<script type="text/javascript">

    //When the mouse leaves the section
    function runAway(){
        document.getElementById('popup').style.display = 'none';
    }

    function show_image(index){
        var imgs_src=[
            "../resources/images/Grand.jpg",
            "../resources/images/amtrak.jpg",
            "../resources/images/UnderConstruction.png",
            "../resources/images/Ferry.JPG",
            "../resources/images/Warren.JPG",
            "../resources/images/UnderConstruction.png",
            "../resources/images/MLK.JPG",
            "../resources/images/Sibley.JPG",
            "../resources/images/Foxtown.JPG",
            "../resources/images/GrandCircus.JPG",
            "../resources/images/CampusMartiusbetter.jpg",
            "../resources/images/congress.jpg"
        ];
        var img = document.createElement("img");
        img.src=imgs_src[index];
        document.getElementById('popup').appendChild(img);
    }

    function displayInfo(station){
        var info=["Grand Station",
            "Amtrak Park",
            "Amsterdam Station",
            "Ferry Station",
            "Warren Station",
            "Canfield Station",
            "Martin Luther King Jr. Station",
            "Sibley Station",
            "Foxtown Station",
            "Grand Circus Station",
            "Campus Marius Station",
            "Congress Station"
        ];
        document.getElementById('popup').style.display = 'block';
        document.getElementById('popup').innerHTML=info[station];
        show_image(station);
        return info[station];
    }

</script>

<map name="map">
    <area shape="circle" coords="379,272,22" onmouseover="displayInfo(0);" onmouseout="runAway()"  nohref="nohref" />
    <area shape="circle" coords="379,404,23" onmouseover="displayInfo(1);" onmouseout="runAway()" nohref="nohref" />
    <area shape="circle" coords="380,525,23" onmouseover="displayInfo(2);" onmouseout="runAway()" nohref="nohref" />
    <area shape="circle" coords="415,948,22" onmouseover="displayInfo(3);" onmouseout="runAway()" nohref="nohref" />
    <area shape="circle" coords="340,948,23" onmouseover="displayInfo(3);" onmouseout="runAway()" nohref="nohref" />
    <area shape="circle" coords="412,1173,22" onmouseover="displayInfo(4);" onmouseout="runAway()" nohref="nohref" />
    <area shape="circle" coords="341,1234,23" onmouseover="displayInfo(4);" onmouseout="runAway()" nohref="nohref" />
    <area shape="circle" coords="413,1470,23" onmouseover="displayInfo(5);" onmouseout="runAway()" nohref="nohref" />
    <area shape="circle" coords="341,1473,22" onmouseover="displayInfo(5);" onmouseout="runAway()" nohref="nohref" />
    <area shape="circle" coords="415,1826,23" onmouseover="displayInfo(6);" onmouseout="runAway()" nohref="nohref" />
    <area shape="circle" coords="342,1827,22" onmouseover="displayInfo(6);" onmouseout="runAway()" nohref="nohref" />
    <area shape="circle" coords="342,2212,22" onmouseover="displayInfo(7);" onmouseout="runAway()" nohref="nohref" />
    <area shape="circle" coords="416,2244,21" onmouseover="displayInfo(7);" onmouseout="runAway()" nohref="nohref" />
    <area shape="circle" coords="343,2481,22" onmouseover="displayInfo(8);" onmouseout="runAway()" nohref="nohref" />
    <area shape="circle" coords="415,2483,21" onmouseover="displayInfo(8);" onmouseout="runAway()" nohref="nohref" />
    <area shape="circle" coords="339,2869,22" onmouseover="displayInfo(9);" onmouseout="runAway()" nohref="nohref" />
    <area shape="circle" coords="414,2869,22" onmouseover="displayInfo(9);" onmouseout="runAway()" nohref="nohref" />
    <area shape="circle" coords="412,3393,24" onmouseover="displayInfo(10);" onmouseout="runAway()" nohref="nohref" />
    <area shape="circle" coords="343,3428,21" onmouseover="displayInfo(10);" onmouseout="runAway()" nohref="nohref" />
    <area shape="circle" coords="379,3729,21" onmouseover="displayInfo(11);"  nohref="nohref" />
</map>


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
                <p>Samantha Behn, Wei Oo, Michael Preston, Robert Fretter</p>
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
    $("#menu-close").click(function (e) {
        e.preventDefault();
        $("#sidebar-wrapper").toggleClass("active");
    });
    // Opens the sidebar menu
    $("#menu-toggle").click(function (e) {
        e.preventDefault();
        $("#sidebar-wrapper").toggleClass("active");
    });
    // Scrolls to the selected menu item on the page
    $(function () {
        $('a[href*=#]:not([href=#],[data-toggle],[data-target],[data-slide])').click(function () {
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
    $(document).scroll(function () {
        if ($(this).scrollTop() > 250) {
            if (!fixed) {
                fixed = true;
                // $('#to-top').css({position:'fixed', display:'block'});
                $('#to-top').show("slow", function () {
                    $('#to-top').css({
                        position: 'fixed',
                        display: 'block'
                    });
                });
            }
        } else {
            if (fixed) {
                fixed = false;
                $('#to-top').hide("slow", function () {
                    $('#to-top').css({
                        display: 'none'
                    });
                });
            }
        }
    });
    // Disable Google Maps scrolling
    // See http://stackoverflow.com/a/25904582/1607849
    // Disable scroll zooming and bind back the click event
    var onMapMouseleaveHandler = function (event) {
        var that = $(this);
        that.on('click', onMapClickHandler);
        that.off('mouseleave', onMapMouseleaveHandler);
        that.find('iframe').css("pointer-events", "none");
    }
    var onMapClickHandler = function (event) {
        var that = $(this);
        // Disable the click handler until the user leaves the map area
        that.off('click', onMapClickHandler);
        // Enable scrolling zoom
        that.find('iframe').css("pointer-events", "auto");
        // Handle the mouse leave event
        that.on('mouseleave', onMapMouseleaveHandler);
    }
    // Enable map zooming with mouse scroll when the user clicks the map
    $('.map').on('click', onMapClickHandler);
</script>

</body>

</html>

