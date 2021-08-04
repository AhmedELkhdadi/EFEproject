<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>
    <!DOCTYPE html>
    <html lang="en">

    <head>
        <meta charset="utf-8">
        <meta content="width=device-width, initial-scale=1.0" name="viewport">

        <title>TheEvent Bootstrap Template - Speaker Details</title>
        <meta content="" name="description">
        <meta content="" name="keywords">

        <!-- Favicons -->
        <link rel="shortcut icon" type="image/x-icon"
            href="${pageContext.request.contextPath}/DashboardAssets/img/fav.png">
        <link href="assets/img/apple-touch-icon.png" rel="apple-touch-icon">

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
        <link href="assets/css/style.css" rel="stylesheet">
        <style>
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
        <header id="header" class="header-fixed">
            <div class="container">

                <div id="logo" class="pull-left">
                    <a href="index" class="scrollto newLogo"><img style="transform : scale(1.3);"
                            src="${pageContext.request.contextPath}/assets/img/newlogo.png" alt=""></a>
                </div>

                <nav id="nav-menu-container">
                    <ul class="nav-menu">
                        <li class="buy-tickets"><a onclick='goBack()'>Go Back</a></li>
                    </ul>
                </nav>
                <!-- #nav-menu-container -->
            </div>
        </header>
        <!-- End Header -->

        <main id="main" class="container">

            <br><br><br><br>




            <div class="row d-flex justify-content-center">

                <div
                    class="col-10 d-flex align-items-center p-3 mt-0 mb-0 text-white bg-primary rounded shadow justify-content-center">
                    <div class="lh-1 text-center">
                        <h1 align="center" class="h6 mb-0 text-white lh-1">ENSAK FORUM</h1>
                        <c:choose>
                            <c:when test="${ eventState == 0 }">
                                <h4 class="text-light"> Event starts in <b id="blockCountdown" class="text-light"
                                        style="display:none"> ${ msUntillStart }</b> </h4>
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
                                                        ${currentActivity.getSpeaker().getFname()}</i></span>, <span
                                                    class="text-light">${currentActivity.getSpeaker().getDescription()}</span>
                                                now speaking:
                                            <div class="w-100 text-center m-0 p-0">Conference link: <a
                                                    href="https://${currentActivity.getMeetLink()}" target="_blank"
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

                <div style="position: relative; bottom: 30px;" class="col-md-10 mt-0 mb-3 mb-0 pt-5">

                    <div class="row z-depth-3">
                        <div class="col-sm-4 bg-primary rounded-left">
                            <div class="card-block text-center text-white"><br>
                                <img src="assets/img/participants/${ participant.getImage() }"
                                    style="max-width:190px;max-height:250px;width: auto;height: auto;border-radius:5px" />
                                <h2 class="font-weight text-white mt-4">${ participant.getFullName() }</h2>
                                <p>${ participant.getInstitution() } Student</p>
                                <c:if test="${ participant.getId() == user.getId() }">
                                    <a class="text-white" id="editButton"><i class="far fa-edit fa-2x mb-4"></i></a><br>
                                </c:if>
                                <!-- <button class="btn btn-white text-primary">View CV</button> -->
                            </div>
                        </div>
                        <div class="col-sm-8 bg-white rounded-right">
                            <div style="display: flex; align-items: center; justify-content: space-between;">
                                <c:choose>
                                    <c:when test="${ participant.getId() == user.getId() }">
                                        <h3 class="mt-3 font-weight-bold ">MY PROFIL</h3>
                                    </c:when>
                                    <c:otherwise>
                                        <h3 class="mt-3 font-weight-bold ">${ participant.getFullName() }</h3>
                                    </c:otherwise>
                                </c:choose>
                            </div>

                            <hr class="mt-0 w-100">

                            <div class="row">
                                <div class="col-12">
                                    <p id="profil"><b>${ participant.getDescription() }</b></p>
                                </div>
                            </div>

                            <div class="row">
                                <div id="training" class="col-sm-6">
                                    <p class="font-weight-bold mb-1">Training</p>
                                    <c:choose>
                                        <c:when
                                            test="${ participant.getTraining() == null || participant.getTraining() == '' }">
                                            <h6 class="text-muted">Information not yet submitted.</h6>
                                        </c:when>
                                        <c:otherwise>
                                            <h6 class="text-muted availableTraining"><b>${ participant.getTraining()
                                                    }</b></h6>
                                        </c:otherwise>
                                    </c:choose>

                                </div>
                                <div id="award" class="col-sm-6">
                                    <p class="font-weight-bold mb-1">Awards</p>
                                    <c:choose>
                                        <c:when
                                            test="${ participant.getAwards() == null || participant.getAwards() == '' }">
                                            <h6 class="text-muted">Information not yet submitted.</h6>
                                        </c:when>
                                        <c:otherwise>
                                            <h6 class="text-muted availableAwards"><b>${ participant.getAwards() }</b>
                                            </h6>
                                        </c:otherwise>
                                    </c:choose>
                                </div>
                            </div>


                            <div class="row">
                                <div id="ts" class="col-sm-6">
                                    <p class="font-weight-bold mb-1">Technical Skills</p>
                                    <c:choose>
                                        <c:when
                                            test="${ participant.getTechSkills() == null || participant.getTechSkills() == '' }">
                                            <h6 class="text-muted">Information not yet submitted.</h6>
                                        </c:when>
                                        <c:otherwise>
                                            <h6 class="text-muted availableTs"><b>${ participant.getTechSkills() }</b>
                                            </h6>
                                        </c:otherwise>
                                    </c:choose>
                                </div>
                                <div id="ss" class="col-sm-6">
                                    <p class="font-weight-bold mb-1">Soft Skills</p>
                                    <c:choose>
                                        <c:when
                                            test="${ participant.getSoftSkills() == null || participant.getSoftSkills() == '' }">
                                            <h6 class="text-muted">Information not yet submitted. </h6>
                                        </c:when>
                                        <c:otherwise>
                                            <h6 class="text-muted availableSs"><b>${ participant.getSoftSkills() }</b>
                                            </h6>
                                        </c:otherwise>
                                    </c:choose>
                                </div>
                            </div>

                            <div class="row">
                                <div id="lg" class="col-sm-6">
                                    <p class="font-weight-bold mb-1">Languages</p>
                                    <c:choose>
                                        <c:when
                                            test="${ participant.getLangages() == null || participant.getLangages() == '' }">
                                            <h6 class="text-muted">Information not yet submitted.</h6>
                                        </c:when>
                                        <c:otherwise>
                                            <h6 class="text-muted availableLg"><b>${ participant.getLangages() }</b>
                                            </h6>
                                        </c:otherwise>
                                    </c:choose>
                                </div>
                                <div id="int" class="col-sm-6">
                                    <p class="font-weight-bold mb-1">Interest</p>
                                    <c:choose>
                                        <c:when
                                            test="${ participant.getIntrests() == null || participant.getIntrests() == '' }">
                                            <h6 class="text-muted">Information not yet submitted.</h6>
                                        </c:when>
                                        <c:otherwise>
                                            <h6 class="text-muted availableInt"><b>${ participant.getIntrests() }</b>
                                            </h6>
                                        </c:otherwise>
                                    </c:choose>
                                </div>
                            </div>

                            <div class="row">
                                <div class="col-sm-6">
                                    <p class="font-weight-bold mb-1">Email</p>
                                    <h6 id="email" class="text-muted"><b>${ participant.getEmail() }</b></h6>
                                </div>
                                <div class="col-sm-6">
                                    <p class="font-weight-bold mb-1">Phone Number</p>
                                    <h6 id="tel" class="text-muted"><b>${ participant.getTel() }</b></h6>
                                </div>
                            </div>

                            <hr>

                            <style>
                                .btn-circle.btn-sm {
                                    width: 30px;
                                    height: 30px;
                                    padding: 6px 0px;
                                    border-radius: 15px;
                                    font-size: 8px;
                                    text-align: center;
                                }
                            </style>
                            <ul class="list-unstyled d-flex justify-content-center mt-4">
                                <li><a class="btn btn-sm btn-circle" id="linkedIn" href="${ participant.getLinkedIn() }"
                                        style="background-color:#0a66c2;"><i
                                            class="fab fa-linkedin h6 text-white"></i></a></li>
                                <li><a class="btn btn-dark btn-sm btn-circle" id="git"
                                        href="${ participant.getGitHub() }"><i class="fab fa-git h6 text-white"></i></a>
                                </li>
                                <li><a class="btn btn-primary btn-sm btn-circle" id="fb"
                                        href="${ participant.getFacebook() }"><i
                                            class="fab fa-facebook-f  h3 text-white font-small"></i></a></li>
                            </ul>


                        </div>
                    </div>
                </div>
            </div>


            <div class="modal fade" id="modalProfil" tabindex="-1" role="dialog" aria-labelledby="myModalLabel"
                aria-hidden="true">
                <div class="modal-dialog" role="document">
                    <div class="modal-content">
                        <div class="modal-header text-center">
                            <h4 class="modal-title w-100 font-weight-bold">MY PROFIL</h4>
                            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                <span aria-hidden="true">&times;</span>
                            </button>
                        </div>
                        <div class="modal-body mx-3">
                            <!-- Form -->
                            <form class="text-center" style="color: #757575;" action="#!">

                                <!--description-->
                                <div class="md-form">
                                    <textarea id="profilInput" class="form-control md-textarea" rows="2"></textarea>
                                    <label for="materialContactFormMessage">Description</label>
                                </div>

                                <div class="md-form mt-3">
                                    <input type="text" id="trainingInput" class="form-control">
                                    <label for="materialContactFormName">Training</label>
                                </div>

                                <!-- E-mail -->
                                <div class="md-form">
                                    <input type="text" id="awardInput" class="form-control">
                                    <label for="materialContactFormEmail">Awards</label>
                                </div>

                                <!-- Name -->
                                <div class="md-form mt-3">
                                    <input type="text" id="tsInput" class="form-control">
                                    <label for="materialContactFormName">Technical Skills</label>
                                </div>

                                <!-- E-mail -->
                                <div class="md-form">
                                    <input type="text" id="ssInput" class="form-control">
                                    <label for="materialContactFormEmail">Soft Skills</label>
                                </div>


                                <!-- E-mail -->
                                <div class="md-form">
                                    <input type="text" id="intInput" class="form-control">
                                    <label for="materialContactFormEmail">Interests</label>
                                </div>

                                <!-- Name -->
                                <div class="md-form">
                                    <input type="text" id="lgInput" class="form-control">
                                    <label for="materialContactFormName">Languages</label>
                                </div>

                                <div class="md-form">
                                    <input type="text" id="telInput" class="form-control" required>
                                    <label for="materialContactFormName">Phone number</label>
                                </div>

                                <div class="md-form">
                                    <input type="email" id="emailInput" class="form-control" required>
                                    <label for="materialContactFormEmail">Email</label>
                                </div>
                                <div class="md-form">
                                    <input type="email" id="linkedInInput" class="form-control" required>
                                    <label for="materialContactFormEmail">LinkedIn account</label>
                                </div>
                                <div class="md-form">
                                    <input type="email" id="gitInput" class="form-control" required>
                                    <label for="materialContactFormEmail">GitHub account</label>
                                </div>
                                <div class="md-form">
                                    <input type="email" id="fbInput" class="form-control" required>
                                    <label for="materialContactFormEmail">Facebook account</label>
                                </div>
                            </form>
                            <!-- Form -->

                        </div>
                        <div class="modal-footer d-flex justify-content-center">
                            <button id="applyChanges" class="btn btn-primary">Apply Changes</button>
                            <span id="errorMsg" class="text-danger"></span>
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

        </main>
        <!-- End #main -->



        <!-- ======= Footer ======= -->
        <!-- <footer id="footer">

        <div class="container">
            <div class="copyright">
                &copy; Copyright <strong>TheEvent</strong>. All Rights Reserved
            </div>
            <div class="credits">
                Designed by <a href="https://bootstrapmade.com/">BootstrapMade</a>
            </div>
        </div>
    </footer> -->
        <!-- End  Footer -->


        <a href="#" class="back-to-top"><i class="fa fa-angle-up"></i></a>

        <!-- Vendor JS Files -->
        <script src="assets/vendor/jquery/jquery.min.js"></script>
        <script src="assets/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
        <script src="assets/vendor/jquery.easing/jquery.easing.min.js"></script>
        <script src="assets/vendor/php-email-form/validate.js"></script>
        <script src="assets/vendor/venobox/venobox.min.js"></script>
        <script src="assets/vendor/owl.carousel/owl.carousel.min.js"></script>
        <script src="assets/vendor/superfish/superfish.min.js"></script>
        <script src="assets/vendor/hoverIntent/hoverIntent.js"></script>
        <script src="assets/vendor/aos/aos.js"></script>

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
        <script src="assets/js/main.js"></script>
        <script src="${pageContext.request.contextPath}/assets/js/eventCountDown.js"></script>
        <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
        <c:if test="${ sessionScope.firstLog == true}">
            <script>
                swal("Welcome", "Account created succesfuly, please provide more informations about yourself, It will improve your chances of benifiting from the event.", "success");
            </script>
            <c:set var="firstLog" value="${false}" scope="session" />
        </c:if>

        <script>
            function goBack() {
                window.history.back();
            }
        </script>
        <c:if test="${ participant.getId() == user.getId() }">
            <script>
                $("#editButton").click(function () {
                    $('#trainingInput').val($('.availableTraining').text()).trigger("change");
                    $('#awardInput').val($('.availableAwards').text()).trigger("change");
                    $('#tsInput').val($('.availableTs').text()).trigger("change");
                    $('#ssInput').val($('.availableSs').text()).trigger("change");
                    $('#lgInput').val($('.availableLg').text()).trigger("change");
                    $('#intInput').val($('.availableInt').text()).trigger("change");
                    $('#emailInput').val($('#email').text()).trigger("change");
                    $('#telInput').val($('#tel').text()).trigger("change");
                    $('#fbInput').val($('#fb').attr('href')).trigger("change");
                    $('#linkedInInput').val($('#linkedIn').attr('href')).trigger("change");
                    $('#gitInput').val($('#git').attr('href')).trigger("change");

                    $('#profilInput').val($('#profil').text()).trigger("change");
                    $("#errorMsg").text("");
                    $('#modalProfil').modal('show');
                });
                $("#applyChanges").click(function () {
                    training = $('#trainingInput').val().trim();
                    awards = $('#awardInput').val().trim();
                    techSkills = $('#tsInput').val().trim();
                    softSkills = $('#ssInput').val().trim();
                    description = $('#profilInput').val().trim();
                    intrests = $('#intInput').val().trim();
                    langages = $('#lgInput').val().trim();
                    email = $('#emailInput').val().trim();
                    tel = $('#telInput').val().trim();
                    facebook = $('#fbInput').val().trim();
                    linkedIn = $('#linkedInInput').val().trim();
                    git = $('#gitInput').val().trim();

                    if (email == '' || tel == '') {
                        $("#errorMsg").text("Email and phone number must be submitted.");
                    }
                    else {
                        $.post(
                            "#", {
                            modifiedAccount: '${ participant.getId() }',
                            training: training,
                            awards: awards,
                            techSkills: techSkills,
                            softSkills: softSkills,
                            langages: langages,
                            description: description,
                            intrests: intrests,
                            email: email,
                            tel: tel,
                            facebook: facebook,
                            git: git,
                            linkedIn: linkedIn,
                        },
                            function () {
                                if (data = 'ok') {
                                    if (training != '')
                                        $('#training h6').text(training);
                                    if (awards != '')
                                        $('#award h6').text(awards);
                                    if (techSkills != '')
                                        $('#ts h6').text(techSkills);
                                    if (softSkills != '')
                                        $('#ss h6').text(softSkills);
                                    if (langages != '')
                                        $('#lg h6').text(langages);
                                    if (intrests != '')
                                        $('#int h6').text(intrests);
                                    $('#email').text(email);
                                    $('#tel').text(tel);
                                    $('#profil').text(description);
                                    $("#fb").attr("href", facebook);
                                    $("#git").attr("href", git);
                                    $("#linkedIn").attr("href", linkedIn);
                                    $('#modalProfil').modal('hide');
                                }
                                else {
                                    $("#errorMsg").text("An error has occured, try Again.")
                                }
                            });
                    }
                });
            </script>
        </c:if>


    </body>

    </html>