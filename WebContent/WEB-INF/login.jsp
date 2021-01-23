<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta content="width=device-width, initial-scale=1.0" name="viewport">

    <title>ENSAK FORUM</title>
    <meta content="" name="description">
    <meta content="" name="keywords">

	<!-- Favicons -->
    <link href="${pageContext.request.contextPath}/assets/img/favicon.png" rel="icon">
    <!-- Google Fonts -->
    <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,700,700i|Raleway:300,400,500,700,800" rel="stylesheet">

    <!-- Vendor CSS Files -->
    <link href="assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <link href="assets/vendor/venobox/venobox.css" rel="stylesheet">
    <link href="assets/vendor/font-awesome/css/font-awesome.min.css" rel="stylesheet">
    <link href="assets/vendor/owl.carousel/assets/owl.carousel.min.css" rel="stylesheet">
    <link href="assets/vendor/aos/aos.css" rel="stylesheet">

    <!-- Template Main CSS File -->
    <link href="assets/css/style.css" rel="stylesheet">
    <style>
        body {
            font-family: "Open Sans", sans-serif;
            height: 100vh;
        }
    </style>
</head>

<body>



    <!-- ======= Header ======= -->
    <header id="header" class="header-scrolled shadow">
        <div class="container">

            <div id="logo" class="pull-left">
                <a href="index" class="scrollto"><img src="assets/img/logo.png" alt="" title=""></a>
            </div>

            <nav id="nav-menu-container">
                <ul class="nav-menu">

					<li class="buy-tickets"><a href="${pageContext.request.contextPath}/sign_up">Sign up</a></li>
                    <li class="buy-tickets"><a href="index">Go Back</a></li>
                </ul>
            </nav>
            <!-- #nav-menu-container -->
        </div>
    </header>
    <!-- End Header -->

    <div class="bg-light">
        <br> <br> <br>
        <main id="main" class="container" style="min-height:66.3vh;">

            <div class="row align-content-center justify-content-center" style="margin-top: 5%;">
                <div class="col-lg-7">

                    <div class="d-flex align-items-center p-3 my-3 text-white bg-primary rounded shadow justify-content-center">
                        <div class="lh-1">
                             <h1 align="center" class="h6 mb-0 text-white lh-1">ENSAK FORUM ENTERPRISE ${ pathhh }</h1>
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
                    <div class="row p-0">
                        <div class="col-xl-12 col-lg-12 col-md-12 mb-4">
                            <div class="card shadow h-100 py-2" style="border-top : 4px solid #1F6DFB">
                                <div class="card-body">
                                    <div class="row no-gutters align-items-center">

                                        <div class="col mr-2 justify-content-center">
                                            <div align="center" style="margin:auto" class="text-xs font-weight-bold text-uppercase mb-1">LOGIN</div>
                                            <br>
                                            <div class="h6 mb-0  text-gray-800">
                                                <form method="post" action="login" class="row g-3 needs-validation">
                                                    <div class="col-md-12">
                                                        <input type="text" class="form-control"  placeholder="Username" name="loginL" required>
                                                    </div>
                                                    <div class="col-md-12">
                                                        <br>
                                                        <input type="password" class="form-control" placeholder="Password" name="passwordL" required>
                                                        <div class="text-danger mt-2">
                                                            <c:if test="${ con != null }"><c:out value="${ con }"/></c:if>
                                                        </div>
                                                    </div>
                                                    <div class="col-12">
                                                        <br>
                                                        <button style="width: 100%;" class="btn btn-primary" type="submit" name="authentify">Login</button>
                                                    </div>
                                                </form>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>

                    </div>

                </div>
            </div>
        </main>
        <br> <br>
    </div>


    <!-- End #main -->
    <footer id="footer">
        <div class="container">
            <div class="copyright">
                &copy; Copyright <strong>TheEvent</strong>. All Rights Reserved
            </div>
            <div class="credits">
                <!--
            All the links in the footer should remain intact.
            You can delete the links only if you purchased the pro version.
            Licensing information: https://bootstrapmade.com/license/
            Purchase the pro version with working PHP/AJAX contact form: https://bootstrapmade.com/buy/?theme=TheEvent
          -->
                Designed by <a href="https://bootstrapmade.com/">BootstrapMade</a>
            </div>
        </div>
    </footer>
    <!-- End  Footer -->

    <a href="#" class="back-to-top"><i class="fa fa-angle-up"></i></a>

    <script src="https://kit.fontawesome.com/f36a65bf41.js"></script>

    <!-- Vendor JS Files -->
    <script src="${pageContext.request.contextPath}/assets/vendor/jquery/jquery.min.js"></script>
    <script src="${pageContext.request.contextPath}/assets/js/eventCountDown.js"></script>
    <script src="${pageContext.request.contextPath}/assets/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
    <script src="${pageContext.request.contextPath}/assets/vendor/jquery.easing/jquery.easing.min.js"></script>
    <script src="${pageContext.request.contextPath}/assets/vendor/php-email-form/validate.js"></script>
    <script src="${pageContext.request.contextPath}/assets/vendor/venobox/venobox.min.js"></script>
    <script src="${pageContext.request.contextPath}/assets/vendor/owl.carousel/owl.carousel.min.js"></script>
    <script src="${pageContext.request.contextPath}/assets/vendor/superfish/superfish.min.js"></script>
    <script src="${pageContext.request.contextPath}/assets/vendor/hoverIntent/hoverIntent.js"></script>
    <script src="${pageContext.request.contextPath}/assets/vendor/aos/aos.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-ygbV9kiqUc6oa4msXn9868pTtWMgiQaeYH7/t7LECLbyPA2x65Kgf80OJFdroafW" crossorigin="anonymous"></script>

    <!-- Template Main JS File -->
    <script src="assets/js/main2.js"></script>
</body>

</html>