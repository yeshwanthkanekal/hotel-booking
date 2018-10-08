<%@page import="Home.Home"%>
<%@page import="Home.RestaurantDetails"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html >
<head>

  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="generator" content="Mobirise v4.6.4, mobirise.com">
  <meta name="viewport" content="width=device-width, initial-scale=1, minimum-scale=1">
  <link rel="shortcut icon" href="assets/images/logo-128x128.png" type="image/x-icon">
  <meta name="description" content="HTML5 Hotel Templates. Download Now!">
  <title>Hotel Bookings </title>
  <link rel="stylesheet" href="mobirise-icons.css">
  <link rel="stylesheet" href="tether.min.css">
  <link rel="stylesheet" href="style.css">
  <link rel="stylesheet" href="bootstrap.min.css">
  <link rel="stylesheet" href="bootstrap-grid.min.css">
  <link rel="stylesheet" href="bootstrap-reboot.min.css">
  <link rel="stylesheet" href="bootstrap-datepicker3.css">
  <link rel="stylesheet" href="style1.css">
  <link rel="stylesheet" href="styles.css">
  <link rel="stylesheet" href="style2.css">
  <link rel="stylesheet" href="mbr-additional.css" type="text/css">



</head>
<body>


<noscript><iframe src="//www.googletagmanager.com/ns.html?id=GTM-PFK425"
height="0" width="0" style="display:none;visibility:hidden"></iframe></noscript>
<script>(function(w,d,s,l,i){w[l]=w[l]||[];w[l].push({'gtm.start':
new Date().getTime(),event:'gtm.js'});var f=d.getElementsByTagName(s)[0],
j=d.createElement(s),dl=l!='dataLayer'?'&l='+l:'';j.async=true;j.src=
'//www.googletagmanager.com/gtm.js?id='+i+dl;f.parentNode.insertBefore(j,f);
})(window,document,'script','dataLayer','GTM-PFK425');</script>


  <section class="menu1 menu cid-qJ2VZ5n067" once="menu" id="menu1-2">




    <nav class="navbar navbar-dropdown navbar-fixed-top navbar-expand-lg">
        <div class="navbar-brand">
            <span class="navbar-logo">
                <a>
                    <img src="logo2.png" alt="hotel html template" title="" style="height: 3.8rem;">
                </a>
            </span>
            <span class="navbar-caption-wrap mbr-section-btn"><a class="navbar-caption text-white display-7">
						SWIGGY 2.0
                </a></span>
        </div>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarNavAltMarkup" aria-expanded="false" aria-label="Toggle navigation">
            <div class="hamburger">
                <span></span>
                <span></span>
                <span></span>
                <span></span>
            </div>
        </button>


                </li>

    </nav>
</section>
<form class="mbr-form" action="rooms.jsp">
<section class="header1 cid-qJ2VZmtvSe mbr-fullscreen mbr-parallax-background" id="header1-3">



    <div class="mbr-overlay" style="opacity: 0.4; background-color: rgb(0, 0, 0);">
    </div>

    <div class="container">
<%
                RestaurantDetails Object = new RestaurantDetails();
            	
            	String id = request.getParameter("id");
            	System.out.println("restaurnrtDE"+id);
            	
            	String user = request.getParameter("user");
            	
            	String locality = Home.getlocality(id);
            		
            	Object = Home.getAllDetails(id);
            	
            	String name = Object.getRestaurantName();
            	String location = Object.getLocation();
            	String menuLink = Object.getMenu();
            	//String cost = Object.getCost();
            	String rating = Object.getRating();
            	String phone = Object.getPhone();
            	session.setAttribute("user23",user);
            	session.setAttribute("id23",id);
            	//out.print("<h1 class='mbr-section-title align-center mbr-fonts-style mbr-bold mbr-white pb-4 display-1'>"+name+"</h1>");
                
                %>

        <h1 class="mbr-section-title align-center mbr-fonts-style mbr-bold mbr-white pb-4 display-1"> <a ><%out.print(name); %></a></h1>


 
        <div class="row justify-content-center">
            <div class="col-lg-8 booking-datepicker pt-5" data-form-type="formoid" data-start="01/01/2018" data-end="02/01/2018">
               <div class="mbr-form">
                    <div class="col-3 input-wrap check-in" data-for="check-in">
                        <input type="text" class="check-in-input" name="check-in" data-form-field="Check-In" readonly="" id="check-in-header1-3">
                        <p class="label mbr-fonts-style align-center display-4">
                            CHECK-IN
                        </p>
                        <div class="date-row">
                            <span class="day display-2 mbr-bold"></span>
                            <div class="date-col">
                                <span class="month display-4"></span>
                                <span class="mbr-iconfont mbri-arrow-down"></span>
                            </div>
                        </div>
                    </div>
                    <div class="col-3 input-wrap guests" data-for="guests">
                    
                        <p>No Of Days</p>
                        <div>
                                
    <select name="stay">
  <option value="1">1</option>
  <option value="2">2</option>
  <option value="3">3</option>
  <option value="4">4</option>
  <option value="5">5</option>
</select>


                            </div>

                    </div>
                    <div class="col-3 input-wrap guests" data-for="guests">
                    
                        <p>ROOM TYPE</p>
                        <div>
                                
    <select name="roomtype">
  <option value="Small Room">Small Room</option>
  <option value="Luxury Room">Luxury Room</option>
  <option value="Apartment">Apartment</option>
  <option value="Family Room">Family Room</option>
  <option value="Double Room">Double Room</option>
</select>


                            </div>

                    </div>

					
                    <div class="mbr-section-btn">
                        <span class="input-group-btn">
                            <input type="submit" value="CHECK AVAILABILITY" class="btn btn-form btn-secondary mbr-lighter display-4">
									
                        </span>
                    </div>
                    <br>
                    
                </div>>
               
            </div>
        </div>
    </div>

</section>
</form>
 
<section class="features3 cid-qJ2W2aVLLb" id="features3-4">




    <div class="container-fluid">
        <div class="row justify-content-center">
            <div class="image-element col-xl-6">
                <div class="img-wrap" style="height: 100%; width: 100%;">
                    <img src="background6.jpg" alt="" title="">
                </div>
            </div>
            <div class="text-element col-xl-6">


                <h3 class="mbr-section-title mbr-fonts-style pb-4 mbr-white display-1">
                    ABOUT THE<br>
                    <span class="brown">PROJECT & TEMPLATE</span>
                </h3>
                <div class="paragraphs-wrapper pb-4">
                    <p class="mbr-text mbr-fonts-style mbr-lighter first-paragraph display-7">
                        THE WEBPAGE IS THE RESULT OF A PROJECT UNDER THE GUIDANCE OF PROFFESOR N.L. SARDA. THE PROJECT HOLDS A WEIGHTAGE OF APPROXIMATELY 35%.
                    </p>
                    <p class="second-paragraph mbr-text mbr-fonts-style mbr-lighter display-7">
                      THE BOOTSTRAP TEMPLATE IS REFFERED FROM <a href="https://mobirise.com/" target="_blank">THIS SITE!</a>WE HAVE USED THIS AS A REFERENCE AND MODIIFED THE PAGE ACCORDING TO OUR CONVENIENCE.
                    </p>
                </div>
                <div class="mbr-section-btn"><a class="btn btn-lg btn-secondary display-4">WE HOPE YOU LIKED IT!</a></div>
            </div>
        </div>
    </div>
</section>

<section class="mbr-section features2 cid-qJ2W84Rb3v" id="features2-5">





    <div class="container">
        <h3 class="mbr-section-subtitle main-subtitle mbr-fonts-style mbr-lighter align-center display-4">
            HOTEL LUXURY
        </h3>

        <div class="underline align-center pb-3">
            <div class="line"></div>
        </div>

        <h2 class="mbr-section-title main-title mbr-fonts-style align-center pb-5 display-2">
            Our Best Rooms
        </h2>
        <div class="row justify-content-center">
            <div class="card first-card col-12 col-lg-6">
                <div class="card-wrapper">
                    <div class="card-img">
                        <img src="04.jpg" alt="hotel html template">
                    </div>
                    <div class="card-box">
                        <h2 class="first-card-title mbr-fonts-style display-5">
                            Small Room
                        </h2>
                        <div class="first-card-info pb-3">
                            <div class="info-wrapper">
                                <span class="mbr-iconfont mbri-user"></span>
                                <p class="mbr-text info-text mbr-fonts-style mbr-lighter display-4">
                                    1 GUEST
                                </p>
                                <span class="mbr-iconfont mbri-home"></span>
                                <p class="mbr-text info-text mbr-fonts-style mbr-lighter display-4">
                                    17 Ft^2
                                </p>
                            </div>
                        </div>
                        <p class="mbr-text first-card-text mbr-fonts-style mbr-lighter display-7">
                            The Hotel Template additionally supplies visitors with laundry and ironing centers.
                        </p>
                        <div class="mbr-section-btn card-btn"><a href="#" class="btn btn-md btn-secondary display-4">
                                BOOK NOW FROM ₹ 750/-
                            </a></div>
                    </div>
                </div>
            </div>

            <div class="media-container-column col-lg-6">
                <div class="row first-row">
                    <div class="card col-sm-12 col-md-6 first-child">
                        <div class="card-wrapper">
                            <div class="card-img">
                                <img src="02.jpg" alt="html hotel template">
                            </div>
                            <div class="card-box caption mbr-white">
                                <p class="mbr-text card-title mbr-fonts-style mbr-lighter display-4">
                                    FAMILY ROOM
                                </p>
                                <p class="mbr-text price mbr-fonts-style mbr-lighter display-4">
                                    FROM ₹ 1,500/-
                                </p>
                            </div>
                        </div>
                    </div>
                    <div class="card col-sm-12 col-md-6">
                        <div class="card-wrapper">
                            <div class="card-img">
                                <img src="01.jpg" alt="html hotel template">
                            </div>
                            <div class="card-box caption mbr-white">
                                <p class="mbr-text card-title mbr-fonts-style mbr-lighter display-4">
                                    DOUBLE ROOM
                                </p>
                                <p class="mbr-text price mbr-fonts-style mbr-lighter display-4">
                                    FROM ₹ 1,000/-
                                </p>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="row second-row">
                    <div class="card col-sm-12 col-md-6 first-child">
                        <div class="card-wrapper">
                            <div class="card-img">
                                <img src="03.jpg" alt="html hotel template">
                            </div>
                            <div class="card-box caption mbr-white">
                                <p class="mbr-text card-title mbr-fonts-style mbr-lighter display-4">
                                    LUXURY ROOM
                                </p>
                                <p class="mbr-text price mbr-fonts-style mbr-lighter display-4">
                                    FROM ₹ 2,500/-
                                </p>
                            </div>
                        </div>
                    </div>
                    <div class="card col-sm-12 col-md-6">
                        <div class="card-wrapper">
                            <div class="card-img">
                                <img src="05.jpg" alt="html hotel template">
                            </div>
                            <div class="card-box caption mbr-white">
                                <p class="mbr-text card-title mbr-fonts-style mbr-lighter display-4">
                                    APARTMENT
                                </p>
                                <p class="mbr-text price mbr-fonts-style mbr-lighter display-4">
                                    FROM ₹ 3,000/-
                                </p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>

<section class="pricing-table1 cid-qJ2Wd4uMjn mbr-parallax-background" id="pricing-table1-6">



    <div class="mbr-overlay" style="opacity: 0.6; background-color: rgb(0, 0, 0);">
    </div>
    <div class="container">




        <h2 class="mbr-section-title main-title mbr-fonts-style mbr-white align-center display-2 pb-5">
            Hotel Services
        </h2>

        <div class="row justify-content-center">
            <div class="table col-md-6 col-lg-3 first-row-table">
                <div class="table-wrapper">
                    <div class="table-head-wrapper mbr-white">
                        <span class="table-heading mbr-section-title mbr-fonts-style mbr-bold display-7">
                            BASIC
                        </span>
                        <div class="table-purchase">
                            <span class="pricing-value mbr-fonts-style display-5">
                                ₹ 1,000/-
                            </span>
                            <h3 class="mbr-text table-pricing mbr-fonts-style mbr-lighter display-4">
                                PER DAY
                            </h3>
                        </div>
                    </div>
                    <ul class="list-group mbr-fonts-style mbr-lighter display-7">
                        <li>
                            <span class="items-text">
                                One room suit
                            </span>
                        </li>
                        <li>
                            <span class="items-text">
                                Fitness centre
                            </span>
                        </li>
                        <li>
                            <span class="items-text">
                                Buffet
                            </span>
                        </li>
                    </ul>

                </div>
            </div>

            <div class="table col-md-6 col-lg-3 first-row-table">
                <div class="table-wrapper">
                    <div class="table-head-wrapper mbr-white">
                        <span class="table-heading mbr-section-title mbr-fonts-style mbr-bold display-7">
                            STANDARD
                        </span>
                        <div class="table-purchase">
                            <span class="pricing-value mbr-fonts-style display-5">
                                ₹ 1,500/-
                            </span>
                            <h3 class="mbr-text table-pricing mbr-fonts-style mbr-lighter display-4">
                                PER DAY
                            </h3>
                        </div>
                    </div>
                    <ul class="list-group mbr-fonts-style mbr-lighter display-7">
                        <li>
                            <span class="items-text">
                                One room suit
                            </span>
                        </li>
                        <li>
                            <span class="items-text">
                                Fitness centre
                            </span>
                        </li>
                        <li>
                            <span class="items-text">
                                Buffet
                            </span>
                        </li>
                        <li>
                            <span class="items-text">
                                Laundry.
                            </span>
                        </li>
                    </ul>

                </div>
            </div>

            <div class="table col-md-6 col-lg-3">
                <div class="table-wrapper">
                    <div class="table-head-wrapper mbr-white">
                        <span class="table-heading mbr-section-title mbr-fonts-style mbr-bold display-7">
                            PREMIUM
                        </span>
                        <div class="table-purchase">
                            <span class="pricing-value mbr-fonts-style display-5">
                                ₹ 2,000/-
                            </span>
                            <h3 class="mbr-text table-pricing mbr-fonts-style mbr-lighter display-4">
                                PER DAY
                            </h3>
                        </div>
                    </div>
                    <ul class="list-group mbr-fonts-style mbr-lighter display-7">
                        <li>
                            <span class="items-text">
                                Two room suit
                            </span>
                        </li>
                        <li>
                            <span class="items-text">
                                Buffet
                            </span>
                        </li>
                        <li>
                            <span class="items-text">
                                Fitness centre
                            </span>
                        </li>
                        <li>
                            <span class="items-text">
                                Laundry.
                            </span>
                        </li>
                        <li>
                            <span class="items-text">
                                Dry cleaning.
                            </span>
                        </li>
                    </ul>

                </div>
            </div>

            <div class="table col-md-6 col-lg-3 last-table">
                <div class="table-wrapper">
                    <div class="table-head-wrapper mbr-white">
                        <span class="table-heading mbr-section-title mbr-fonts-style mbr-bold display-7">
                            ALL INCLUSIVE
                        </span>
                        <div class="table-purchase">
                            <span class="pricing-value mbr-fonts-style display-5">
                                ₹ 2,500/-
                            </span>
                            <h3 class="mbr-text table-pricing mbr-fonts-style mbr-lighter display-4">
                                PER DAY
                            </h3>
                        </div>
                    </div>
                    <ul class="list-group mbr-fonts-style mbr-lighter display-7">
                        <li>
                            <span class="items-text">
                                Two room suit
                            </span>
                        </li>
                        <li>
                            <span class="items-text">
                                Buffet
                            </span>
                        </li>
                        <li>
                            <span class="items-text">
                                Fitness centre
                            </span>
                        </li>
                        <li>
                            <span class="items-text">
                                Laundry.
                            </span>
                        </li>
                        <li>
                            <span class="items-text">
                                Dry cleaning.
                            </span>
                        </li>
                        <li>
                            <span class="items-text">
                                WiFi connection.
                            </span>
                        </li>
                    </ul>

                </div>
            </div>
        </div>
    </div>
</section>

<section class="features13 popup-btn-cards cid-qJ2WemWElk" id="features13-7">




    <div class="container">


        <h2 class="mbr-section-title main-title mbr-fonts-style align-center display-2">
            Restaurant Menu</h2>

        <form action="cart.jsp" method="get">

        <div class="row justify-content-center mt-5">
            <div class="col-md-6 content-section col-lg-4 first-row-card">
                <div class="wrapper card-wrapper">
                    <div class="mbr-overlay"></div>
                    <%

                    String a11 = Home.getImageUrl("1");

                    out.println("<img src='"+a11+"' >");
                    %>
                    <div class="content-block mbr-white">
                        <h2 class="mbr-section-title card-title mbr-fonts-style align-center mbr-lighter pb-3 display-5">
                            <a  class="text-white">Tomato Soup</a>
                        </h2>
						<center>
                        <input class="mbr-section-subtitle card-subtitle mbr-fonts-style align-center display-4" type="checkbox" name="1" value="Tomato Soup"  >Add To Basket<br>

						</center>

                    </div>
                </div>
            </div>

            <div class="col-md-6 content-section col-lg-4 first-row-card">
                <div class="wrapper card-wrapper">
                    <div class="mbr-overlay"></div>
                    <%

                    String a12 = Home.getImageUrl("2");

                    out.println("<img src='"+a12+"' >");
                    %>
                    <div class="content-block mbr-white">
                        <h2 class="mbr-section-title card-title mbr-fonts-style align-center mbr-lighter pb-3 display-5">
                            <a  class="text-white">Egg Soup</a>
                        </h2>
                        <center>
                        <input class="mbr-section-subtitle card-subtitle mbr-fonts-style align-center display-4" type="checkbox" name="2" value="Egg Soup"  >Add To Basket<br>
						</center>
                    </div>
                </div>
            </div>

			<div class="col-md-6 content-section col-lg-4 first-row-card">
                <div class="wrapper card-wrapper">
                    <div class="mbr-overlay"></div>
                    <%

                    String a13 = Home.getImageUrl("3");

                    out.println("<img src='"+a13+"' >");
                    %>
                    <div class="content-block mbr-white">
                        <h2 class="mbr-section-title card-title mbr-fonts-style align-center mbr-lighter pb-3 display-5">
                            <a  class="text-white">Mixed Soup</a>
                        </h2>
                        <center>
                        <input class="mbr-section-subtitle card-subtitle mbr-fonts-style align-center display-4" type="checkbox" name="3" value="Mixed Soup"  >Add To Basket<br>
						</center>
                    </div>
                </div>
            </div>



        </div>
    </div>

	<div class="container">



			<h2 class="mbr-section-title main-title mbr-fonts-style align-center display-2">
            Soups</h2>
        <div class="row justify-content-center mt-5">
            <div class="col-md-6 content-section col-lg-4 first-row-card">
                <div class="wrapper card-wrapper">
                    <div class="mbr-overlay"></div>
                    <%

                    String a14 = Home.getImageUrl("4");

                    out.println("<img src='"+a14+"' >");
                    %>
                    <div class="content-block mbr-white">
                        <h2 class="mbr-section-title card-title mbr-fonts-style align-center mbr-lighter pb-3 display-5">
                            <a  class="text-white">Samosa</a>
                        </h2>
                        <center>
                        <input class="mbr-section-subtitle card-subtitle mbr-fonts-style align-center display-4" type="checkbox" name="4" value="Samosa"  >Add To Basket<br>
						</center>
                    </div>
                </div>
            </div>

            <div class="col-md-6 content-section col-lg-4 first-row-card">
                <div class="wrapper card-wrapper">
                    <div class="mbr-overlay"></div>
                    <%

                    String a15 = Home.getImageUrl("5");

                    out.println("<img src='"+a15+"' >");
                    %>
                    <div class="content-block mbr-white">
                        <h2 class="mbr-section-title card-title mbr-fonts-style align-center mbr-lighter pb-3 display-5">
                            <a  class="text-white">French-fries</a>
                        </h2>
                        <center>
                        <input class="mbr-section-subtitle card-subtitle mbr-fonts-style align-center display-4" type="checkbox" name="5" value="French Fries"  >Add To Basket<br>
						</center>
                    </div>
                </div>
            </div>

			<div class="col-md-6 content-section col-lg-4 first-row-card">
                <div class="wrapper card-wrapper">
                    <div class="mbr-overlay"></div>
                    <%

                    String a16 = Home.getImageUrl("6");

                    out.println("<img src='"+a16+"' >");
                    %>
                    <div class="content-block mbr-white">
                        <h2 class="mbr-section-title card-title mbr-fonts-style align-center mbr-lighter pb-3 display-5">
                            <a  class="text-white">Burger</a>
                        </h2>
                        <center>
                        <input class="mbr-section-subtitle card-subtitle mbr-fonts-style align-center display-4" type="checkbox" name="6" value="Burger"  >Add To Basket<br>
						</center>
                    </div>
                </div>
            </div>



        </div>
    </div>

	<div class="container">



			<h2 class="mbr-section-title main-title mbr-fonts-style align-center display-2">
            Snacks</h2>
        <div class="row justify-content-center mt-5">
            <div class="col-md-6 content-section col-lg-4 first-row-card">
                <div class="wrapper card-wrapper">
                    <div class="mbr-overlay"></div>
                    <%

                    String a17 = Home.getImageUrl("7");

                    out.println("<img src='"+a17+"' >");
                    %>
                    <div class="content-block mbr-white">
                        <h2 class="mbr-section-title card-title mbr-fonts-style align-center mbr-lighter pb-3 display-5">
                            <a  class="text-white">Poori</a>
                        </h2>
                        <center>
                        <input class="mbr-section-subtitle card-subtitle mbr-fonts-style align-center display-4" type="checkbox" name="7" value="Poori"  >Add To Basket<br>
						</center>
                    </div>
                </div>
            </div>

            <div class="col-md-6 content-section col-lg-4 first-row-card">
                <div class="wrapper card-wrapper">
                    <div class="mbr-overlay"></div>
                    <%

                    String a18 = Home.getImageUrl("8");

                    out.println("<img src='"+a18+"' >");
                    %>
                    <div class="content-block mbr-white">
                        <h2 class="mbr-section-title card-title mbr-fonts-style align-center mbr-lighter pb-3 display-5">
                            <a  class="text-white">Idli-vada</a>
                        </h2>
                        <center>
                        <input class="mbr-section-subtitle card-subtitle mbr-fonts-style align-center display-4" type="checkbox" name="8" value="Idli Vada"  >Add To Basket<br>
						</center>
                    </div>
                </div>
            </div>

			<div class="col-md-6 content-section col-lg-4 first-row-card">
                <div class="wrapper card-wrapper">
                    <div class="mbr-overlay"></div>
                    <%

                    String a19 = Home.getImageUrl("9");

                    out.println("<img src='"+a19+"' >");
                    %>
                    <div class="content-block mbr-white">
                        <h2 class="mbr-section-title card-title mbr-fonts-style align-center mbr-lighter pb-3 display-5">
                            <a  class="text-white">Dosa</a>
                        </h2>
                        <center>
                        <input class="mbr-section-subtitle card-subtitle mbr-fonts-style align-center display-4" type="checkbox" name="9" value="Dosa"  >Add To Basket<br>
						</center>
                    </div>
                </div>
            </div>



        </div>
    </div>

	<div class="container">



			<h2 class="mbr-section-title main-title mbr-fonts-style align-center display-2">
            BreakFast</h2>
        <div class="row justify-content-center mt-5">
            <div class="col-md-6 content-section col-lg-4 first-row-card">
                <div class="wrapper card-wrapper">
                    <div class="mbr-overlay"></div>
                    <%

                    String a21 = Home.getImageUrl("10");

                    out.println("<img src='"+a21+"' >");
                    %>
                    <div class="content-block mbr-white">
                        <h2 class="mbr-section-title card-title mbr-fonts-style align-center mbr-lighter pb-3 display-5">
                            <a  class="text-white">South Thali</a>
                        </h2>
                        <center>
                        <input class="mbr-section-subtitle card-subtitle mbr-fonts-style align-center display-4" type="checkbox" name="10" value="South Thali"  >Add To Basket<br>
						</center>
                    </div>
                </div>
            </div>

            <div class="col-md-6 content-section col-lg-4 first-row-card">
                <div class="wrapper card-wrapper">
                    <div class="mbr-overlay"></div>
                    <%

                    String a31 = Home.getImageUrl("11");

                    out.println("<img src='"+a31+"' >");
                    %>
                    <div class="content-block mbr-white">
                        <h2 class="mbr-section-title card-title mbr-fonts-style align-center mbr-lighter pb-3 display-5">
                            <a  class="text-white">Butter Chicken</a>
                        </h2>
                        <center>
                        <input class="mbr-section-subtitle card-subtitle mbr-fonts-style align-center display-4" type="checkbox" name="11" value="Butter Chicken"  >Add To Basket<br>
						</center>
                    </div>
                </div>
            </div>

			<div class="col-md-6 content-section col-lg-4 first-row-card">
                <div class="wrapper card-wrapper">
                    <div class="mbr-overlay"></div>
                    <%

                    String a41 = Home.getImageUrl("12");

                    out.println("<img src='"+a41+"' >");
                    %>
                    <div class="content-block mbr-white">
                        <h2 class="mbr-section-title card-title mbr-fonts-style align-center mbr-lighter pb-3 display-5">
                            <a  class="text-white">Butter nan</a>
                        </h2>
                        <center>
                        <input class="mbr-section-subtitle card-subtitle mbr-fonts-style align-center display-4" type="checkbox" name="12" value="Butter nan"  >Add To Basket<br>
						</center>
                    </div>
                </div>
            </div>



        </div>
    </div>
	<div class="container">



			<h2 class="mbr-section-title main-title mbr-fonts-style align-center display-2">
            Lunch</h2>
        <div class="row justify-content-center mt-5">
            <div class="col-md-6 content-section col-lg-4 first-row-card">
                <div class="wrapper card-wrapper">
                    <div class="mbr-overlay"></div>
                    <%

                    String a51 = Home.getImageUrl("13");

                    out.println("<img src='"+a51+"' >");
                    %>
                    <div class="content-block mbr-white">
                        <h2 class="mbr-section-title card-title mbr-fonts-style align-center mbr-lighter pb-3 display-5">
                            <a  class="text-white">Chicken Biryani</a>
                        </h2>
                        <center>
                        <input class="mbr-section-subtitle card-subtitle mbr-fonts-style align-center display-4" type="checkbox" name="13" value="Chicken Biryani"  >Add To Basket<br>
						</center>
                    </div>
                </div>
            </div>

            <div class="col-md-6 content-section col-lg-4 first-row-card">
                <div class="wrapper card-wrapper">
                    <div class="mbr-overlay"></div>
                    <%

                    String a61 = Home.getImageUrl("14");

                    out.println("<img src='"+a61+"' >");
                    %>
                    <div class="content-block mbr-white">
                        <h2 class="mbr-section-title card-title mbr-fonts-style align-center mbr-lighter pb-3 display-5">
                            <a  class="text-white">Noodles</a>
                        </h2>
                        <center>
                        <input class="mbr-section-subtitle card-subtitle mbr-fonts-style align-center display-4" type="checkbox" name="14" value="Noodles"  >Add To Basket<br>
						</center>
                    </div>
                </div>
            </div>

			<div class="col-md-6 content-section col-lg-4 first-row-card">
                <div class="wrapper card-wrapper">
                    <div class="mbr-overlay"></div>
                    <%

                    String a71 = Home.getImageUrl("15");

                    out.println("<img src='"+a71+"' >");
                    %>
                    <div class="content-block mbr-white">
                        <h2 class="mbr-section-title card-title mbr-fonts-style align-center mbr-lighter pb-3 display-5">
                            <a  class="text-white">North Thali</a>
                        </h2>
                        <center>
                        <input class="mbr-section-subtitle card-subtitle mbr-fonts-style align-center display-4" type="checkbox" name="15" value="North Thali"  >Add To Basket<br>
						</center>
                    </div>
                </div>
            </div>



        </div>
    </div>

	<div class="container">
	<h2 class="mbr-section-title main-title mbr-fonts-style align-center display-2">
            Dinner</h2>
	</div>
	<%
	out.print("<input type='hidden' value="+request.getParameter("user")+">");
	%>
	<input type="hidden" name="user1" value=<%out.print(user); %>>
	<input type="hidden" name="id1" value=<%out.print(id); %>>
	<center>
	<input type="submit" value="GO TO BASKET">
	</center>
	</form>
</section>

<section class="testimonials1 cid-qJ2WiknLN0 mbr-parallax-background" id="testimonials1-8">



  <div class="mbr-overlay" style="opacity: 0.3; background-color: rgb(0, 0, 0);">
  </div>
  <div class="container">




      <h2 class="mbr-section-title main-title mbr-fonts-style mbr-white align-center pb-5 display-2">
          What Our Clients Say!
      </h2>

      <div class="col-lg-10 testimonials-container mbr-white">



      <div class="testimonials-item">
              <div class="user row">
                  <div class="col-lg-3 col-md-4">
                      <div class="user_image">
                          <img src="face4.jpg">
                      </div>
                  </div>
                  <div class="testimonials-caption col-lg-9 col-md-8">
                      <div class="user_text">
                          <p class="mbr-text mbr-fonts-style mbr-lighter display-7">
                             <em>"The amenities are state of the art. The interface of the website is simply awesome, which makes you feel special. Also, the rooms are very good, literally feels like home."</em>
                          </p>
                      </div>
                      <div class="user_name mbr-bold mbr-fonts-style pt-3 display-7">
                           ANKUSH NAGLE
                      </div>
                      <div class="user_desk mbr-light mbr-fonts-style pt-2 display-7">
                           ELECTRICAL DEPARTMENT, IIT DHARWAD.
                      </div>
                  </div>
              </div>
          </div><div class="testimonials-item">
              <div class="user row">
                  <div class="col-lg-3 col-md-4">
                      <div class="user_image">
                          <img src="face6.jpg">
                      </div>
                  </div>
                  <div class="testimonials-caption col-lg-9 col-md-8">
                      <div class="user_text">
                          <p class="mbr-text mbr-fonts-style mbr-lighter display-7">
                             <em>"A day-to-day buffet breakfast is offered to guests. It consists of waffles,cereal,fruit and breads,along with coffee,tea and juices. For a cost, guests can request a kitchen grocery store stocking solution or grocery distribution. Dry cleaning services are additionally available at our hotel."</em>
                          </p>
                      </div>
                      <div class="user_name mbr-bold mbr-fonts-style pt-3 display-7">
                           AMIT KUMAR
                      </div>
                      <div class="user_desk mbr-light mbr-fonts-style pt-2 display-7">
                        MECHANICAL DEPARTMENT, IIT DHARWAD.
                      </div>
                  </div>
              </div>
          </div></div>
  </div>
</section>

<section class="mbr-section content9 cid-qJ2WjJDTio" id="content9-9">



    <div class="container">
        <div class="media-container-row">
            <div class="title" style="width: 66%;">


                <h1 class="mbr-section-title mbr-fonts-style align-center display-2">Find Us Here</h1>


            </div>
        </div>
    </div>
</section>

<section class="maps2 cid-qJ2WqADchJ" id="maps2-a">




    <div align="center">
      <iframe width=1500 height=300 src="https://maps.google.com/maps?q=IITdharwad,Karnataka&ie=UTF8&t=&z=17&iwloc=B&output=embed" frameborder="0" scrolling="no" marginheight="0" marginwidth="0">

      </iframe>
    </div><br><br>
</section>

<section class="footer1 cid-qJ2WtUFT1h" id="footer1-b">




    <div class="container">
        <div class="row justify-content-center mbr-white">
            <div class="col-md-6 first-column col-lg-4">
                <h2 class="mbr-section-title mbr-fonts-style pb-2 display-5">
                    PHONE SUPPORT AND EMAIL SUPPORT.
                </h2>
                <h3 class="mbr-section-subtitle mbr-fonts-style mbr-lighter display-4">
                    10AM TO 10PM.
                </h3>
                <p class="mbr-text mbr-fonts-style display-5">
                  +91-9100640278
                  <br>
                  nikshep@gmail.com
                </p>
            </div>

            <div class="col-md-7 col-lg-4 third-column">
                <h2 class="mbr-section-title mbr-fonts-style pb-2 display-5">
                    SUBSCRIBE FOR SPECIAL OFFERS AND DISCOUNTS.
                </h2>
                <h3 class="mbr-section-subtitle mbr-fonts-style mbr-lighter display-4">
                    *CHANCE TO WIN A FREE STAY.
                </h3>
                <div class="form1" data-form-type="formoid">
                    <div data-form-alert="" hidden="">
                        Thanks for filling out the form!
                    </div>
                    <form class="mbr-form" action="https://mobirise.com/" method="post" data-form-title="My Mobirise Form"><input type="hidden" name="email" data-form-email="true" value="pyLrCqpRvr+IbGo/9u2U4RCUDIXgYL+raru4eRja3wFNq+ew3xjwD8cLJ6q+YMtcv/i5LmtI5ATOXk/jYeDhkE6uaDsqu2nQcPGaTxV3N6mk28MhpwzWaQDPuMDOPRRK" data-form-field="E-mail">
                        <div class="input-wrap" data-for="email">
                            <input type="text" class="field display-7" name="email" data-form-field="E-mail" placeholder="E-mail" required="" id="email-footer1-b">
                        </div>
                        <span class="input-group-btn">
                            <button href="https://mobirise.com/" type="submit" class="btn btn-lg btn-primary display-4">SUBSCRIBE</button>
                        </span>
                    </form>
                </div>
            </div>
        </div>
    </div>
</section>

<section class="footer2 cid-qJ2WuhfFOW" once="footer" id="footer2-c">





    <div class="container">
        <div class="row justify-content-center mbr-white">
            <div class="col-12">
                <p class="mbr-text mb-0 mbr-fonts-style align-center display-7">
                 Â© Copyright on 15/9/2018, by: <a  class="text-white">MNR,PPR,KVY</a> - All Rights Reserved.
                </p>
            </div>
        </div>
    </div>
</section>


  <script src="jquery.min.js"></script>
  <script src="popper.min.js"></script>
  <script src="tether.min.js"></script>
  <script src="bootstrap.min.js"></script>
  <script src="bootstrap-datepicker.js"></script>
  <script src="script.min.js"></script>
  <script src="smooth-scroll.js"></script>
  <script src="mbr-booking-datepicker.min.js"></script>
  <script src="jarallax.min.js"></script>
  <script src="mbr-popup-btns.js"></script>
  <script src="jquery.touch-swipe.min.js"></script>
  <script src="script.js"></script>
  <script src="formoid.min.js"></script>


 <div id="scrollToTop" class="scrollToTop mbr-arrow-up"><a style="text-align: center;"><i></i></a></div>
  </body>
</html>
