

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Safety</title>

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
<header id="top" class="header">
    <div class="text-vertical-center">
        <h1 style="color:#ff1f00">QLine Trip Planner</h1>
        <br>
    </div>
</header>

<!-- FAQ -->
<section id="FAQ" class="FAQ">
    <div class="container">
        <div class="row">
            <div class="col-lg-12 text-center">

                <h1> QLine FAQ's </h1><br>
               <p> <h3>How does the streetcar project differ from the Detroit People Mover?</h3><br>
                   The Detroit People Mover is an elevated circulator system within Downtown Detroit. The Woodward Avenue<br>
                  streetcar is a linear system co-mingled with vehicular traffic that will travel north and south along<br>
                  Woodward Avenue with 12 stops between Congress Street at the south end and West Grand Boulevard at the<br>
                  north end.  They are complementary systems to move residents, visitors and employees.<br>
                <br>
                <h3>How much does it cost to operate the streetcar?</h3><br>
                It is estimated the costs to operate and maintain the modern streetcar system will be approximately<br>
                $5.5-million each year.  M-1 RAIL has raised enough funds to operate it for up-to 10 years.  Operations<br>
                will be supplemented by revenues from fare box and advertising.<br>
                <br>
                <h3>How will existing bus service along Woodward Avenue be affected by the streetcar?</h3><br>
                Bus service will not be affected. For example, Detroit Department of Transportation (DDOT) Route 53<br>
                (Woodward Avenue) will continue to operate as usual.  Route 53 service will continue with established<br>
                headways along the corridor during the day and after the evening rush hour.  SMART Buses will also<br>
                continue to operate.<br>
                <br>
                <h3>How will I get to the Rosa Parks Transit Center from the streetcar?</h3><br>
                One way is to transfer to the Detroit People Mover at the Grand Circus Park station and get off at the<br>
                Times Square People Mover Station adjacent to the Rosa Parks Transit Center.  Another is to walk or bike<br>
                three blocks along Michigan Avenue from Campus Martius.<br>
                <br>
                <h3>How will I know when the streetcar will stop when I am driving/riding behind it?</h3><br>
                Each streetcar vehicle will have brake lights in the back to inform drivers and cyclists when the streetcar<br>
                will stop at a station.<br>
                <h3>What is a modern streetcar?</h3><br>
                A sleek 2 or 3 car vehicle that travels along a street traveled on vehicular traffic on a fixed rail.<br>
                Other cities that use the modern streetcar system include San Francisco, Seattle and Portland.<br>
                <h3>What is the advantage of having a streetcar in mixed-traffic versus a traditional bus?</h3><br>
                The streetcar will have designated station locations, level boarding and pre-paid tickets. This reduces<br>
                the amount of time needed for people to board the streetcar. In addition, the streetcar will have transit<br>
                phases, or an additional, dedicated light in some locations to allow it to easily go through signalized<br>
                intersections.
                <br>
                <br>
                Please click <a href="http://m-1rail.com/faq/">here</a>  for a full list of the Qline FAQ's
                </p>
                <a href = "/">Go back to main</a>
                <p> @copyright M-1 Rail (March 20, 2017). M-1 Rail FAQ's. Retrieved from http://m-1rail.com/faq/</p><br>
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
                    <div class="col-md-offset-3 col-md-6">
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
