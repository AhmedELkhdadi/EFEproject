<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta content="width=device-width, initial-scale=1.0" name="viewport">

    <title>TheEvent Bootstrap Template - Index</title>
    <meta content="" name="description">
    <meta content="" name="keywords">

    <!-- Favicons -->
    <link href="${pageContext.request.contextPath}/assets/img/favicon.png" rel="icon">
    <link href="${pageContext.request.contextPath}/assets/img/apple-touch-icon.png" rel="apple-touch-icon">

    <!-- Google Fonts -->
    <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,700,700i|Raleway:300,400,500,700,800" rel="stylesheet">

    <!-- Vendor CSS Files -->
    <link href="${pageContext.request.contextPath}/assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/assets/vendor/venobox/venobox.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/assets/vendor/font-awesome/css/font-awesome.min.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/assets/vendor/owl.carousel/assets/owl.carousel.min.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/assets/vendor/aos/aos.css" rel="stylesheet">

    <!-- Template Main CSS File -->
    <link href="${pageContext.request.contextPath}/assets/css/style.css" rel="stylesheet">


   
</head>

<body>

    <!-- ======= Header ======= -->
    <header id="header">
        <div class="container">

            <div id="logo" class="pull-left">
                <!-- Uncomment below if you prefer to use a text logo -->
                <!-- <h1><a href="#intro">The<span>Event</span></a></h1>-->
                <a href="index.html" class="scrollto"><img src="${pageContext.request.contextPath}/assets/img/logo.png" alt="" title=""></a>
            </div>

            <nav id="nav-menu-container">
                <ul class="nav-menu">
                    <li class="menu-active"><a href="index.html">Home</a></li>
                    <li><a href="#about">About</a></li>
                    <li><a href="#speakers">Speakers</a></li>
                    <li><a href="#schedule">Schedule</a></li>

                    <li><a href="#gallery">Gallery</a></li>
                    <li><a href="#supporters">Sponsors</a></li>
                    <li><a href="#contact">Contact</a></li>
                    <c:if test="${ connected == false }">
	                    <li class="buy-tickets"><a href="${pageContext.request.contextPath}/login">Log in</a></li>
	                    <li class="buy-tickets"><a href="${pageContext.request.contextPath}/sign_up">Sign up</a></li>
                    </c:if>
                    <c:if test="${ connected ==	 true }">
	                    <li><a href="" class="nameNav"> ${ user.getName()}  ${ user.getFname() }</a></li>
	                    <li class="buy-tickets"><a href="${pageContext.request.contextPath}/?logout">Log out</a></li>
                    </c:if>
                    
                </ul>
            </nav>
            <!-- #nav-menu-container -->
        </div>
    </header>
    <!-- End Header -->

    <!-- ======= Intro Section ======= -->
    <section id="intro">
        <div class="intro-container" data-aos="zoom-in" data-aos-delay="100">
            <h1 class="mb-4 pb-0">The Annual<br><span>ENSAK</span> FORUM<br>Enterprise</h1>
            <c:if test="${ eventState == 0 }">
			<h3 class="text-light mb-4 pb-0">Starts in <b id="blockCountdown" class="text-info" style="display:none"> ${ msUntillStart }</b>, Be Ready! </h3>                            	
			</c:if>
			
			<c:if test="${ eventState == 1 }">
	        <c:choose>
	        		<c:when test="${ currentActivity == null }">
	        			<h3 class="text-light mb-4 pb-0"> The Event has Started, Comeback tomorrow for Day2.</h3>  
	        		</c:when>
	        		<c:otherwise>
	        			<p class="m-0 p-0 "> OnGoing Activity: <b class="text-warning" >${ currentActivity.getName() }</b></p> 
	      		</c:otherwise>
	      	</c:choose>                          	
	        </c:if>
            <a href="https://www.youtube.com/watch?v=pFq6kQP4x-E&ab_channel=ENSAKEntreprises" class="venobox play-btn mb-4" data-vbtype="video" data-autoplay="true"></a>
             <div style="display: inline;">
              <c:if test="${ connected == true }">
             <a href="stands" class="about-btn">Go to Workshops</a>
             </c:if>
             <c:choose>
                    	<c:when test="${ user.getStatus() == 1 }">
                    		<a href="admin" class="about-btn ">Go to the Dashboard</a>
                    	</c:when>
                    	<c:when test="${ user.getStatus() == 2 }">
                    		<a href="workshop?Rep=${ user.getId()}" class="about-btn">Go to my Worshop</a>
                    	</c:when>
                    </c:choose>
            </div>
        </div>
    </section>
    <!-- End Intro Section -->

    <main id="main">

        <!-- ======= About Section ======= -->
        <section id="about">
            <div class="container" data-aos="fade-up">
                <div class="row">
                    <div class="col-lg-6">
                        <h2>About The Event</h2>
                        <p>Sed nam ut dolor qui repellendus iusto odit. Possimus inventore eveniet accusamus error amet eius aut accusantium et. Non odit consequatur repudiandae sequi ea odio molestiae. Enim possimus sunt inventore in est ut optio sequi
                            unde.
                        </p>
                    </div>
                    <div class="col-lg-3">
                        <h3>Where</h3>
                        <p>Downtown Conference Center, New York</p>
                    </div>
                    <div class="col-lg-3">
                        <h3>When</h3>
                        <p>Monday to Wednesday<br>10-12 December</p>
                    </div>
                </div>
            </div>
        </section>
        <!-- End About Section -->

        <!-- ======= Speakers Section ======= -->
        <section id="speakers">
            <div class="container" data-aos="fade-up">
                <div class="section-header">
                    <h2>Event Speakers</h2>
                    <p>Here are some of our speakers</p>
                </div>

                <div class="row">
                <c:forEach items="${ speakers }" var="speaker">
                	<div class="col-lg-3 col-md-6">
                        <div class="speaker" data-aos="fade-up" data-aos-delay="100">
                            <img src="${pageContext.request.contextPath}/assets/img/speakers/${speaker.getImage()}" alt="Speaker" class="img-fluid" style="width:100%;height:330px;">
                            <div class="details">
                                <h3><a href="">${ speaker.getName() } ${ speaker.getFname() }</a></h3>
                                <p>${ speaker.getDescription() }</p>
                            </div>
                        </div>
                    </div>
                </c:forEach>
            </div>

        </section>
        <!-- End Speakers Section -->

        <!-- ======= Schedule Section ======= -->
        <section id="schedule" class="section-with-bg">
            <div class="container" data-aos="fade-up">
                <div class="section-header">
                    <h2>Event Schedule</h2>
                    <p>Here is our event schedule</p>
                </div>

                <ul class="nav nav-tabs" role="tablist" data-aos="fade-up" data-aos-delay="100">
                    <li class="nav-item">
                        <a class="nav-link active" href="#day-1" role="tab" data-toggle="tab">Day 1</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#day-2" role="tab" data-toggle="tab">Day 2</a>
                    </li>
                </ul>

                <h3 class="sub-heading">Event will take place the ${ day1} and ${ day2 } </h3>

                <div class="tab-content row justify-content-center" data-aos="fade-up" data-aos-delay="200">

                    <!-- Schdule Day 1 -->
                        
					<div role="tabpanel" class="col-lg-9 tab-pane fade show active" id="day-1">
					<c:forEach items="${ activities1 }" var="activity">
                        <div class="row schedule-item">
                            <div class="col-md-2"><time>${ activity.getStartTime() } - ${ activity.getEndTime() }</time></div>
                            <div class="col-md-10">
                            <c:if test="${ activity.getSpeaker() != null }">
                                <div class="speaker">
                                    <img src="${pageContext.request.contextPath}/assets/img/speakers/${ activity.getSpeaker().getImage()}" alt="">
                                </div>
                             </c:if>
                                <h4>${ activity.getName() }.<c:if test="${ activity.getSpeaker() != null }"><span> ${ activity.getSpeaker().getName()} ${ activity.getSpeaker().getFname()}</span></c:if></h4>
                                <p>${ activity.getSpeaker().getDescription() }</p>
                            </div>
                        </div>
                     </c:forEach>
                     </div> 
                    <!-- End Schdule Day 1 -->

                    <!-- Schdule Day 2 -->
                    <div role="tabpanel" class="col-lg-9  tab-pane fade" id="day-2">

                        <c:forEach items="${ activities2 }" var="activity">
                        <div class="row schedule-item">
                            <div class="col-md-2"><time>${ activity.getStartTime() } - ${ activity.getEndTime() }</time></div>
                            <div class="col-md-10">
                            <c:if test="${ activity.getSpeaker() != null }">
                                <div class="speaker">
                                    <img src="${pageContext.request.contextPath}/assets/img/speakers/${ activity.getSpeaker().getImage()}" alt="">
                                </div>
                             </c:if>
                                <h4>${ activity.getName() }.<c:if test="${ activity.getSpeaker() != null }"><span> ${ activity.getSpeaker().getName()} ${ activity.getSpeaker().getFname()}</span></c:if></h4>
                                <p>${ activity.getSpeaker().getDescription() }</p>
                            </div>
                        </div>
                     </c:forEach>
                    </div>
                    <!-- End Schdule Day 2 -->
                </div>

            </div>

        </section>
        <!-- End Schedule Section -->

        
              <!-- ======= Gallery Section ======= -->
        <section id="gallery">

            <div class="container" data-aos="fade-up">
                <div class="section-header">
                    <h2>Gallery</h2>
                    <p>Check our gallery from the recent events</p>
                </div>
            </div>

            <div class="owl-carousel gallery-carousel" data-aos="fade-up" data-aos-delay="100">
                <a href="${pageContext.request.contextPath}/assets/img/gallery/1.jpg" class="venobox" data-gall="gallery-carousel"><img src="${pageContext.request.contextPath}/assets/img/gallery/1.jpg" alt=""></a>
                <a href="${pageContext.request.contextPath}/assets/img/gallery/2.jpg" class="venobox" data-gall="gallery-carousel"><img src="${pageContext.request.contextPath}/assets/img/gallery/2.jpg" alt=""></a>
                <a href="${pageContext.request.contextPath}/assets/img/gallery/3.jpg" class="venobox" data-gall="gallery-carousel"><img src="${pageContext.request.contextPath}/assets/img/gallery/3.jpg" alt=""></a>
                <a href="${pageContext.request.contextPath}/assets/img/gallery/4.jpg" class="venobox" data-gall="gallery-carousel"><img src="${pageContext.request.contextPath}/assets/img/gallery/4.jpg" alt=""></a>
                <a href="${pageContext.request.contextPath}/assets/img/gallery/5.jpg" class="venobox" data-gall="gallery-carousel"><img src="${pageContext.request.contextPath}/assets/img/gallery/5.jpg" alt=""></a>
                <a href="${pageContext.request.contextPath}/assets/img/gallery/6.jpg" class="venobox" data-gall="gallery-carousel"><img src="${pageContext.request.contextPath}/assets/img/gallery/6.jpg" alt=""></a>
                <a href="${pageContext.request.contextPath}/assets/img/gallery/7.jpg" class="venobox" data-gall="gallery-carousel"><img src="${pageContext.request.contextPath}/assets/img/gallery/7.jpg" alt=""></a>
                <a href="${pageContext.request.contextPath}/assets/img/gallery/8.jpg" class="venobox" data-gall="gallery-carousel"><img src="${pageContext.request.contextPath}/assets/img/gallery/8.jpg" alt=""></a>
            </div>

        </section>
        <!-- End Gallery Section -->

        <!-- ======= Supporters Section ======= -->
        <section id="supporters" class="section-with-bg">

            <div class="container" data-aos="fade-up">
                <div class="section-header">
                    <h2>Sponsors</h2>
                </div>

                <div class="row no-gutters supporters-wrap clearfix" data-aos="zoom-in" data-aos-delay="100">

                    <div class="col-lg-3 col-md-4 col-xs-6">
                        <div class="supporter-logo">
                            <img src="${pageContext.request.contextPath}/assets/img/supporters/1.png" class="img-fluid" alt="">
                        </div>
                    </div>

                    <div class="col-lg-3 col-md-4 col-xs-6">
                        <div class="supporter-logo">
                            <img src="${pageContext.request.contextPath}/assets/img/supporters/2.png" class="img-fluid" alt="">
                        </div>
                    </div>

                    <div class="col-lg-3 col-md-4 col-xs-6">
                        <div class="supporter-logo">
                            <img src="${pageContext.request.contextPath}/assets/img/supporters/3.png" class="img-fluid" alt="">
                        </div>
                    </div>

                    <div class="col-lg-3 col-md-4 col-xs-6">
                        <div class="supporter-logo">
                            <img src="${pageContext.request.contextPath}/assets/img/supporters/4.png" class="img-fluid" alt="">
                        </div>
                    </div>

                    <div class="col-lg-3 col-md-4 col-xs-6">
                        <div class="supporter-logo">
                            <img src="${pageContext.request.contextPath}/assets/img/supporters/5.png" class="img-fluid" alt="">
                        </div>
                    </div>

                    <div class="col-lg-3 col-md-4 col-xs-6">
                        <div class="supporter-logo">
                            <img src="${pageContext.request.contextPath}/assets/img/supporters/6.png" class="img-fluid" alt="">
                        </div>
                    </div>

                    <div class="col-lg-3 col-md-4 col-xs-6">
                        <div class="supporter-logo">
                            <img src="${pageContext.request.contextPath}/assets/img/supporters/7.png" class="img-fluid" alt="">
                        </div>
                    </div>

                    <div class="col-lg-3 col-md-4 col-xs-6">
                        <div class="supporter-logo">
                            <img src="${pageContext.request.contextPath}/assets/img/supporters/8.png" class="img-fluid" alt="">
                        </div>
                    </div>

                </div>

            </div>

        </section>
        <!-- End Sponsors Section -->

        <!-- =======  F.A.Q Section ======= -->
        <section id="faq">

            <div class="container" data-aos="fade-up">

                <div class="section-header">
                    <h2>F.A.Q </h2>
                </div>

                <div class="row justify-content-center" data-aos="fade-up" data-aos-delay="100">
                    <div class="col-lg-9">
                        <ul id="faq-list">

                            <li>
                                <a data-toggle="collapse" class="collapsed" href="#faq1">Non consectetur a erat nam at lectus urna duis? <i class="fa fa-minus-circle"></i></a>
                                <div id="faq1" class="collapse" data-parent="#faq-list">
                                    <p>
                                        Feugiat pretium nibh ipsum consequat. Tempus iaculis urna id volutpat lacus laoreet non curabitur gravida. Venenatis lectus magna fringilla urna porttitor rhoncus dolor purus non.
                                    </p>
                                </div>
                            </li>

                            <li>
                                <a data-toggle="collapse" href="#faq2" class="collapsed">Feugiat scelerisque varius morbi enim nunc faucibus a pellentesque? <i class="fa fa-minus-circle"></i></a>
                                <div id="faq2" class="collapse" data-parent="#faq-list">
                                    <p>
                                        Dolor sit amet consectetur adipiscing elit pellentesque habitant morbi. Id interdum velit laoreet id donec ultrices. Fringilla phasellus faucibus scelerisque eleifend donec pretium. Est pellentesque elit ullamcorper dignissim. Mauris ultrices eros in
                                        cursus turpis massa tincidunt dui.
                                    </p>
                                </div>
                            </li>

                            <li>
                                <a data-toggle="collapse" href="#faq3" class="collapsed">Dolor sit amet consectetur adipiscing elit pellentesque habitant morbi? <i class="fa fa-minus-circle"></i></a>
                                <div id="faq3" class="collapse" data-parent="#faq-list">
                                    <p>
                                        Eleifend mi in nulla posuere sollicitudin aliquam ultrices sagittis orci. Faucibus pulvinar elementum integer enim. Sem nulla pharetra diam sit amet nisl suscipit. Rutrum tellus pellentesque eu tincidunt. Lectus urna duis convallis convallis tellus. Urna
                                        molestie at elementum eu facilisis sed odio morbi quis
                                    </p>
                                </div>
                            </li>

                            <li>
                                <a data-toggle="collapse" href="#faq4" class="collapsed">Ac odio tempor orci dapibus. Aliquam eleifend mi in nulla? <i class="fa fa-minus-circle"></i></a>
                                <div id="faq4" class="collapse" data-parent="#faq-list">
                                    <p>
                                        Dolor sit amet consectetur adipiscing elit pellentesque habitant morbi. Id interdum velit laoreet id donec ultrices. Fringilla phasellus faucibus scelerisque eleifend donec pretium. Est pellentesque elit ullamcorper dignissim. Mauris ultrices eros in
                                        cursus turpis massa tincidunt dui.
                                    </p>
                                </div>
                            </li>

                            <li>
                                <a data-toggle="collapse" href="#faq5" class="collapsed">Tempus quam pellentesque nec nam aliquam sem et tortor consequat? <i class="fa fa-minus-circle"></i></a>
                                <div id="faq5" class="collapse" data-parent="#faq-list">
                                    <p>
                                        Molestie a iaculis at erat pellentesque adipiscing commodo. Dignissim suspendisse in est ante in. Nunc vel risus commodo viverra maecenas accumsan. Sit amet nisl suscipit adipiscing bibendum est. Purus gravida quis blandit turpis cursus in
                                    </p>
                                </div>
                            </li>

                            <li>
                                <a data-toggle="collapse" href="#faq6" class="collapsed">Tortor vitae purus faucibus ornare. Varius vel pharetra vel turpis nunc eget lorem dolor? <i class="fa fa-minus-circle"></i></a>
                                <div id="faq6" class="collapse" data-parent="#faq-list">
                                    <p>
                                        Laoreet sit amet cursus sit amet dictum sit amet justo. Mauris vitae ultricies leo integer malesuada nunc vel. Tincidunt eget nullam non nisi est sit amet. Turpis nunc eget lorem dolor sed. Ut venenatis tellus in metus vulputate eu scelerisque. Pellentesque
                                        diam volutpat commodo sed egestas egestas fringilla phasellus faucibus. Nibh tellus molestie nunc non blandit massa enim nec.
                                    </p>
                                </div>
                            </li>

                        </ul>
                    </div>
                </div>

            </div>

        </section>
        <!-- End  F.A.Q Section -->

        <!-- ======= Contact Section ======= -->
        <section id="contact" class="section-bg bg-light">

            <div class="container" data-aos="fade-up">

                <div class="section-header">
                    <h2>Contact Us</h2>
                    <p>Nihil officia ut sint molestiae tenetur.</p>
                </div>

                <div class="row contact-info">

                    <div class="col-md-4">
                        <div class="contact-address">
                            <i class="ion-ios-location-outline"></i>
                            <h3>Address</h3>
                            <address>A108 Adam Street, NY 535022, USA</address>
                        </div>
                    </div>

                    <div class="col-md-4">
                        <div class="contact-phone">
                            <i class="ion-ios-telephone-outline"></i>
                            <h3>Phone Number</h3>
                            <p><a href="tel:+155895548855">+1 5589 55488 55</a></p>
                        </div>
                    </div>

                    <div class="col-md-4">
                        <div class="contact-email">
                            <i class="ion-ios-email-outline"></i>
                            <h3>Email</h3>
                            <p><a href="mailto:info@example.com">info@example.com</a></p>
                        </div>
                    </div>

                </div>

                <div class="form">
                    <form action="forms/contact.php" method="post" role="form" class="php-email-form">
                        <div class="form-row">
                            <div class="form-group col-md-6">
                                <input type="text" name="name" class="form-control shadow-sm rounded-sm border-0" id="name" placeholder="Your Name" data-rule="minlen:4" data-msg="Please enter at least 4 chars" />
                                <div class="validate"></div>
                            </div>
                            <div class="form-group col-md-6">
                                <input type="email" class="form-control shadow-sm rounded-sm border-0" name="email" id="email" placeholder="Your Email" data-rule="email" data-msg="Please enter a valid email" />
                                <div class="validate"></div>
                            </div>
                        </div>
                        <div class="form-group">
                            <input type="text" class="form-control shadow-sm rounded-sm border-0" name="subject" id="subject" placeholder="Subject" data-rule="minlen:4" data-msg="Please enter at least 8 chars of subject" />
                            <div class="validate"></div>
                        </div>
                        <div class="form-group">
                            <textarea class="form-control shadow-sm rounded-sm border-0" name="message" rows="5" data-rule="required" data-msg="Please write something for us" placeholder="Message"></textarea>
                            <div class="validate"></div>
                        </div>
                        <div class="mb-3">
                            <div class="loading">Loading</div>
                            <div class="error-message"></div>
                            <div class="sent-message">Your message has been sent. Thank you!</div>
                        </div>
                        <div class="text-center"><button type="submit" disabled>Send Message</button></div>
                    </form>
                </div>

            </div>
        </section>
        <!-- End Contact Section -->

    </main>
    <!-- End #main -->

    <!-- ======= Footer ======= -->
    <footer id="footer">

        <div class="container">
            <div class="copyright">
                &copy; Copyright <strong>TheEvent</strong>. All Rights Reserved
            </div>
            <div class="credits">
            </div>
        </div>
    </footer>
    <!-- End  Footer -->

    <a href="#" class="back-to-top"><i class="fa fa-angle-up"></i></a>

    <script src="${pageContext.request.contextPath}/assets/vendor/jquery/jquery.min.js"></script>
    <script src="${pageContext.request.contextPath}/assets/js/eventCountDown.js"></script>
    <!-- Vendor JS Files -->
    <script src="${pageContext.request.contextPath}/assets/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
    <script src="${pageContext.request.contextPath}/assets/vendor/jquery.easing/jquery.easing.min.js"></script>
    <script src="${pageContext.request.contextPath}/assets/vendor/php-email-form/validate.js"></script>
    <script src="${pageContext.request.contextPath}/assets/vendor/venobox/venobox.min.js"></script>
    <script src="${pageContext.request.contextPath}/assets/vendor/owl.carousel/owl.carousel.min.js"></script>
    <script src="${pageContext.request.contextPath}/assets/vendor/superfish/superfish.min.js"></script>
    <script src="${pageContext.request.contextPath}/assets/vendor/hoverIntent/hoverIntent.js"></script>
    <script src="${pageContext.request.contextPath}/assets/vendor/aos/aos.js"></script>

    <!-- Template Main JS File -->
    <script src="${pageContext.request.contextPath}/assets/js/main.js"></script>
	
	<script>
		$(".nameNav").click(function(e){
			e.preventDefault();
		});
	</script>
</body>

</html>