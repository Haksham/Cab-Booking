<%
	if(session.getAttribute("name")==null){
		response.sendRedirect("login.jsp");
	}
%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <meta name="description" content="Free cabs everywhere">
    <meta name="keywords" content="Online Cab Booking System">
    <meta name="author" content="Haks">
    <meta http-equiv="refresh" content="15">
    <link rel="icon" type="image/png" href="ind-img/logo.png">
    <title>Cabs Up</title>
    <script src="js.js"></script>
    <link
      href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css"
      rel="stylesheet"
      integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN"
      crossorigin="anonymous"
    />
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Roboto:ital,wght@0,100;0,300;0,400;0,500;0,700;0,900;1,100;1,300;1,400;1,500;1,700;1,900&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="style.css" />
    <link rel="stylesheet" href="new.css" />
    <link href="css/index-styles.css" rel="stylesheet" />
    <script
      src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"
      integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL"
      crossorigin="anonymous"
    ></script>
    <link href="https://unpkg.com/aos@2.3.1/dist/aos.css" rel="stylesheet" />
    <link rel="icon" type="image/x-icon" href="assets/favicon.ico" />
    <!-- Font Awesome icons (free version)-->
    <script
      src="https://use.fontawesome.com/releases/v5.15.4/js/all.js"
      crossorigin="anonymous"
    ></script>
    <script src="https://unpkg.com/typed.js@2.1.0/dist/typed.umd.js"></script>
    <!-- Google fonts-->
    <link
      href="https://fonts.googleapis.com/css?family=Montserrat:400,700"
      rel="stylesheet"
      type="text/css"
    />
    <link
      href="https://fonts.googleapis.com/css?family=Lato:400,700,400italic,700italic"
      rel="stylesheet"
      type="text/css"
    />
    <link href="https://unpkg.com/aos@2.3.1/dist/aos.css" rel="stylesheet">
  <script src="https://unpkg.com/aos@2.3.1/dist/aos.js"></script>
  </head>
  <body>
    <nav
      class="navbar navbar-expand-lg bg-black text-uppercase fixed-top"
      id="mainNav"
    >
      <div class="container">
        <a class="navbar-brand " href="#page-top">
          <span class="dig" style="color: white;"></span></a>
        <button
          class="navbar-toggler text-uppercase font-weight-bold bg-primary text-white"
          type="button"
          data-bs-toggle="collapse"
          data-bs-target="#navbarResponsive"
          aria-controls="navbarResponsive"
          aria-expanded="false"
          aria-label="Toggle navigation"
        >
          Menu <i class="fas fa-bars"></i>
        </button>
        <div class="collapse navbar-collapse" id="navbarResponsive">
          <ul class="navbar-nav ms-auto">
            <li class="nav-item mx-0 mx-lg-1">
              <a
                class="nav-link py-3 px-0 px-lg-3 rounded "
                href="#portfolio"
                ><span class="spp">Book now</span></a
              >
            </li>
            <li class="nav-item mx-0 mx-lg-1">
              <a
                class="nav-link py-3 px-0 px-lg-3 rounded "
                href="#about"
                ><span class="spp1">About</span></a
              >
            </li>
            <li class="nav-item mx-0 mx-lg-1">
              <a
                class="nav-link py-3 px-0 px-lg-3 rounded "
                href="#contact"
                ><span class="spp2">Contact</span></a
              >
            </li>
            <li class="nav-item mx-0 mx-lg-1">
              <a
                class="nav-link py-3 px-0 px-lg-3 rounded "
                href="logout"
                ><span class="spp3">Logout</span></a
              >
            </li>
            <li class="nav-item mx-0 mx-lg-1 bg-danger">
              <a class="nav-link py-3 px-0 px-lg-3 rounded" href="logout"
                ><%= session.getAttribute("name") %></a
              >
            </li>
          </ul>
      </div>
    </div>
    <div class="night" onclick=night()>    
    </div>
    </nav>
    <div class="cab-img"></div>
    <div class="main">
      <div class="inp">
      	<form method="" action="" class=""
							id="index">
	        <div class="gren-cab"><img src="ind-img/cab-green.jpeg" alt=""></div>
	        <div><input type="text" placeholder="Location" id="location" class="field" /></div>
	        <div class="arr-img">
	
	        </div>
	        <div>
	          <input type="text" placeholder="Destination" id="destination" class="field" required />
	        </div>
	        <button class="butto" onclick= redirectToRates() type="button">Lets go....</button>
	        <div class="agreement">
	          <input type="radio" style="margin-right: 5px" /><span
	            >Agreement of the
	            <a
	              href="https://s2.q4cdn.com/280787235/files/doc_downloads/procurement/Purchase-Order-Terms-and-Conditions_Goods_130614.pdf"
	              target="_blank"
	              >terms and conditions.</a
	            >
	          </span>
	        </div>
	     </form>
      </div>
    </div>
    <div class="rates">
        <div class="auto co"><div><img src="ind-img/auto.png" class="pic" alt="">Get Auto</div> <div class="rt">
        	<input
            class="tret"
            type="text"
            value="10"
            style="
              border: none;
              background-color: white;
              position: relative;
              width: 50px;
              top: -10px;
            "
          />rupee
		</div></div>
        <div class="cab co"><div><img src="ind-img/car.jpg" class="pic" alt="">Get Cab</div> <div class="rt">
			<input
            class="tret1"
            type="text"
            value="10"
            style="
              border: none;
              background-color: white;
              position: relative;
              width: 50px;
              top: -10px;
            "
          />rupee
		</div></div>
        <div class="e-bike co"><div><img src="ind-img/bike.png" class="pic">Get E-bike</div> <div class="rt">
			<input
            class="tret2"
            type="text"
            value="10"
            style="
              border: none;
              background-color: white;
              position: relative;
              width: 50px;
              top: -10px;
            "
          />rupee
		</div></div>
    </div>
    <section class="about_section layout_padding">
      <div class="container-fluid">
        <div class="row" style="background-color: whitesmoke;">
          <div class="col-lg-4 col-md-5  offset-lg-2 offset-md-1" >
            <div class="detail-box">
              <h2 class="head4">
                About <br />
                Taxi Company
              </h2>
              <p>
                Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do
                eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut
                enim ad minim veniaLorem ipsum dolor sit amet, consectetur
                adipiscing elit, sed do eiusmod tempor incididunt ut labore et
                dolore magna aliqua. Ut enim ad minim veniamm
              </p>
              <a href=""> Read More </a>
            </div>
          </div>
          <div class="col-md-6">
              <img src="ind-img/about-img.png" alt="" />
          </div>
        </div>
      </div>
    </section>
    <div id="booking" class="ride_section layout_padding">
      <div class="container">
        <div class="ride_main">
          <h1 class="ride_text" style="color: gray;">Why Ride With<span style="color: #000000;"><b class="bol"> Cabs Up</b></span></h1>
        </div>
      </div>
    </div>
    <div class="ride_section_2 layout_padding">
      <div class="container">
        <div class="row">
          <div class="col-sm-4">
            <div class="image_3"><img src="ind-img/img-3.png"></div>
          </div>
          <div class="col-sm-8">
            <h1 class="cabe_text ">Cabs Up for Every Pocket</h1>
            <p class="long_text">It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as It is a long established fact that a reader will be distracted by the readable c</p>
            <div class="book_bt"><a href="#">BOOK NOW</a></div>
          </div>
        </div>
      </div>
      <div class="container">
        <div class="row">
          <div class="col-sm-8">
            <h1 class="secure_text">Secure and Safer Rides</h1>
            <p class="long_text_2">It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as It is a long established fact that a reader will be distracted by the readable c</p>
            <div class="book_bt_2"><a href="#">BOOK NOW</a></div>
          </div>
          <div class="col-sm-4">
            <div class="image_3"><img src="ind-img/img-4.png"></div>
          </div>
        </div>
      </div>
      <div class="container">
        <div class="row">
          <div class="col-sm-4">
            <div class="image_3"><img src="ind-img/img-5.png"></div>
          </div>
          <div class="col-sm-8">
            <h1 class="cabe_text cabb">Cabs Up for Every Pocket</h1>
            <p class="long_text">It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as It is a long established fact that a reader will be distracted by the readable c</p>
            <div class="book_bt"><a href="#">BOOK NOW</a></div>
          </div>
        </div>
      </div>
      <div class="container">
        <div class="row">
          <div class="col-sm-8">
            <h1 class="secure_text cabb2">Secure and Safer Rides</h1>
            <p class="long_text_2">It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as It is a long established fact that a reader will be distracted by the readable c</p>
            <div class="book_bt_2"><a href="#">BOOK NOW</a></div>
          </div>
          <div class="col-sm-4">
            <div class="image_3"><img src="ind-img/img-5.png"></div>
          </div>
        </div>
      </div>
    </div>
    <section class="service_section layout_padding">
      <div class="container">
        <div class="heading_container">
          <h2 class="head">
            Our <br />
            Taxi Services
          </h2>
        </div>
        <div class="service_container">
          <div class="box">
            <div class="img1">
              
            </div>
            <div class="detail-box">
              <h5 class="head1">Private Driver</h5>
              <p>Lorem ipsum dolor sit ame</p>
              <a href=""> Read More </a>
            </div>
          </div>
          <div class="box">
            <div class="img2">
            </div>
            <div class="detail-box">
              <h5 class="head2">Airport Transfer</h5>
              <p>Lorem ipsum dolor sit ame</p>
              <a href=""> Read More </a>
            </div>
          </div>
          <div class="box">
            <div class="img3">
              
            </div>
            <div class="detail-box">
              <h5 class="head3">Luggage Transfer</h5>
              <p>Lorem ipsum dolor sit ame</p>
              <a href=""> Read More </a>
            </div>
          </div>
        </div>
      </div>
    </section>
    <footer class="new_footer_area bg_color">
      <div class="new_footer_top">
        <div class="container">
          <div class="row">
            <div class="col-lg-3 col-md-6">
              <div
                class="f_widget company_widget wow fadeInLeft"
                data-wow-delay="0.2s"
                style="
                  visibility: visible;
                  animation-delay: 0.2s;
                  animation-name: fadeInLeft;
                "
              >
                <h3 class="f-title f_600 t_color f_size_18">Get in Touch</h3>
                <p>
                  Don’t miss any updates of our new templates and extensions.!
                </p>
                <form
                  action="#"
                  class="f_subscribe_two mailchimp"
                  method="post"
                  novalidate="true"
                  _lpchecked="1"
                >
                  <input
                    type="text"
                    name="EMAIL"
                    class="form-control memail"
                    placeholder="Email"
                  />
                  <button
                    style="background-color: black; color: white"
                    class="btn btn_get btn"
                    type="submit"
                  >
                    Subscribe
                  </button>
                  <p class="mchimp-errmessage" style="display: none"></p>
                  <p class="mchimp-sucmessage" style="display: none"></p>
                </form>
              </div>
            </div>
            <div class="col-lg-3 col-md-6">
              <div
                class="f_widget about-widget pl_70 wow fadeInLeft"
                data-wow-delay="0.4s"
                style="
                  visibility: visible;
                  animation-delay: 0.4s;
                  animation-name: fadeInLeft;
                "
              >
                <h3 class="f-title f_600 t_color a1 f_size_18">Download</h3>
                <ul class="list-unstyled f_list">
                  <li><a href="#">Company</a></li>
                  <li><a href="#">Android App</a></li>
                  <li><a href="#">ios App</a></li>
                  <li><a href="#">Desktop</a></li>
                  <li><a href="#">Projects</a></li>
                  <li><a href="#">My tasks</a></li>
                </ul>
              </div>
            </div>
            <div class="col-lg-3 col-md-6">
              <div
                class="f_widget about-widget pl_70 wow fadeInLeft"
                data-wow-delay="0.6s"
                style="
                  visibility: visible;
                  animation-delay: 0.6s;
                  animation-name: fadeInLeft;
                "
              >
                <h3 class="f-title f_600 t_color a2 f_size_18">Help</h3>
                <ul class="list-unstyled f_list">
                  <li><a href="#">FAQ</a></li>
                  <li><a href="#">Term &amp; conditions</a></li>
                  <li><a href="#">Reporting</a></li>
                  <li><a href="#">Documentation</a></li>
                  <li><a href="#">Support Policy</a></li>
                  <li><a href="#">Privacy</a></li>
                </ul>
              </div>
            </div>
            <div class="col-lg-3 col-md-6">
              <div
                class="f_widget social-widget pl_70 wow fadeInLeft"
                data-wow-delay="0.8s"
                style="
                  visibility: visible;
                  animation-delay: 0.8s;
                  animation-name: fadeInLeft;
                "
              >
                <h3 class="f-title f_600 t_color a3  f_size_18">Team Solutions</h3>
                <div class="f_social_icon">
                  <button style="border-radius: 100%">
                    <a href="#" class="fab fa-facebook"></a>
                  </button>
                  <button style="border-radius: 100%">
                    <a href="#" class="fab fa-twitter"></a>
                  </button>
                  <button style="border-radius: 100%">
                    <a href="#" class="fab fa-linkedin"></a>
                  </button>
                  <button style="border-radius: 100%">
                    <a href="#" class="fab fa-pinterest"></a>
                  </button>
                </div>
              </div>
            </div>
          </div>
        </div>
        <div class="footer_bg">
          <div class="footer_bg_one"></div>
          <div class="footer_bg_two"></div>
        </div>
      </div>
      <div class="footer_bottom">
        <div class="container">
          <div class="row align-items-center">
            <div class="col-lg-6 col-sm-7">
              <p class="mb-0 f_400">
                © <b>Cabs Up</b> Inc.. 2024 All rights reserved.
              </p>
            </div>
            <div class="col-lg-6 col-sm-5 text-right">
              <p>
                Made with trust<i class="icon_heart"></i> in
                <a href="" target="_blank" style="color: black;"><b class="nation">Bharat</b></a>
              </p>
            </div>
          </div>
        </div>
      </div>
    </footer>
  </body>
	<script src="js/scripts.js"></script>
  <script>
    AOS.init();
    var typed = new Typed(".dig",
    {strings:["Let's Gooooo....."],
    typeSpeed:150,
    backSpeed:150,
    loop:true})
  </script>
</html>
