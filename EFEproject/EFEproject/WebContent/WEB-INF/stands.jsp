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
    <link href="${pageContext.request.contextPath}/assets/vendor/owl.carousel/${pageContext.request.contextPath}/assets/owl.carousel.min.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/assets/vendor/aos/aos.css" rel="stylesheet">

    <!-- Template Main CSS File -->
    <link href="${pageContext.request.contextPath}/assets/css/style.css" rel="stylesheet">

</head>

<body>

    <!-- ======= Header ======= -->
    <header id="header" class="header-scrolled shadow">
        <div class="container">

            <div id="logo" class="pull-left">
                <a href="${pageContext.request.contextPath }/" class="scrollto"><img src="${pageContext.request.contextPath}/assets/img/logo.png" alt="logo" title=""></a>
            </div>

            <nav id="nav-menu-container">
                <ul class="nav-menu">

                    <li class="buy-tickets"><a href="${pageContext.request.contextPath }/">Go Back</a></li>
                </ul>
            </nav>
            <!-- #nav-menu-container -->
        </div>
    </header>
    <!-- End Header -->

    <br> <br>



    <main id="main" class="bg-light">
        <div class="container ">
            <div class="row">
                <div class="col-12">
                    <br>
                    <div class="d-flex align-items-center p-3 my-3 text-white bg-primary rounded shadow justify-content-center">
                        <div class="lh-1">
                           <h1 align="center" class="h6 mb-0 text-white lh-1">ENSAK FORUM ENTERPRISE</h1>
                            <c:choose>
	                            <c:when test="${ eventState == 0 }">
	                            <h4 class="text-light"> Event starts in <b id="blockCountdown" class="text-dark" style="display:none"> ${ msUntillStart }</b> </h4>                            	
	                            </c:when>
	                            <c:when test="${ eventState == 1 }">
	                            	<c:choose>
	                            		<c:when test="${ currentActivity == null }">
	                            			<small> <b>Event Ongoing, Comeback tomorrow </b> </small>  
	                            		</c:when>
	                            		<c:otherwise>
	                            			<p class="m-0 p-0 "> OnGoing Activity: <b class="text-warning" >${ currentActivity.getName() }</b></p> 
	                            			<c:if test="${ currentActivity.getSpeaker() != null }">
	                            			<p class ="m-0 p-0"><span class="text-warning"><i>${ currentActivity.getSpeaker().getName()} ${currentActivity.getSpeaker().getFname()}</i></span>, <span class="text-light">${currentActivity.getSpeaker().getDescription()}</span> now speaking: 
	                            			<div class="w-100 text-center m-0 p-0">Conference link: <a href="https://${currentActivity.getMeetLink()}" target="_blank" class="text-white m-0 p-0"><b>${currentActivity.getMeetLink()}</b></a></div>
	                            			</p>
	                            			</c:if>
	                            		</c:otherwise>
	                            	</c:choose>                          	
	                            </c:when>
	                            <c:when test="${ eventState == 2 }">
	                            <small> <b>This year's ENSAK FORUM ENTERPRISE is over, see you next year</b> </small>  
	                            </c:when>
                            </c:choose>
                        </div>

                    </div>

                </div>
            </div>
        </div>

        <section style="margin-top: -50px;" id="hotels" class="section-with-bg">

            <div class="container" data-aos="fade-up">
                <div class="section-header">
                    <h2 style="font-size: 25px;">Workshops</h2>
                    <p style="font-size: 15px;">Here are all the worshops</p>
                    <p>${ errorMessage }</p>
                </div>

                <div style="margin-top: -20px;" class="row" data-aos="fade-up" data-aos-delay="100">
                <c:if test="${ appReps.size() == 0 }"><p>No Stands Available At The Moment</p></c:if>
					<c:forEach items="${ appReps }" var="rep">
                    <div class="col-lg-4 col-md-6">
                        <div class="hotel shadow">
                            <div class="hotel-img">
                                <a href="${pageContext.request.contextPath }/workshop?Rep=${rep.getId()}"><img src="${pageContext.request.contextPath}/assets/img/EnterpriseBanners/${rep.getEntreprise().getBannerImage()}" alt="Stand 1" class="img-fluid"></a>
                            </div>
                            <h3><a href="${pageContext.request.contextPath }/workshop?Rep=${rep.getId()}">${ rep.getEntreprise().getName() }</a></h3>
                            <h3 class=""><small>Representative: <strong>${ rep.getName()} ${ rep.getFname()} </strong></small></h3>
                            <p>${ rep.getEntreprise().getDescription() }</p>
                            <c:if test="${ eventState == 1 }">
	                        <c:if test="${ currentActivity.getName() == 'Stands and Workshops' }">
                            <c:if test="${  user.getStatus() != 2 && rep.getEntreprise().getMeetLink() != null  }">
                            	<div class="w-100 pb-2 text-center">
				          		<strong class="text-info">
				            	<a href="https://${ rep.getEntreprise().getMeetLink() }" target="_blank">${ rep.getEntreprise().getMeetLink() }</a>
				            	</strong>
				            	</div>
							</c:if>
							</c:if>
							</c:if>
                        </div>
                    </div>
					</c:forEach>
                </div>

            </div>

        </section>

    </main>
    <!-- End #main -->
    <footer id="footer">
        <div class="container">
            <div class="copyright">
                &copy; Copyright <strong>TheEvent</strong>. All Rights Reserved
            </div>
            <div class="credits">
                Designed by <a href="https://bootstrapmade.com/">BootstrapMade</a>
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
    <script src="${pageContext.request.contextPath}/assets/js/main2.js"></script>

</body>

</html>