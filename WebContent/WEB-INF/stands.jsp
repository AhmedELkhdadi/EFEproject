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
            height: 100vh;
        }
        
h1,h2,h3,h4,h5,h6 {
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
    </style>
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

                    <li class="buy-tickets" style="cursor:pointer;"><a onclick="goBack()">Go Back</a></li>
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
                                <a href="${pageContext.request.contextPath }/workshop?Rep=${rep.getId()}"><img src="${pageContext.request.contextPath}/assets/img/EnterpriseBanners/${rep.getEntreprise().getBannerImage()}" alt="Stand 1" class="img-fluid" style="height:90px; width:100%"></a>
                            </div>
                            <div style="margin-top:-15px; height : 220px; overflow-y: scroll; border-bottom: 1px solid #F1F1F1; padding:10px;">
                            <h3><a href="${pageContext.request.contextPath }/workshop?Rep=${rep.getId()}">${ rep.getEntreprise().getName() }</a></h3>
                            <h3 class=""><small>Representative: <strong>${ rep.getName()} ${ rep.getFname()} </strong></small></h3>
                            <p>${ rep.getEntreprise().getDescription() }</p>
                            </div>
                            <c:if test="${ eventState == 1 }">
	                        <c:if test="${ currentActivity.getName() == 'Stands and Workshops' }">
                            <div class="w-100 pb-2 text-center pt-3" style="height:30px">
                            <c:if test="${  user.getStatus() != 2 && rep.getEntreprise().getMeetLink() != null  }">
                            	
				          		<strong class="text-info">
				            	<a href="https://${ rep.getEntreprise().getMeetLink() }" target="_blank">${ rep.getEntreprise().getMeetLink() }</a>
				            	</strong>
				            	
							</c:if>
							</div>
							</c:if>
							</c:if>
							
							<div style="display : flex; align-items:center; justify-content: center; margin : 20px;">
							<a class="btn btn-primary btn-sm shadow text-white" href="${pageContext.request.contextPath }/workshop?Rep=${rep.getId()}">More Details</a></div>
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
	<script>
    function goBack(){
    	window.history.back();
    }
    </script>
</body>

</html>