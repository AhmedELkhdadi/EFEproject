<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>
    <!DOCTYPE html>
    <html lang="en">

    <head>
        <meta charset="utf-8">
        <meta content="width=device-width, initial-scale=1.0" name="viewport">

        <title>ENSAK FORUM</title>
        <meta content="" name="description">
        <meta content="" name="keywords">

        <!-- Favicons -->
        <link rel="shortcut icon" type="image/x-icon"
            href="${pageContext.request.contextPath}/DashboardAssets/img/fav.png">
        <!-- Google Fonts -->
        <link
            href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,700,700i|Raleway:300,400,500,700,800"
            rel="stylesheet">

        <!-- Vendor CSS Files -->
        <link href="assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
        <link href="assets/vendor/venobox/venobox.css" rel="stylesheet">
        <link href="assets/vendor/font-awesome/css/font-awesome.min.css" rel="stylesheet">
        <link href="assets/vendor/owl.carousel/assets/owl.carousel.min.css" rel="stylesheet">
        <link href="assets/vendor/aos/aos.css" rel="stylesheet">

        <!-- Font Awesome -->
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.2/css/all.css">
        <!-- Google Fonts -->
        <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700&display=swap">
        <!-- Bootstrap core CSS -->
        <link href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.5.0/css/bootstrap.min.css"
            rel="stylesheet">
        <!-- Material Design Bootstrap -->
        <link href="https://cdnjs.cloudflare.com/ajax/libs/mdbootstrap/4.19.1/css/mdb.min.css" rel="stylesheet">

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
                height: 100vh;
            }

            h1,
            h2,
            h3,
            h4,
            h5,
            h6 {
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
        <header id="header" class="header-scrolled shadow">
            <div class="container">

                <div id="logo" class="pull-left">
                    <a href="index" class="scrollto newLogo"><img style="transform : scale(1.5);"
                            src="${pageContext.request.contextPath}/assets/img/newlogo.png" alt=""></a>
                </div>

                <nav id="nav-menu-container">
                    <ul class="nav-menu">

                        <li class="buy-tickets"><a href="${pageContext.request.contextPath}/sign_up">Sign up</a></li>
                        <li class="buy-tickets"><a onclick="goBack()">Go Back</a></li>
                    </ul>
                </nav>
                <!-- #nav-menu-container -->
            </div>
        </header>
        <!-- End Header -->

        <div style="background-color: #F8F9FA;">
            <br> <br>
            <main id="main" class="container" style="min-height:66.3vh;">

                <div class="row align-content-center justify-content-center" style="margin-top: 5%;">
                    <div class="col-lg-7">

                        <div
                            class="d-flex align-items-center p-3 my-3 text-white bg-primary rounded shadow justify-content-center">
                            <div class="lh-1 text-center">
                                <h1 align="center" class="h6 mb-0 text-white lh-1">ENSAK FORUM ENTERPRISE</h1>
                                <c:choose>
                                    <c:when test="${ eventState == 0 }">
                                        <h4 class="text-light"> Event starts in <b id="blockCountdown"
                                                class="text-light" style="display:none"> ${ msUntillStart }</b> </h4>
                                    </c:when>
                                    <c:when test="${ eventState == 1 }">
                                        <c:choose>
                                            <c:when test="${ currentActivity == null }">
                                                <small> <b>Event Ongoing, Comeback tomorrow </b> </small>
                                            </c:when>
                                            <c:otherwise>
                                                <p class="m-0 p-0 "> OnGoing Activity: <b class="text-warning">${
                                                        currentActivity.getName() }</b></p>
                                                <c:if test="${ currentActivity.getSpeaker() != null }">
                                                    <p class="m-0 p-0"><span class="text-warning"><i>${
                                                                currentActivity.getSpeaker().getName()}
                                                                ${currentActivity.getSpeaker().getFname()}</i></span>,
                                                        <span
                                                            class="text-light">${currentActivity.getSpeaker().getDescription()}</span>
                                                        now speaking:
                                                    <div class="w-100 text-center m-0 p-0">Conference link: <a
                                                            href="https://${currentActivity.getMeetLink()}"
                                                            target="_blank"
                                                            class="text-white m-0 p-0"><b>${currentActivity.getMeetLink()}</b></a>
                                                    </div>
                                                    </p>
                                                </c:if>
                                            </c:otherwise>
                                        </c:choose>
                                    </c:when>
                                    <c:when test="${ eventState == 2 }">
                                        <small> <b>This year's ENSAK FORUM ENTERPRISE is over.</b> </small>
                                    </c:when>
                                </c:choose>
                            </div>

                        </div>

                        <div class="row p-0">
                            <div class="col-xl-12 col-lg-12 col-md-12 mb-4">
                                <div class="card">
                                    <div class="card-body mx-4 mt-4">
                                        <!--Header-->
                                        <div class="text-center">
                                            <h3 class="dark-grey-text mb-5">
                                                <strong> LOG IN </strong>
                                            </h3>
                                        </div>
                                        <!--Header-->

                                        <!--Body  method="post" action="login"-->
                                        <form id="loginform" action="login" method="post">
                                            <div class="md-form">
                                                <i class="fas fa-envelope prefix grey-text"></i>
                                                <input type="text" name="loginL" id="Form-email4" class="form-control"
                                                    required>
                                                <label for="Form-email4">User Name</label>
                                            </div>

                                            <div class="md-form pb-0">
                                                <i class="fas fa-lock prefix grey-text"></i>
                                                <input type="password" name="passwordL" id="Form-pass4"
                                                    class="form-control" required>
                                                <label for="Form-pass4">Password</label>
                                                <div class="text-danger mt-2">
                                                    <c:if test="${ con != null }">
                                                        <c:out value="${ con }" />
                                                    </c:if>
                                                </div>
                                                <!-- <p class="font-small grey-text d-flex justify-content-end">Forgot
                                            <a href="#" class="dark-grey-text font-weight-bold ml-1"> Password?</a>
                                        </p> --><br>
                                            </div>

                                            <div class="text-center mb-4">
                                                <button type="submit" name="authentify"
                                                    class="btn btn-primary btn-block z-depth-2">Log in</button>
                                            </div>
                                            <p class="font-small grey-text d-flex justify-content-center">Don't have an
                                                account?
                                                <a href="${pageContext.request.contextPath}/sign_up"
                                                    class="dark-grey-text font-weight-bold ml-1"> Sign up</a>
                                            </p>
                                        </form>
                                    </div>

                                </div>
                            </div>

                        </div>

                        <div class="row my-0">
                            <div class="col-12"> <br>
                                <p style="opacity : 0.7" class="text-center"> &copy; Copyright <strong>The ENSAK FORUM
                                        2021</strong>. All Rights Reserved </p>
                            </div>
                        </div>
                    </div>
                </div>
            </main>
            <br> <br>
        </div>

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
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/js/bootstrap.bundle.min.js"
            integrity="sha384-ygbV9kiqUc6oa4msXn9868pTtWMgiQaeYH7/t7LECLbyPA2x65Kgf80OJFdroafW"
            crossorigin="anonymous"></script>



        <!-- JQuery -->
        <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
        <!-- Bootstrap tooltips -->
        <script type="text/javascript"
            src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.4/umd/popper.min.js"></script>
        <!-- Bootstrap core JavaScript -->
        <script type="text/javascript"
            src="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.5.0/js/bootstrap.min.js"></script>
        <!-- MDB core JavaScript -->
        <script type="text/javascript"
            src="https://cdnjs.cloudflare.com/ajax/libs/mdbootstrap/4.19.1/js/mdb.min.js"></script>


        <!-- Template Main JS File -->
        <script src="assets/js/main2.js"></script>

        <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>

        <script>


            $(document).on("submit", "#loginform", function (event) {

                var $form = $(this);

                $.post($form.attr("action"), $form.serialize(), function (data) {
                    console.log(data);
                    if (data == "good") {
                        window.location.href = "${pageContext.request.contextPath}/";
                    } else {
                        swal("Oops", "Login or Password Incorrect!", "error");
                    }

                });

                event.preventDefault(); // Important! Prevents submitting the form.
            });


            function goBack() {
                window.history.back();
            }
        </script>
    </body>

    </html>