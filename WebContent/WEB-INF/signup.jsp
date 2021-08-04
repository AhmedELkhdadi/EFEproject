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
        <link href="${pageContext.request.contextPath}/assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
        <link href="${pageContext.request.contextPath}/assets/vendor/venobox/venobox.css" rel="stylesheet">
        <link href="${pageContext.request.contextPath}/assets/vendor/font-awesome/css/font-awesome.min.css"
            rel="stylesheet">
        <link
            href="${pageContext.request.contextPath}/assets/vendor/owl.carousel/${pageContext.request.contextPath}/assets/owl.carousel.min.css"
            rel="stylesheet">
        <link href="${pageContext.request.contextPath}/assets/vendor/aos/aos.css" rel="stylesheet">


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

            .file {
                position: relative;
                display: inline-block;
                cursor: pointer;
                height: 2.5rem;
            }

            .file input {
                min-width: 14rem;
                margin: 0;
                filter: alpha(opacity=0);
                opacity: 0;
            }

            .file-custom {
                position: absolute;
                top: 0;
                right: 0;
                left: 0;
                z-index: 5;
                height: 2.5rem;
                padding: .5rem 1rem;
                line-height: 1.5;
                color: #555;
                background-color: #fff;
                border: .075rem solid #ddd;
                border-radius: .25rem;
                box-shadow: inset 0 .2rem .4rem rgba(0, 0, 0, .05);
                -webkit-user-select: none;
                -moz-user-select: none;
                -ms-user-select: none;
                user-select: none;
            }

            .file-custom:after {
                content: "Choose file...";
            }

            .file-custom:before {
                position: absolute;
                top: -.075rem;
                right: -.075rem;
                bottom: -.075rem;
                z-index: 6;
                display: block;
                content: "Browse";
                height: 2.5rem;
                padding: .5rem 1rem;
                line-height: 1.5;
                color: #555;
                background-color: #eee;
                border: .075rem solid #ddd;
                border-radius: 0 .25rem .25rem 0;
            }

            /* Focus */

            .file input:focus~.file-custom {
                box-shadow: 0 0 0 .075rem #fff, 0 0 0 .2rem #0074d9;
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

        <header id="header" class="header-scrolled shadow">
            <div class="container">

                <div id="logo" class="pull-left">
                    <a href="${pageContext.request.contextPath}/" class="scrollto newLogo"><img
                            style="transform : scale(1.5);"
                            src="${pageContext.request.contextPath}/assets/img/newlogo.png" alt=""></a>
                </div>

                <nav id="nav-menu-container">
                    <ul class="nav-menu">
                        <li class="buy-tickets"><a href="${pageContext.request.contextPath}/login">Log in</a></li>
                        <li class="buy-tickets"><a onclick="goBack()">Go Back</a></li>
                    </ul>
                </nav>
            </div>
        </header>
        <!-- End Header -->
        <div style="background-color: #F8F9FA;">
            <br> <br> <br>
            <main id="main" class="container">
                <div class="row align-content-center justify-content-center" style="">
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
                                                            href="${currentActivity.getMeetLink()}" target="_blank"
                                                            class="text-white m-0 p-0"><b>${currentActivity.getMeetLink()}</b></a>
                                                    </div>
                                                    </p>
                                                </c:if>
                                            </c:otherwise>
                                        </c:choose>
                                    </c:when>
                                    <c:when test="${ eventState == 2 }">
                                        <small> <b>This year's ENSAK FORUM ENTERPRISE is over, see you next year</b>
                                        </small>
                                    </c:when>
                                </c:choose>
                            </div>

                        </div>

                        <div class="row p-0">
                            <div class="col-xl-12 col-lg-12 col-md-12 mb-4">

                                <ul class="nav nav-pills nav-justified nav-just mb-3" id="pills-tab" role="tablist">
                                    <li class="nav-item" role="presentation">
                                        <a class="nav-link active" id="pills-home-tab" data-bs-toggle="pill"
                                            href="#pills-home" role="tab" aria-controls="pills-home"
                                            aria-selected="true">Participant</a>
                                    </li>
                                    <li class="nav-item" role="presentation">
                                        <a class="nav-link" id="pills-profile-tab" data-bs-toggle="pill"
                                            href="#pills-profile" role="tab" aria-controls="pills-profile"
                                            aria-selected="false">Representative</a>
                                    </li>

                                </ul>
                                <div class="tab-content" id="pills-tabContent">
                                    <div class="tab-pane fade show active" id="pills-home" role="tabpanel"
                                        aria-labelledby="pills-home-tab">

                                        <div class="card">
                                            <div class="card-body mx-4 mt-3">
                                                <!--Header-->
                                                <div class="text-center">
                                                    <h3 class="dark-grey-text mb-0">
                                                        <strong> SIGN UP </strong>
                                                    </h3>
                                                </div>
                                                <!--Header-->

                                                <!--Body-->
                                                <form method="post" action="#" id="signupForm" autocomplete="off">
                                                    <div class="md-form">
                                                        <input type="text" name="loginP" id="Form-email4"
                                                            class="form-control loginsignup" required>
                                                        <label for="Form-email4">User Name</label>
                                                        <span class="loginAvailability" hidden=true
                                                            style="margin-bottom: -10px;margin-left:7px;"></span>
                                                    </div>

                                                    <div class="md-form">

                                                        <input type="text" name="nameP" id="Form-email4"
                                                            class="form-control" required>
                                                        <label for="Form-email4">Name</label>
                                                    </div>

                                                    <div class="md-form">

                                                        <input type="text" name="fnameP" id="Form-email4"
                                                            class="form-control" required>
                                                        <label for="Form-email4">Family Name</label>
                                                    </div>

                                                    <div class="md-form">

                                                        <input type="text" name="emailP" id="Form-email4"
                                                            class="form-control" required>
                                                        <label for="Form-email4">Email</label>
                                                    </div>

                                                    <div class="md-form">

                                                        <input type="text" name="telP" id="Form-email4"
                                                            class="form-control" required>
                                                        <label for="Form-email4">Phone Number</label>
                                                    </div>

                                                    <div class="md-form">

                                                        <input type="number" name="age" id="Form-email4"
                                                            class="form-control" required>
                                                        <label for="Form-email4">Age</label>
                                                    </div>

                                                    <div class="md-form">
                                                        <input type="text" name="SF" id="Form-email4"
                                                            class="form-control" required>
                                                        <label for="Form-email4">Study Field</label>
                                                    </div>
                                                    <div class="md-form pb-0">
                                                        <input type="password" name="passwordP" id="Form-pass4"
                                                            class="form-control" minlength="6" required>
                                                        <label for="Form-pass4">Password</label>
                                                    </div>
                                                    <select name="institution" class="form-control" required>
                                                        <option value="" disabled selected>Institution
                                                        </option>
                                                        <c:forEach items="${institutions}" var="inst">
                                                            <option value="${inst.getName()}">${inst.getName()}
                                                            </option>
                                                        </c:forEach>
                                                    </select>

                                                    <br>
                                                    <select name="level" class="form-control" required>
                                                        <option value="" disabled selected>Study level
                                                        </option>
                                                        <c:forEach items="${levels}" var="level">
                                                            <option value="${level.getName()}">
                                                                ${level.getName()}</option>
                                                        </c:forEach>
                                                    </select>
                                                    <br>
                                                    <label style="width : 100%;" class="file">
                                                        <input type="file" id="" name="Pimage" required
                                                            aria-label="File browser example">
                                                        <span class="file-custom"></span>
                                                    </label>
                                                    <span style="color:gray;">Provide a formal picture of yourself
                                                        alone, and with a good quality<br>
                                                        (<strong>Your account wont be approvedif the image is not
                                                            accepted</strong>)
                                                    </span>
                                                    <div class="col-md-12 d-flex justify-content-around mt-4 ">
                                                        <label class="radio-inline  pl-2"><input type="radio" id="male"
                                                                name="sexe" value="M"> Male</label>
                                                        <label class="radio-inline  pl-2"><input type="radio"
                                                                id="female" name="sexe" value="F"> Female</label>
                                                    </div>

                                                    <br>
                                                    <div class="text-center mb-4">
                                                        <button type="submit" name="signUp"
                                                            class="btn btn-primary btn-block z-depth-2">Sign up</button>
                                                        <c:if test="${ applyRes != null }">
                                                            <c:out
                                                                value="${applyRes ? 'Account added' : 'Error occured' }" />
                                                        </c:if>
                                                    </div>
                                                    <p class="font-small grey-text d-flex justify-content-center">
                                                        Already have an account?
                                                        <a href="#" class="dark-grey-text font-weight-bold ml-1">Log
                                                            in</a>
                                                    </p>
                                                </form>
                                            </div>

                                        </div>

                                    </div>
                                    <div class="tab-pane fade" id="pills-profile" role="tabpanel"
                                        aria-labelledby="pills-profile-tab">

                                        <div class="card">
                                            <div class="card-body mx-4 mt-3">
                                                <!--Header-->
                                                <div class="text-center">
                                                    <h3 class="dark-grey-text mb-0">
                                                        <strong>Apply to represent your enterprise</strong>
                                                    </h3>
                                                </div>
                                                <!--Header-->

                                                <!--Header-->
                                                <div class="text-center">
                                                    <h5 class="dark-grey-text mt-2 mb-0">
                                                        <strong> Personnal Informations </strong>
                                                    </h5>
                                                </div>
                                                <!--Header-->

                                                <!--Body-->
                                                <form method='POST' action='#' autocomplete="off">
                                                    <div class="md-form">
                                                        <input type="text" name="loginR" id="Form-email4"
                                                            class="form-control loginsignup" required>
                                                        <label for="Form-email4">User Name</label>
                                                        <span class="loginAvailability" hidden=true
                                                            style="margin-left:7px;"></span>
                                                    </div>

                                                    <div class="md-form">

                                                        <input type="text" name="nameR" id="Form-email4"
                                                            class="form-control" required>
                                                        <label for="Form-email4">Name</label>
                                                    </div>

                                                    <div class="md-form">

                                                        <input type="text" name="fnameR" id="Form-email4"
                                                            class="form-control" required>
                                                        <label for="Form-email4">Family Name</label>
                                                    </div>

                                                    <div class="md-form">

                                                        <input type="text" name="emailR" id="Form-email4"
                                                            class="form-control" required>
                                                        <label for="Form-email4">Email</label>
                                                    </div>

                                                    <div class="md-form">

                                                        <input type="text" name="telR" id="Form-email4"
                                                            class="form-control" required>
                                                        <label for="Form-email4">Phone Number</label>
                                                    </div>

                                                    <div class="md-form pb-0">

                                                        <input type="password" name="passwordR" id="Form-pass4"
                                                            class="form-control" minlength="6" required>
                                                        <label for="Form-pass4">Password</label>

                                                    </div>
                                                    <div class="col-md-12 d-flex justify-content-around mt-4 ">
                                                        <label class="radio-inline  pl-2"><input type="radio" id="male"
                                                                name="sexe" value="M"> Male</label>
                                                        <label class="radio-inline  pl-2"><input type="radio"
                                                                id="female" name="sexe" value="F"> Female</label>
                                                    </div>

                                                    <!--Header-->
                                                    <div class="text-center">
                                                        <h5 class="dark-grey-text mt-3 mb-0">
                                                            <strong> Enterprise Informations </strong>
                                                            </h3>
                                                    </div>
                                                    <!--Header-->

                                                    <div class="md-form">

                                                        <input type="text" name="entName" id="Form-email4"
                                                            class="form-control" required>
                                                        <label for="Form-email4">Name</label>
                                                    </div>

                                                    <div class="md-form pb-0">

                                                        <input type="text" name="slogan" id="Form-pass4"
                                                            class="form-control" required>
                                                        <label for="Form-pass4">Slogan</label>

                                                    </div>

                                                    <div class="md-form">

                                                        <textarea class="form-control md-textarea" name="entDesc"
                                                            id="exampleFormControlTextarea1" rows="3"
                                                            required></textarea>
                                                        <label for="Form-email4">Description</label>
                                                    </div>

                                                    <div class="md-form">

                                                        <input type="text" name="entEmail" id="Form-email4"
                                                            class="form-control" required>
                                                        <label for="Form-email4">Email</label>
                                                    </div>

                                                    <div class="md-form">

                                                        <input type="text" name="entLoc" id="Form-email4"
                                                            class="form-control" required>
                                                        <label for="Form-email4">Location</label>
                                                    </div>

                                                    <div class="md-form">
                                                        <input type="text" name="entDomain" id="Form-email4"
                                                            class="form-control" required>
                                                        <label for="Form-email4">Domain</label>
                                                    </div>

                                                    <br>

                                                    <div class="text-center mb-4">
                                                        <button type="submit" name="apply"
                                                            class="btn btn-primary btn-block z-depth-2">Apply</button>
                                                        <c:if test="${ applyRes != null }">
                                                            <c:out
                                                                value="${applyRes ? 'Account added' : 'Error occured' }" />
                                                        </c:if>
                                                    </div>
                                                    <p class="font-small grey-text d-flex justify-content-center">
                                                        Already have an account?
                                                        <a href="${pageContext.request.contextPath}/login"
                                                            class="dark-grey-text font-weight-bold ml-1"> Log in</a>
                                                    </p>
                                                </form>
                                            </div>
                                        </div>
                                        <br>
                                    </div>
                                </div>
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
        </main>

        </div>


        <!-- End #main -->

        <a href="#" class="back-to-top"><i class="fa fa-angle-up"></i></a>

        <script src="https://kit.fontawesome.com/f36a65bf41.js"></script>

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
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/js/bootstrap.bundle.min.js"
            integrity="sha384-ygbV9kiqUc6oa4msXn9868pTtWMgiQaeYH7/t7LECLbyPA2x65Kgf80OJFdroafW"
            crossorigin="anonymous"></script>
        <script src="${pageContext.request.contextPath}/assets/js/main2.js"></script>

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
        <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
        <script>

            function goBack() {
                window.history.back();
            }

            $(".loginsignup").on('keyup', function () { // this sends request to server to see if login exits already or not on keyup
                let availabilityMessage = $(this).closest("div").find(".loginAvailability");
                let signupBtn = $(this).closest("form").find(".signup");
                $.get(
                    "${pageContext.request.contextPath}/ajaxRequests", {
                    loginEntered: $(this).val().trim()
                },
                    (data) => {
                        console.log(data);

                        if (data == "used" && $(this).val() != "") {
                            availabilityMessage.prop('hidden', false);
                            availabilityMessage.html("Username taken, try something else.");
                            availabilityMessage.css("color", "red");
                            signupBtn.attr("disabled", "disabled");
                        } else if ($(this).val() != "") {
                            availabilityMessage.prop('hidden', false);
                            availabilityMessage.html("Username available");
                            availabilityMessage.css("color", "green");
                            signupBtn.attr("disabled", false);
                        } else {
                            availabilityMessage.prop('hidden', true);
                            availabilityMessage.html("");
                            signupBtn.attr("disabled", false);
                        }
                    },
                    'text'
                )
            })

            $("#signupForm").on("submit", function (e) {
                e.preventDefault();
                $.ajax({
                    type: "POST",
                    url: "#",
                    data: new FormData(this),
                    contentType: false,
                    processData: false,
                    dataType: "text",
                    success: function (data) {
                        console.log(data);
                        switch (data) {
                            /* case "ok":
                                alert("Your account has been created successfuly");
                                break; */
                            case "imgProblem":
                                swal("Image Error", "Please provide an image of youself, alone, and of good quality", "error");
                                break;
                            case "error":
                                swal("Oops", "Sorry, there hase been an error creating you account, please try again.", "error");
                                break;
                            default:
                                window.location.href = "${pageContext.request.contextPath}/participant?id_p=" + data;
                        }
                    }
                })
            })
        </script>

    </body>

    </html>