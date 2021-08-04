<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>
    <!DOCTYPE html>
    <html lang="en">

    <head>
        <meta charset="utf-8">
        <meta content="width=device-width, initial-scale=1.0" name="viewport">

        <title>TheEvent Bootstrap Template - Index</title>
        <meta content="" name="description">
        <meta content="" name="keywords">

        <!-- Favicons -->
        <link rel="shortcut icon" type="image/x-icon"
            href="${pageContext.request.contextPath}/DashboardAssets/img/fav.png">
        <link href="${pageContext.request.contextPath}/assets/img/apple-touch-icon.png" rel="apple-touch-icon">

        <!-- Google Fonts -->
        <link
            href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,700,700i|Raleway:300,400,500,700,800"
            rel="stylesheet">

        <!-- Vendor CSS Files -->
        <link href="${pageContext.request.contextPath}/assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
        <link href="${pageContext.request.contextPath}/assets/vendor/venobox/venobox.css" rel="stylesheet">
        <link href="${pageContext.request.contextPath}/assets/vendor/font-awesome/css/font-awesome.min.css"
            rel="stylesheet">
        <link href="${pageContext.request.contextPath}/assets/vendor/owl.carousel/assets/owl.carousel.min.css"
            rel="stylesheet">
        <link href="${pageContext.request.contextPath}/assets/vendor/aos/aos.css" rel="stylesheet">


        <!-- Template Main CSS File -->
        <link href="${pageContext.request.contextPath}/assets/css/style.css" rel="stylesheet">

        <!-- Template Main CSS File -->
        <link href="assets/css/style.css" rel="stylesheet">

        <style>
            /* Google Font */
            /* latin */
            @font-face {
                font-family: 'Google Sans';
                font-style: normal;
                font-weight: 400;
                src: local('Google Sans Regular'), local(GoogleSans-Regular), url(//fonts.gstatic.com/s/googlesans/v5/4UaGrENHsxJlGDuGo1OIlL3Owp4.woff2) format("woff2");
                unicode-range: U+0000-00FF, U+0131, U+0152-0153, U+02BB-02BC, U+02C6, U+02DA, U+02DC, U+2000-206F, U+2074, U+20AC, U+2122, U+2191, U+2193, U+2212, U+2215, U+FEFF, U+FFFD
            }

            /* latin */
            @font-face {
                font-family: 'Google Sans';
                font-style: normal;
                font-weight: 500;
                src: local('Google Sans Medium'), local('GoogleSans-Medium'), url(https://fonts.gstatic.com/s/googlesans/v11/4UabrENHsxJlGDuGo1OIlLU94YtzCwY.woff2) format('woff2');
                unicode-range: U+0000-00FF, U+0131, U+0152-0153, U+02BB-02BC, U+02C6, U+02DA, U+02DC, U+2000-206F, U+2074, U+20AC, U+2122, U+2191, U+2193, U+2212, U+2215, U+FEFF, U+FFFD;
            }

            body {
                font-family: Google Sans, sans-serif;
            }

            h1,
            h2,
            h3,
            h4,
            h5,
            h6,
            p {
                font-family: Google Sans, sans-serif;
                font-weight: 400;
                margin: 0 0 20px 0;
                padding: 0;
                color: #0e1b4d;
            }


            /* width */
            ::-webkit-scrollbar {
                width: 10px;
            }

            /* Track */
            ::-webkit-scrollbar-track {
                background: #f1f1f1;
            }

            /* Handle */
            ::-webkit-scrollbar-thumb {
                background: #888;
            }

            /* Handle on hover */
            ::-webkit-scrollbar-thumb:hover {
                background: #555;
            }

            @media(max-width:1239px) {
                .newLogo {
                    position: relative;
                    left: 48px;
                }
            }
        </style>





    </head>

    <body>



        <!-- ======= Header ======= -->
        <header id="header">

            <div class="container">

                <div id="logo" class="pull-left">
                    <!-- Uncomment below if you prefer to use a text logo -->
                    <!-- <h1><a href="#intro">The<span>Event</span></a></h1>-->
                    <a href="#" class="scrollto newLogo"><img style="transform : scale(1.8);"
                            src="${pageContext.request.contextPath}/assets/img/newlogo.png" alt="" title=""></a>
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
                            <li class="buy-tickets"><a href="${pageContext.request.contextPath}/sign_up">Sign up</a>
                            </li>
                        </c:if>
                        <c:if test="${ connected ==	 true }">
                            <c:choose>
                                <c:when test="${ user.getStatus() == 3 }">
                                    <li class="buy-tickets"><a href="participant?id_p=${ user.getId() }"> My Profil </a>
                                    </li>
                                </c:when>
                                <c:when test="${ user.getStatus() == 2 }">
                                    <li class="buy-tickets"><a href="workshop?Rep=${ user.getId()}"> My Workshop </a>
                                    </li>
                                </c:when>
                            </c:choose>
                            <li class="buy-tickets"><a href="${pageContext.request.contextPath}/?logout">Log out</a>
                            </li>
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
                <h1 class="mb-4 pb-0">The Annual<br><span>ENSAK</span> FORUM <br> ENTERPRISE</h1>
                <c:if test="${ eventState == 0 }">
                    <h3 class="text-light mb-4 pb-0">Starts in <b id="blockCountdown" class="text-info"
                            style="display:none"> ${ msUntillStart }</b>, Be Ready! </h3>
                </c:if>

                <c:if test="${ eventState == 1 }">
                    <c:choose>
                        <c:when test="${ currentActivity == null }">
                            <h3 class="text-light mb-4 pb-0"> The Event has Started, Comeback tomorrow for Day2.</h3>
                        </c:when>
                        <c:otherwise>
                            <p class="m-0 p-0 "> OnGoing Activity : <b style="color: #F82249;">${
                                    currentActivity.getName() }</b></p>
                        </c:otherwise>
                    </c:choose>
                </c:if>
                <a href="https://www.youtube.com/watch?v=pFq6kQP4x-E&ab_channel=ENSAKEntreprises"
                    class="venobox play-btn mb-4" data-vbtype="video" data-autoplay="true"></a>
                <div style="display: inline;">
                    <a href="#about" class="about-btn scrollto">About The Event</a>
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
                            <p>Ensak Forum entreprise is an annual event organized by Ensa of Kenitra in collaboration
                                with companies from different cities of Morocco and even abroad. It is therefore the
                                opportunity for students to discover the world of business and its challenges. They also
                                have the possibility to discuss with professionals from the world of employment and can
                                also submit their CVs in order to obtain possible internships in one of these companies.
                            </p>
                        </div>
                        <div class="col-lg-3">
                            <h3>Where</h3>
                            <p>At Ibn Tofail University - ENSA Kenitra, Morocco</p>
                        </div>
                        <div class="col-lg-3">
                            <h3>When</h3>
                            <p>Monday and Tuesday<br>09-10 February</p>
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
                            <div class="col-lg-4 col-md-6">
                                <div class="speaker" data-aos="fade-up" data-aos-delay="100">
                                    <img src="${pageContext.request.contextPath}/assets/img/speakers/${speaker.getImage()}"
                                        alt="Speaker" class="img-fluid" style="width:100%;height:330px;">
                                    <div class="details">
                                        <h3><a href="">${ speaker.getName() } ${ speaker.getFname() }</a></h3>
                                        <p>${ speaker.getDescription() }</p>
                                        <div class="social">
                                            <a href=""><i class="fa fa-twitter"></i></a>
                                            <a href=""><i class="fa fa-facebook"></i></a>
                                            <a href=""><i class="fa fa-google-plus"></i></a>
                                            <a href=""><i class="fa fa-linkedin"></i></a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </c:forEach>
                    </div>
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
                                    <div class="col-md-2"><time>${ activity.getStartTime() } - ${ activity.getEndTime()
                                            }</time></div>
                                    <div class="col-md-10 d-flex justify-content-between">
                                        <div>
                                            <h4>${ activity.getName() }.<c:if test="${ activity.getSpeaker() != null }">
                                                    <span> ${ activity.getSpeaker().getName()} ${
                                                        activity.getSpeaker().getFname()}</span></c:if>
                                            </h4>
                                            <p>${ activity.getSpeaker().getDescription() }</p>
                                        </div>
                                        <c:if test="${ activity.getSpeaker() != null }">
                                            <div class="speaker">
                                                <img src="${pageContext.request.contextPath}/assets/img/speakers/${ activity.getSpeaker().getImage()}"
                                                    alt="">
                                            </div>
                                        </c:if>
                                    </div>
                                </div>
                            </c:forEach>
                        </div>
                        <!-- End Schdule Day 1 -->

                        <!-- Schdule Day 2 -->
                        <div role="tabpanel" class="col-lg-9  tab-pane fade" id="day-2">

                            <c:forEach items="${ activities2 }" var="activity">
                                <div class="row schedule-item">
                                    <div class="col-md-2"><time>${ activity.getStartTime() } - ${ activity.getEndTime()
                                            }</time></div>
                                    <div class="col-md-10 d-flex justify-content-between">
                                        <div>
                                            <h4>${ activity.getName() }.<c:if test="${ activity.getSpeaker() != null }">
                                                    <span> ${ activity.getSpeaker().getName()} ${
                                                        activity.getSpeaker().getFname()}</span></c:if>
                                            </h4>
                                            <p>${ activity.getSpeaker().getDescription() }</p>
                                        </div>
                                        <c:if test="${ activity.getSpeaker() != null }">
                                            <div class="speaker">
                                                <img src="${pageContext.request.contextPath}/assets/img/speakers/${ activity.getSpeaker().getImage()}"
                                                    alt="">
                                            </div>
                                        </c:if>
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
                    <a href="${pageContext.request.contextPath}/assets/img/gallery/11.jpg" class="venobox"
                        data-gall="gallery-carousel"><img
                            src="${pageContext.request.contextPath}/assets/img/gallery/11.jpg" alt=""></a>
                    <a href="${pageContext.request.contextPath}/assets/img/gallery/22.jpg" class="venobox"
                        data-gall="gallery-carousel"><img
                            src="${pageContext.request.contextPath}/assets/img/gallery/22.jpg" alt=""></a>
                    <a href="${pageContext.request.contextPath}/assets/img/gallery/33.jpg" class="venobox"
                        data-gall="gallery-carousel"><img
                            src="${pageContext.request.contextPath}/assets/img/gallery/33.jpg" alt=""></a>
                    <a href="${pageContext.request.contextPath}/assets/img/gallery/44.jpg" class="venobox"
                        data-gall="gallery-carousel"><img
                            src="${pageContext.request.contextPath}/assets/img/gallery/44.jpg" alt=""></a>
                    <a href="${pageContext.request.contextPath}/assets/img/gallery/55.jpg" class="venobox"
                        data-gall="gallery-carousel"><img
                            src="${pageContext.request.contextPath}/assets/img/gallery/55.jpg" alt=""></a>
                    <a href="${pageContext.request.contextPath}/assets/img/gallery/66.jpg" class="venobox"
                        data-gall="gallery-carousel"><img
                            src="${pageContext.request.contextPath}/assets/img/gallery/66.jpg" alt=""></a>
                    <a href="${pageContext.request.contextPath}/assets/img/gallery/77.jpg" class="venobox"
                        data-gall="gallery-carousel"><img
                            src="${pageContext.request.contextPath}/assets/img/gallery/77.jpg" alt=""></a>
                    <a href="${pageContext.request.contextPath}/assets/img/gallery/88.jpg" class="venobox"
                        data-gall="gallery-carousel"><img
                            src="${pageContext.request.contextPath}/assets/img/gallery/88.jpg" alt=""></a>
                </div>

            </section>
            <!-- End Gallery Section -->

            <!-- ======= Supporters Section ======= -->
            <section id="supporters" class="section-with-bg">

                <div class="container" data-aos="fade-up">
                    <div class="section-header">
                        <h2>Sponsors</h2>
                        <p>Here are the sponsors of this event</p>
                    </div>

                    <div class="row no-gutters supporters-wrap clearfix" data-aos="zoom-in" data-aos-delay="100">

                        <div class="col-lg-3 col-md-4 col-xs-6">
                            <div class="supporter-logo">
                                <img src="${pageContext.request.contextPath}/assets/img/supporters/11.png"
                                    class="img-fluid" alt="">
                            </div>
                        </div>

                        <div class="col-lg-3 col-md-4 col-xs-6">
                            <div class="supporter-logo">
                                <img src="${pageContext.request.contextPath}/assets/img/supporters/22.png"
                                    class="img-fluid" alt="">
                            </div>
                        </div>

                        <div class="col-lg-3 col-md-4 col-xs-6">
                            <div class="supporter-logo">
                                <img src="${pageContext.request.contextPath}/assets/img/supporters/33.png"
                                    class="img-fluid" alt="">
                            </div>
                        </div>

                        <div class="col-lg-3 col-md-4 col-xs-6">
                            <div class="supporter-logo">
                                <img src="${pageContext.request.contextPath}/assets/img/supporters/44.png"
                                    class="img-fluid" alt="">
                            </div>
                        </div>

                        <div class="col-lg-3 col-md-4 col-xs-6">
                            <div class="supporter-logo">
                                <img src="${pageContext.request.contextPath}/assets/img/supporters/55.png"
                                    class="img-fluid" alt="">
                            </div>
                        </div>

                        <div class="col-lg-3 col-md-4 col-xs-6">
                            <div class="supporter-logo">
                                <img src="${pageContext.request.contextPath}/assets/img/supporters/66.png"
                                    class="img-fluid" alt="">
                            </div>
                        </div>

                        <div class="col-lg-3 col-md-4 col-xs-6">
                            <div class="supporter-logo">
                                <img src="${pageContext.request.contextPath}/assets/img/supporters/77.png"
                                    class="img-fluid" alt="">
                            </div>
                        </div>

                        <div class="col-lg-3 col-md-4 col-xs-6">
                            <div class="supporter-logo">
                                <img src="${pageContext.request.contextPath}/assets/img/supporters/88.png"
                                    class="img-fluid" alt="">
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
                        <p>Answers to Frequently Asked Questions.</p>
                    </div>

                    <div class="row justify-content-center" data-aos="fade-up" data-aos-delay="100">
                        <div class="col-lg-9">
                            <ul id="faq-list">

                                <li>
                                    <a data-toggle="collapse" class="collapsed" href="#faq1">Is the event only open to
                                        ENSA students? <i class="fa fa-minus-circle"></i></a>
                                    <div id="faq1" class="collapse" data-parent="#faq-list">
                                        <p> Anyone studying in a University in Morocco or outside can attend this event,
                                            especially since it is digital. </p>
                                    </div>
                                </li>

                                <li>
                                    <a data-toggle="collapse" href="#faq2" class="collapsed">Is the Forum 100% digital?
                                        <i class="fa fa-minus-circle"></i></a>
                                    <div id="faq2" class="collapse" data-parent="#faq-list">
                                        <p>
                                            Well yes ! All the tools are in place to ensure you have a good experience
                                            during this Forum from home! </p>
                                    </div>
                                </li>

                                <li>
                                    <a data-toggle="collapse" href="#faq3" class="collapsed">How to contact the
                                        companies? <i class="fa fa-minus-circle"></i></a>
                                    <div id="faq3" class="collapse" data-parent="#faq-list">
                                        <p>
                                            Once registered on the platform, You have access to all the stands as well
                                            as the possibility to contact them and even send your CVs. </p>
                                    </div>
                                </li>

                                <li>
                                    <a data-toggle="collapse" href="#faq4" class="collapsed">Will we be able to access
                                        the platform even after the forum in order to always contact companies? <i
                                            class="fa fa-minus-circle"></i></a>
                                    <div id="faq4" class="collapse" data-parent="#faq-list">
                                        <p>
                                            The Forum will last 2 days, but after this period you can always go to
                                            consult to see the responses of companies to your various requests. </p>
                                    </div>
                                </li>



                                <li>
                                    <a data-toggle="collapse" href="#faq6" class="collapsed">Will the data required for
                                        registration be kept confidential?<i class="fa fa-minus-circle"></i></a>
                                    <div id="faq6" class="collapse" data-parent="#faq-list">
                                        <p>
                                            Absolutely! You have the possibility to update your profile in order to
                                            mention the information that you wish to make visible to recruiters or
                                            company representatives. Everything is configurable with our site. </p>
                                    </div>
                                </li>

                                <li>
                                    <a data-toggle="collapse" href="#faq5" class="collapsed">Who to contact for more
                                        information?<i class="fa fa-minus-circle"></i></a>
                                    <div id="faq5" class="collapse" data-parent="#faq-list">
                                        <p>
                                            In order to obtain more information, you can contact us directly in the
                                            contact section available at the bottom of the home page. </p>
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
                        <p>Joins us for more informations</p>
                    </div>

                    <div class="row contact-info">

                        <div class="col-md-4">
                            <div class="contact-address">
                                <i class="ion-ios-location-outline"></i>
                                <h3>Address</h3>
                                <address>campus universitaire, B.P 241, K�nitra - 14 000 - Maroc</address>
                            </div>
                        </div>

                        <div class="col-md-4">
                            <div class="contact-phone">
                                <i class="ion-ios-telephone-outline"></i>
                                <h3>Phone Number</h3>
                                <p><a href="tel:(+212) 5 37 37 67 65">(+212) 5 37 37 67 65 / (+212) 5 37 32 94 48 | Fax
                                        : (+212) 5 37 37 40 52</a></p>
                            </div>
                        </div>

                        <div class="col-md-4">
                            <div class="contact-email">
                                <i class="ion-ios-email-outline"></i>
                                <h3>Email</h3>
                                <p><a href="mailto:ensa@contact.com">ensa@contact.com</a></p>
                            </div>
                        </div>

                    </div>

                    <div class="form">
                        <form action="#" method="post" id="mailform">
                            <div class="form-row">
                                <div class="form-group col-md-6">
                                    <input type="text" name="name" class="form-control shadow-sm rounded-sm border-0"
                                        id="name" placeholder="Your Name" data-rule="minlen:4"
                                        data-msg="Please enter at least 4 chars" required />
                                    <div class="validate"></div>
                                </div>
                                <div class="form-group col-md-6">
                                    <input type="email" class="form-control shadow-sm rounded-sm border-0" name="email"
                                        id="email" placeholder="Your Email" data-rule="email"
                                        data-msg="Please enter a valid email" required />
                                    <div class="validate"></div>
                                </div>
                            </div>
                            <div class="form-group">
                                <input type="text" class="form-control shadow-sm rounded-sm border-0" name="subject"
                                    id="subject" placeholder="Subject" autocomplete="off" data-rule="minlen:4"
                                    data-msg="Please enter at least 8 chars of subject" required />
                                <div class="validate"></div>
                            </div>
                            <div class="form-group">
                                <textarea class="form-control shadow-sm rounded-sm border-0" name="message" rows="5"
                                    data-rule="required" data-msg="Please write something for us" placeholder="Message"
                                    required></textarea>
                                <div class="validate"></div>
                            </div>

                            <div class="text-center"><button type="submit" class="btn btn-primary btn-sm shadow"
                                    name="sendmail">Send Message</button></div>
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
                    &copy; Copyright <strong>EnsakForum</strong>. All Rights Reserved
                </div>
                <div class="credits">

                    Designed in <a href="https://bootstrapmade.com/">Morocco</a>
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

        <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>

        <c:if test="${ sessionScope.firstLog == true}">
            <script>
                swal("Logged in", "Welcome back ${user.getFullName()} !", "success");
            </script>
            <c:set var="firstLog" value="${false}" scope="session" />
        </c:if>


        <!-- Template Main JS File -->
        <script src="${pageContext.request.contextPath}/assets/js/main.js"></script>

        <script>


            $(document).on("submit", "#mailform", function (event) {

                var $form = $(this);
                setTimeout(function () {
                    swal("Done!", "Message Sent successfully ! ", "success");
                }, 1500);

                $.post($form.attr("action"), $form.serialize(), function (data) {
                    /* if(data=="good"){
                        swal ( "Nice !" ,  "Message Sent successfully ! " ,  "success" );
                    }else{
                        swal ( "Oops" ,  "An error just occured ! " ,  "error" );
                    } */

                });

                // $("#mailform").reset();

                event.preventDefault(); // Important! Prevents submitting the form.
            });



            $(".nameNav").click(function (e) {
                e.preventDefault();
            });
        </script>

        <script>
            function dismissAlert() {
                $("#alert").fadeOut(500);
            }
        </script>

    </body>

    </html>