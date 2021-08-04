<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>
    <!doctype html>
    <html class="no-js" lang="">

    <head>
        <meta charset="utf-8">
        <meta http-equiv="x-ua-compatible" content="ie=edge">
        <title>ENSAK FORUM</title>
        <meta name="description" content="">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <!-- favicon
		============================================ -->
        <link rel="shortcut icon" type="image/x-icon"
            href="${pageContext.request.contextPath}/DashboardAssets/img/fav.png">
        <!-- Google Fonts
		============================================ -->
        <link href="https://fonts.googleapis.com/css?family=Roboto:100,300,400,700,900" rel="stylesheet">
        <!-- Bootstrap CSS
		============================================ -->
        <link rel="stylesheet" href="${pageContext.request.contextPath}/DashboardAssets/css/bootstrap.min.css">
        <!-- Bootstrap CSS
		============================================ -->
        <link rel="stylesheet" href="${pageContext.request.contextPath}/DashboardAssets/css/font-awesome.min.css">
        <!-- owl.carousel CSS
		============================================ -->
        <link rel="stylesheet" href="${pageContext.request.contextPath}/DashboardAssets/css/owl.carousel.css">
        <link rel="stylesheet" href="${pageContext.request.contextPath}/DashboardAssets/css/owl.theme.css">
        <link rel="stylesheet" href="${pageContext.request.contextPath}/DashboardAssets/css/owl.transitions.css">
        <!-- meanmenu CSS
		============================================ -->
        <link rel="stylesheet" href="${pageContext.request.contextPath}/DashboardAssets/css/meanmenu/meanmenu.min.css">
        <!-- animate CSS
		============================================ -->
        <link rel="stylesheet" href="${pageContext.request.contextPath}/DashboardAssets/css/animate.css">
        <link rel="stylesheet"
            href="${pageContext.request.contextPath}/DashboardAssets/css/animation/animation-custom.css">
        <!-- normalize CSS
		============================================ -->
        <link rel="stylesheet" href="${pageContext.request.contextPath}/DashboardAssets/css/normalize.css">
        <!-- mCustomScrollbar CSS
		============================================ -->
        <link rel="stylesheet"
            href="${pageContext.request.contextPath}/DashboardAssets/css/scrollbar/jquery.mCustomScrollbar.min.css">
        <!-- jvectormap CSS
		============================================ -->
        <link rel="stylesheet"
            href="${pageContext.request.contextPath}/DashboardAssets/css/jvectormap/jquery-jvectormap-2.0.3.css">
        <!-- notika icon CSS
		============================================ -->
        <link rel="stylesheet" href="${pageContext.request.contextPath}/DashboardAssets/css/notika-custom-icon.css">
        <!-- bootstrap select CSS
		============================================ -->
        <link rel="stylesheet"
            href="${pageContext.request.contextPath}/DashboardAssets/css/bootstrap-select/bootstrap-select.css">

        <!-- Data Table JS
		============================================ -->
        <link rel="stylesheet" href="${pageContext.request.contextPath}/DashboardAssets/css/jquery.dataTables.min.css">
        <!-- notification CSS
		============================================ -->
        <link rel="stylesheet"
            href="${pageContext.request.contextPath}/DashboardAssets/css/notification/notification.css">
        <!-- wave CSS
		============================================ -->
        <link rel="stylesheet" href="${pageContext.request.contextPath}/DashboardAssets/css/wave/waves.min.css">
        <link rel="stylesheet" href="${pageContext.request.contextPath}/DashboardAssets/css/wave/button.css">
        <!-- main CSS
		============================================ -->
        <link rel="stylesheet" href="${pageContext.request.contextPath}/DashboardAssets/css/main.css">
        <!-- style CSS
		============================================ -->
        <link rel="stylesheet" href="${pageContext.request.contextPath}/DashboardAssets/style.css">
        <!-- responsive CSS
		============================================ -->
        <link rel="stylesheet" href="${pageContext.request.contextPath}/DashboardAssets/css/responsive.css">
        <!-- modernizr JS
		============================================ -->
        <script src="${pageContext.request.contextPath}/DashboardAssets/js/vendor/modernizr-2.8.3.min.js"></script>


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
        </style>



    </head>

    <body>
        <!-- Start Header Top Area -->
        <div class="header-top-area">
            <div class="container">
                <div class="row">
                    <div class="col-lg-4 col-md-4 col-sm-12 col-xs-12">
                        <div class="logo-area"
                            style="margin-top:-20px;margin-bottom:-20px;position:relative;right:50px">
                            <a href="${pageContext.request.contextPath}/"><img style="transform : scale(0.7);"
                                    src="${pageContext.request.contextPath}/DashboardAssets/img/logo/newlogodash.png"
                                    alt="" /></a>
                            <!--  <h1><a href="${ pageContext.request.contextPath }"  style="color: white;">ENSAK FORUM</a></h1> -->
                        </div>
                    </div>
                    <div class="col-lg-8 col-md-8 col-sm-12 col-xs-12">
                        <div class="header-top-menu">
                            <ul class="nav navbar-nav notika-top-nav">

                                <li class="nav-item nc-al" style="position:relative;top:15px"><a onclick="goBack()"
                                        data-toggle="dropdown" role="button" aria-expanded="false"
                                        class="nav-link dropdown-toggle"><span><i
                                                class="notika-icon notika-left-arrow"></i></span></a>

                                </li>


                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- End Header Top Area -->
        <style>
            .box-shadow {
                border-radius: 4px;
                box-shadow: 4px 3px 8px 1px #969696;
                -webkit-box-shadow: 2px 1px 4px 1px #969696;
            }
        </style>

        <!-- Mobile Menu start -->
        <div class="mobile-menu-area" style="background-color: rgba(6, 12, 34, 0.98);">
            <div class="container">
                <div class="row">
                    <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                        <div class="mobile-menu">
                            <nav id="dropdown">
                                <ul class="mobile-menu-nav">
                                    <li><a data-toggle="collapse" data-target="#Charts" href="#">Home</a>
                                        <ul class="collapse dropdown-header-top">
                                            <li><a id="btn_participant1" href="#">Particpants</a>
                                            </li>
                                            <li><a id="btn_profil1" href="#">Profils</a>
                                            </li>
                                            <li><a id="btn_request1" href="#">Demandes d'entreprise</a>
                                            </li>
                                            <li><a id="btn_workshop1" href="#">Workshops</a>
                                            </li>

                                        </ul>
                                    </li>
                                    <li><a data-toggle="collapse" data-target="#demoevent" href="#">Event Tasks</a>
                                        <ul id="demoevent" class="collapse dropdown-header-top">
                                            <li><a href="#" id="btn_mails1">Activities</a>
                                            </li>
                                            <li><a href="#" id="btn_compose_mail1">Speakers</a>
                                            </li>
                                        </ul>
                                    </li>

                                    <li><a data-toggle="collapse" data-target="#demolibra" href="#">Charts</a>
                                        <ul id="demolibra" class="collapse dropdown-header-top">
                                            <li><a href="#" id="btn_descriptive_charts1">Descriptive Analysis</a>
                                            </li>
                                            <!--   <li><a href="#" id="btn_line_charts1">Other Charts</a>
                                        </li> -->
                                        </ul>
                                    </li>




                                </ul>
                            </nav>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Mobile Menu end -->
        <br><br>


        <!-- Start Status area -->
        <div class="notika-status-area">
            <div class="container">
                <div class="row">
                    <div class="col-lg-4 col-md-6 col-sm-6 col-xs-12">
                        <div class="wb-traffic-inner notika-shadow sm-res-mg-t-30 tb-res-mg-t-30 box-shadow">
                            <div class="website-traffic-ctn">
                                <h2><span class="counter">${ participants.size() }</span></h2>
                                <p>Total Particpants</p>
                            </div>
                            <div class="sparkline-bar-stats1">9,4,8,6,5,6,4,8,3,5,9,5</div>
                        </div>
                    </div>
                    <div class="col-lg-4 col-md-6 col-sm-6 col-xs-12">
                        <div
                            class="wb-traffic-inner notika-shadow sm-res-mg-t-30 tb-res-mg-t-30 dk-res-mg-t-30 box-shadow">
                            <div class="website-traffic-ctn">
                                <h2><span class="counter" id="waintingRepsNum">${ RepsWaiting.size() }</span></h2>
                                <p>Total demands </p>
                            </div>
                            <div class="sparkline-bar-stats3">4,2,8,2,5,6,3,8,3,5,9,5</div>
                        </div>
                    </div>
                    <div class="col-lg-4 col-md-6 col-sm-12 col-xs-12">
                        <div class="wb-traffic-inner notika-shadow sm-res-mg-t-30 tb-res-mg-t-30 box-shadow">
                            <div class="website-traffic-ctn">
                                <h2><span class="counter" id="approvedRepsNum">${ appReps.size() }</span></h2>
                                <p>Total Stands</p>
                            </div>
                            <div class="sparkline-bar-stats2">1,4,8,3,5,6,4,8,3,3,9,5</div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- End Status area-->


        <!-- Main Menu area start-->
        <div class="main-menu-area mg-tb-40">
            <div class="container">
                <div class="row">
                    <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                        <ul class="nav nav-tabs notika-menu-wrap menu-it-icon-pro">
                            <li class="active"><a data-toggle="tab" href="#Home"><i
                                        class="notika-icon notika-house"></i>
                                    Home</a>
                            </li>
                            <li><a data-toggle="tab" href="#mailbox"><i class="notika-icon notika-menus"></i> Event
                                    Tasks</a>
                            </li>

                            <li><a data-toggle="tab" href="#Charts"><i class="notika-icon notika-bar-chart"></i>
                                    Charts</a>
                            </li>
                        </ul>
                        <div class="tab-content custom-menu-content">
                            <div id="Home" class="tab-pane in active notika-tab-menu-bg animated flipInX">
                                <ul class="notika-main-menu-dropdown">
                                    <li><a id="btn_participant" href="#">Particpants</a>
                                    </li>
                                    <li><a id="btn_profil" href="#">Profils</a>
                                    </li>
                                    <li><a id="btn_request" href="#">Demandes d'entreprise</a>
                                    </li>
                                    <li><a id="btn_workshop" href="#">Workshops</a>
                                    </li>

                                </ul>
                            </div>
                            <div id="mailbox" class="tab-pane notika-tab-menu-bg animated flipInX">
                                <ul class="notika-main-menu-dropdown">
                                    <li><a href="#" id="btn_mails">Activities</a>
                                    </li>
                                    <li><a href="#" id="btn_compose_mail">Speakers</a>
                                    </li>
                                </ul>
                            </div>

                            <div id="Charts" class="tab-pane notika-tab-menu-bg animated flipInX">
                                <ul class="notika-main-menu-dropdown">
                                    <li><a href="#" id="btn_descriptive_charts">Descriptive Analysis</a>
                                    </li>
                                    <!--    <li><a href="#" id="btn_line_charts">Other Charts</a>
                                </li> -->

                                </ul>
                            </div>



                        </div>
                    </div>
                </div>
            </div>
        </div>

        <!-- Start of Particpant Table -->
        <div id="participant_table">

            <!-- Breadcomb area Start-->
            <div class="breadcomb-area">
                <div class="container">
                    <div class="row">
                        <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 ">
                            <div class="breadcomb-list">
                                <div class="row">
                                    <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
                                        <div class="breadcomb-wp">
                                            <div class="breadcomb-icon">
                                                <i class="notika-icon notika-support"></i>
                                            </div>
                                            <div class="breadcomb-ctn">
                                                <h2>All the Participants</h2>
                                                <p>Here is a detailed list of the participants</p>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="col-lg-6 col-md-6 col-sm-6 col-xs-3">

                                        <div class="breadcomb-report">

                                            <button onclick="exportTableToCSV('participants.csv')" data-toggle="tooltip"
                                                data-placement="left" title="Export Data in CSV" class="btn"><i
                                                    class="notika-icon notika-sent"></i></button>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- Breadcomb area End-->

            <!-- Data Table area Start-->
            <div class="data-table-area">
                <div class="container">
                    <div class="row">
                        <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                            <div class="data-table-list">
                                <div class="basic-tb-hd">
                                    <h2>Data Table</h2>
                                    <p>You can export this table in PDF or CSV file format for other use</p>
                                </div>
                                <div id="participant_tab" class="table-responsive">
                                    <table id="data-table-basic" class="table table-striped">
                                        <thead>
                                            <tr>
                                                <th>Name</th>
                                                <th>email</th>
                                                <th>Phone number</th>

                                                <th>Age</th>
                                                <th>Sexe</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <c:forEach items="${ participants }" var="participant">
                                                <tr>
                                                    <td><a
                                                            href="${pageContext.request.contextPath }/participant?id_p=${participant.getId()}">${
                                                            participant.getFullName() }</a></td>
                                                    <td>${ participant.getEmail() }</td>
                                                    <td>${ participant.getTel() }</td>

                                                    <td>${ participant.getAge() }</td>
                                                    <td>
                                                        <c:if test="${ participant.getSexe() == 'M' }"><span
                                                                style="color : white; background : #F44336;"
                                                                class="badge rounded-pill bg-primary">Male</span></c:if>
                                                        <c:if test="${ participant.getSexe() == 'F' }"><span
                                                                style="color : white; background : #00C292;"
                                                                class="badge rounded-pill bg-primary">Female</span>
                                                        </c:if>
                                                    </td>
                                                </tr>
                                            </c:forEach>
                                        </tbody>
                                        <tfoot>
                                            <tr>
                                                <th>Name</th>
                                                <th>email</th>
                                                <th>Phone number</th>
                                                <th>Sexe</th>
                                                <th>Age</th>
                                            </tr>
                                        </tfoot>
                                    </table>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- Data Table area End-->




        </div>
        <!-- End of Particpant Table -->



        <!-- Start of Particpant Profils -->
        <div id="participant_profils">

            <!-- Breadcomb area Start-->
            <div class="breadcomb-area">
                <div class="container">
                    <div class="row">
                        <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                            <div class="breadcomb-list">
                                <div class="row">
                                    <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
                                        <div class="breadcomb-wp">
                                            <div class="breadcomb-icon">
                                                <i class="notika-icon notika-support"></i>
                                            </div>
                                            <div class="breadcomb-ctn">
                                                <h2>Participants Profil</h2>
                                                <p>You can take a look at the profils of all the participants</span></p>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-lg-6 col-md-6 col-sm-6 col-xs-3">
                                        <!--  <div class="breadcomb-report">
                                        <button data-toggle="tooltip" data-placement="left" title="Export Data in CSV"
                                            class="btn"><i class="notika-icon notika-sent"></i></button>
                                    </div> -->
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- Breadcomb area End-->

            <!-- Contact area Start-->
            <div class="contact-area">
                <div class="container">
                    <div class="row">
                        <c:forEach items="${participants}" var="participant">
                            <div class="col-lg-3 col-md-6 col-sm-6 col-xs-12">
                                <div class="contact-list mg-t-30">
                                    <div class="contact-win">
                                        <div>
                                            <img style="width:100px;height:100px;border-radius:50%"
                                                src="assets/img/participants/${ participant.getImage() }" alt="" />
                                        </div>
                                        <div class="conct-sc-ic">
                                            <a style="background-color : #17A2B8;" class="btn"
                                                href="${ participant.getLinkedIn() }"><svg
                                                    xmlns="http://www.w3.org/2000/svg" width="16" height="16"
                                                    fill="currentColor" class="bi bi-linkedin" viewBox="0 0 16 16">
                                                    <path
                                                        d="M0 1.146C0 .513.526 0 1.175 0h13.65C15.474 0 16 .513 16 1.146v13.708c0 .633-.526 1.146-1.175 1.146H1.175C.526 16 0 15.487 0 14.854V1.146zm4.943 12.248V6.169H2.542v7.225h2.401zm-1.2-8.212c.837 0 1.358-.554 1.358-1.248-.015-.709-.52-1.248-1.342-1.248-.822 0-1.359.54-1.359 1.248 0 .694.521 1.248 1.327 1.248h.016zm4.908 8.212V9.359c0-.216.016-.432.08-.586.173-.431.568-.878 1.232-.878.869 0 1.216.662 1.216 1.634v3.865h2.401V9.25c0-2.22-1.184-3.252-2.764-3.252-1.274 0-1.845.7-2.165 1.193v.025h-.016a5.54 5.54 0 0 1 .016-.025V6.169h-2.4c.03.678 0 7.225 0 7.225h2.4z" />
                                                </svg></a>
                                            <a class="btn" style="background-color : black;"
                                                href="${ participant.getGitHub() }"><svg
                                                    xmlns="http://www.w3.org/2000/svg" width="16" height="16"
                                                    fill="currentColor" class="bi bi-github" viewBox="0 0 16 16">
                                                    <path
                                                        d="M8 0C3.58 0 0 3.58 0 8c0 3.54 2.29 6.53 5.47 7.59.4.07.55-.17.55-.38 0-.19-.01-.82-.01-1.49-2.01.37-2.53-.49-2.69-.94-.09-.23-.48-.94-.82-1.13-.28-.15-.68-.52-.01-.53.63-.01 1.08.58 1.23.82.72 1.21 1.87.87 2.33.66.07-.52.28-.87.51-1.07-1.78-.2-3.64-.89-3.64-3.95 0-.87.31-1.59.82-2.15-.08-.2-.36-1.02.08-2.12 0 0 .67-.21 2.2.82.64-.18 1.32-.27 2-.27.68 0 1.36.09 2 .27 1.53-1.04 2.2-.82 2.2-.82.44 1.1.16 1.92.08 2.12.51.56.82 1.27.82 2.15 0 3.07-1.87 3.75-3.65 3.95.29.25.54.73.54 1.48 0 1.07-.01 1.93-.01 2.2 0 .21.15.46.55.38A8.012 8.012 0 0 0 16 8c0-4.42-3.58-8-8-8z" />
                                                </svg></i></a>
                                            <a class="btn" href="${ participant.getFacebook() }"><svg
                                                    xmlns="http://www.w3.org/2000/svg" width="16" height="16"
                                                    fill="currentColor" class="bi bi-facebook" viewBox="0 0 16 16">
                                                    <path
                                                        d="M16 8.049c0-4.446-3.582-8.05-8-8.05C3.58 0-.002 3.603-.002 8.05c0 4.017 2.926 7.347 6.75 7.951v-5.625h-2.03V8.05H6.75V6.275c0-2.017 1.195-3.131 3.022-3.131.876 0 1.791.157 1.791.157v1.98h-1.009c-.993 0-1.303.621-1.303 1.258v1.51h2.218l-.354 2.326H9.25V16c3.824-.604 6.75-3.934 6.75-7.951z" />
                                                </svg></a>
                                        </div>
                                    </div>
                                    <div class="contact-ctn">
                                        <div class="contact-ad-hd">
                                            <h2>${ participant.getName() } ${ participant.getFname() }</h2>
                                            <p class="ctn-ads">${ participant.getAge() }years old <c:if
                                                    test="${ participant.getSexe() == 'M' }"><span
                                                        style="color : white; background : #F44336;"
                                                        class="badge rounded-pill bg-primary">Male</span></c:if>
                                                <c:if test="${ participant.getSexe() == 'F' }"><span
                                                        style="color : white; background : #00C292;"
                                                        class="badge rounded-pill bg-primary">Female</span></c:if>
                                            </p>
                                        </div>
                                        <p><span class="text-info ">Phone number:</span> ${ participant.getTel() }</p>
                                        <p><span class="text-info ">Academic level:</span> ${ participant.getLevel() }
                                        </p>
                                        <p><span class="text-info ">Institution:</span> ${ participant.getInstitution()
                                            }</p>
                                    </div>
                                    <div class="animation-btn">
                                        <a
                                            href="${pageContext.request.contextPath }/participant?id_p=${participant.getId()}"><button
                                                class="btn ant-nk-st bounce-ac">More Informations</button></a>
                                    </div>
                                </div>
                            </div>
                        </c:forEach>
                    </div>
                </div>
            </div>
            <!-- Contact area End-->

        </div>
        <!-- End of Particpant Table -->




        <!-- Start of Enterprise Table -->
        <div id="enterprise_requests">

            <!-- Breadcomb area Start-->
            <div class="breadcomb-area">
                <div class="container">
                    <div class="row">
                        <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 ">
                            <div class="breadcomb-list">
                                <div class="row">
                                    <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
                                        <div class="breadcomb-wp">
                                            <div class="breadcomb-icon">
                                                <i class="notika-icon notika-support"></i>
                                            </div>
                                            <div class="breadcomb-ctn">
                                                <h2>All the Enterprises</h2>
                                                <p>Here is a detailed list of the demnands of enterprises </p>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="col-lg-6 col-md-6 col-sm-6 col-xs-3">

                                        <div class="breadcomb-report">
                                            <!---  <div class="dropdown-trig-sgn">
                                            <button class="btn triger-zoomIn" data-toggle="dropdown"><i class="notika-icon notika-sent"></i></button>
                                            <ul class="dropdown-menu triger-zoomIn-dp">
                                                <li role="presentation"><a role="menuitem" tabindex="-1" href="#"><i class="notika-icon notika-house"> </i> PDF File</a></li>
                                                <li role="presentation"><a role="menuitem" tabindex="-1" href="#"><i class="notika-icon notika-star"> </i> CSV File</a>
                                                </li>
                                            </ul>
                                        </div> -->

                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- Breadcomb area End-->

            <!-- Data Table area Start-->
            <div class="data-table-area">
                <div class="container">
                    <div class="row">
                        <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                            <div class="data-table-list">
                                <div class="basic-tb-hd">
                                    <h2>Data Table</h2>
                                    <p>This contains all the informations about Enterprises</p>
                                </div>
                                <div id="enterprise_tab" class="table-responsive">
                                    <table id="data-table-basic-enterprise" class="table table-striped">
                                        <thead>
                                            <tr>
                                                <th>Name of Representative</th>
                                                <th>Name of Enterprise</th>
                                                <th>Email</th>
                                                <th>Phone number</th>
                                                <th>Actions</th>

                                            </tr>
                                        </thead>
                                        <tbody>
                                            <c:forEach items="${ RepsWaiting }" var="resp">
                                                <tr id="nonApproved${ resp.getId() }">
                                                    <td>${ resp.getName() } ${ resp.getFname() }</td>
                                                    <td>${ resp.getEntreprise().getName() }</td>
                                                    <td>${ resp.getEmail() }</td>
                                                    <td>${ resp.getTel() }</td>
                                                    <td>
                                                        <div class="button-icon-btn sm-res-mg-t-30">
                                                            <button data-toggle="tooltip" data-placement="top"
                                                                title="Accept demand"
                                                                class="approveRep btn btn-sm btn-success success-icon-notika btn-reco-mg btn-button-mg"
                                                                onclick="showModal('${ resp.getId() }','${ resp.getEmail() }',1)"><i
                                                                    class="notika-icon notika-checked"></i></button>
                                                            <button
                                                                class="rejectRep btn btn-sm btn-danger danger-icon-notika btn-reco-mg btn-button-mg"
                                                                onclick="showModal('${ resp.getId() }','${ resp.getEmail() }',0)"
                                                                data-toggle="tooltip" data-placement="top"
                                                                title="Reject demand"><i
                                                                    class="notika-icon notika-close"></i></button>
                                                            <a
                                                                href="${pageContext.request.contextPath }/workshop?Rep=${resp.getId()}"><button
                                                                    type="submit" name="info" data-toggle="tooltip"
                                                                    data-placement="top" title="View details"
                                                                    class="btn btn-sm btn-primary primary-icon-notika btn-reco-mg btn-button-mg"><i
                                                                        class="notika-icon notika-menu"></i></button></a>
                                                        </div>
                                                    </td>

                                                </tr>
                                            </c:forEach>

                                        </tbody>
                                        <tfoot>
                                            <tr>
                                                <th>Name of Representative</th>
                                                <th>Name of Enterprise</th>
                                                <th>Domain</th>
                                                <th>Location</th>
                                                <th>Actions</th>

                                            </tr>
                                        </tfoot>
                                    </table>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- Data Table area End-->

        </div>
        <!-- End of Enterprise demands Table -->



        <!-- Start of Descriptive Charts -->
        <div id="descriptive_charts">

            <!-- Breadcomb area Start-->
            <div class="breadcomb-area">
                <div class="container">
                    <div class="row">
                        <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 ">
                            <div class="breadcomb-list">
                                <div class="row">
                                    <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
                                        <div class="breadcomb-wp">
                                            <div class="breadcomb-icon">
                                                <i class="notika-icon notika-support"></i>
                                            </div>
                                            <div class="breadcomb-ctn">
                                                <h2>Descriptive Charts</h2>
                                                <p>Here are some charts to help you know more about the particpants, the
                                                    enterprises etc.. </p>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="col-lg-6 col-md-6 col-sm-6 col-xs-3">

                                        <div class="breadcomb-report">
                                            <!---  <div class="dropdown-trig-sgn">
                                            <button class="btn triger-zoomIn" data-toggle="dropdown"><i class="notika-icon notika-sent"></i></button>
                                            <ul class="dropdown-menu triger-zoomIn-dp">
                                                <li role="presentation"><a role="menuitem" tabindex="-1" href="#"><i class="notika-icon notika-house"> </i> PDF File</a></li>
                                                <li role="presentation"><a role="menuitem" tabindex="-1" href="#"><i class="notika-icon notika-star"> </i> CSV File</a>
                                                </li>
                                            </ul>
                                        </div> -->
                                            <button id="btnExportBarCharts" data-toggle="tooltip" data-placement="left"
                                                title="Export to PDF" class="btn"><i
                                                    class="notika-icon notika-sent"></i></button>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- Breadcomb area End-->

            <!-- Bar Chart area End-->
            <div class="bar-chart-area">
                <div id="allBarCharts" class="container">
                    <div class="row">
                        <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
                            <div class="bar-chart-wp">
                                <canvas height="140vh" width="180vw" id="barchart1"></canvas>
                            </div>
                        </div>
                        <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
                            <div class="bar-chart-wp sm-res-mg-t-30 chart-display-nn">
                                <canvas height="140vh" width="180vw" id="barchart2"></canvas>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
                            <div class="bar-chart-wp mg-t-30 chart-display-nn">
                                <canvas height="140vh" width="180vw" id="barchart3"></canvas>
                            </div>
                        </div>
                        <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
                            <div class="bar-chart-wp mg-t-30 chart-display-nn">
                                <canvas height="140vh" width="180vw" id="barchart4"></canvas>
                            </div>
                        </div>
                        <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
                            <div class="bar-chart-wp mg-t-30 chart-display-nn">
                                <canvas height="140vh" width="180vw" id="barchart5"></canvas>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- Bar Chart area End-->

        </div>
        <!-- End of Decriptive Charts -->


        <!-- Start of Line Charts -->
        <div id="line_charts">

            <!-- Breadcomb area Start-->
            <div class="breadcomb-area">
                <div class="container">
                    <div class="row">
                        <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 ">
                            <div class="breadcomb-list">
                                <div class="row">
                                    <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
                                        <div class="breadcomb-wp">
                                            <div class="breadcomb-icon">
                                                <i class="notika-icon notika-support"></i>
                                            </div>
                                            <div class="breadcomb-ctn">
                                                <h2>Line Charts</h2>
                                                <p>Here is a detailed list of the enterprises demands </p>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="col-lg-6 col-md-6 col-sm-6 col-xs-3">

                                        <div class="breadcomb-report">
                                            <!---  <div class="dropdown-trig-sgn">
                                            <button class="btn triger-zoomIn" data-toggle="dropdown"><i class="notika-icon notika-sent"></i></button>
                                            <ul class="dropdown-menu triger-zoomIn-dp">
                                                <li role="presentation"><a role="menuitem" tabindex="-1" href="#"><i class="notika-icon notika-house"> </i> PDF File</a></li>
                                                <li role="presentation"><a role="menuitem" tabindex="-1" href="#"><i class="notika-icon notika-star"> </i> CSV File</a>
                                                </li>
                                            </ul>
                                        </div> -->

                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- Breadcomb area End-->



        </div>
        <!-- End of Line Charts -->


        <!-- Start of Compose mail -->

        <div id="compose_mail">

            <!-- Breadcomb area Start-->
            <div class="breadcomb-area">
                <div class="container">
                    <div class="row">
                        <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                            <div class="breadcomb-list">
                                <div class="row">
                                    <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
                                        <div class="breadcomb-wp">
                                            <div class="breadcomb-icon">
                                                <i class="notika-icon notika-mail"></i>
                                            </div>
                                            <div class="breadcomb-ctn">
                                                <h2>Speakers</h2>
                                                <p>Here is a detailled list of all Speakers</p>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-lg-6 col-md-6 col-sm-6 col-xs-3">
                                        <div class="breadcomb-report">

                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- Breadcomb area End-->
            <!-- Compose email area Start-->
            <div class="inbox-area">
                <div class="container">
                    <div class="row">

                        <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                            <div class="view-mail-list sm-res-mg-t-30">
                                <div class="view-mail-hd">
                                    <div class="view-mail-hrd">
                                        <h2>Add Speaker</h2>
                                    </div>
                                </div>
                                <form id="addSpeakerForm" action="#" method="post">
                                    <div class="cmp-int mg-t-20">
                                        <div class="row">

                                            <div class="col-lg-4 col-md-4 col-sm-12 col-xs-12">
                                                <div class="form-group">
                                                    <div class="nk-int-st cmp-int-in cmp-email-over">
                                                        <input type="text" name="nameSpeaker" class="form-control"
                                                            placeholder="Name of Speaker" required />
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-lg-4 col-md-4 col-sm-12 col-xs-12">
                                                <div class="form-group">
                                                    <div class="nk-int-st cmp-int-in cmp-email-over">
                                                        <input type="text" name="fnameSpeaker" class="form-control"
                                                            placeholder="Family Name of Speaker" required />
                                                    </div>
                                                </div>
                                            </div>

                                            <div class="col-lg-4 col-md-4 col-sm-12 col-xs-12">
                                                <label style="width:100%;" class="file">
                                                    <input type="file" name="imageSpeaker"
                                                        aria-label="File browser example" required>
                                                    <span class="file-custom"></span>
                                                </label>
                                            </div>
                                        </div>
                                        <div class="row">

                                            <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                                                <div class="form-group">
                                                    <div class="nk-int-st cmp-int-in cmp-email-over">
                                                        <input type="text" name="descSpeaker" class="form-control"
                                                            placeholder="Description of the speaker" required />
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                                                <button name="addSpeakerBtn" type="submit"
                                                    class="btn btn-primary notika-btn-primary waves-effect">Add
                                                    Speaker</button>
                                            </div>
                                        </div>
                                    </div>
                                </form>


                                <div style="margin:-20px; margin-top:40px; " class="cmp-int-box mg-t-20">
                                    <div class="data-table-list">
                                        <div class="basic-tb-hd">
                                            <h2>All speakers</h2>
                                        </div>
                                        <div id="participant_tab" class="table-responsive">
                                            <table id="data-table-basic-speaker" class="table table-striped">
                                                <thead>
                                                    <tr>
                                                        <th>Image</th>
                                                        <th>Name and Family Name</th>
                                                        <th>Desription</th>

                                                    </tr>
                                                </thead>
                                                <tbody>
                                                    <c:forEach items="${ speakers }" var="speaker">
                                                        <tr>
                                                            <td><img src="${pageContext.request.contextPath}/assets/img/speakers/${speaker.getImage()}"
                                                                    alt="Speaker" class="img-fluid"
                                                                    style="width:45px;height:45px; border-radius:50%;">
                                                            </td>
                                                            <td>${ speaker.getName() } ${ speaker.getFname() }</td>
                                                            <td>${ speaker.getDescription() }</td>
                                                        </tr>
                                                    </c:forEach>
                                                </tbody>
                                                <tfoot>
                                                    <tr>
                                                        <th>Image</th>
                                                        <th>Name and Family Name</th>
                                                        <th>Desription</th>
                                                    </tr>
                                                </tfoot>
                                            </table>
                                        </div>
                                    </div>

                                </div>


                            </div>
                        </div>

                    </div>
                </div>
            </div>
            <!-- Compose email area End-->

        </div>



        <!-- ENd of Compose mail -->


        <!--  Start of Mails -->
        <!-- Inbox area Start-->
        <div id="mails">

            <!-- Breadcomb area Start-->
            <div class="breadcomb-area">
                <div class="container">
                    <div class="row">
                        <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 ">
                            <div class="breadcomb-list">
                                <div class="row">
                                    <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
                                        <div class="breadcomb-wp">
                                            <div class="breadcomb-icon">
                                                <i class="notika-icon notika-support"></i>
                                            </div>
                                            <div class="breadcomb-ctn">
                                                <h2>Activities</h2>
                                                <p>Here is a detailed list of all the activities</p>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="col-lg-6 col-md-6 col-sm-6 col-xs-3">

                                        <div class="breadcomb-report">
                                            <!---  <div class="dropdown-trig-sgn">
                                            <button class="btn triger-zoomIn" data-toggle="dropdown"><i class="notika-icon notika-sent"></i></button>
                                            <ul class="dropdown-menu triger-zoomIn-dp">
                                                <li role="presentation"><a role="menuitem" tabindex="-1" href="#"><i class="notika-icon notika-house"> </i> PDF File</a></li>
                                                <li role="presentation"><a role="menuitem" tabindex="-1" href="#"><i class="notika-icon notika-star"> </i> CSV File</a>
                                                </li>
                                            </ul>
                                        </div> -->

                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- Breadcomb area End-->
            <div class="inbox-area">
                <div class="container">
                    <div class="row">

                        <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                            <div class="view-mail-list sm-res-mg-t-30">
                                <div class="view-mail-hd">
                                    <div class="view-mail-hrd">
                                        <h2>Upadte Activities</h2>
                                    </div>
                                </div>

                                <form id="addActivityForm" action="#" method="post">
                                    <div class="cmp-int mg-t-20">
                                        <div class="row">

                                            <div class="col-lg-6 col-md-6 col-sm-12 col-xs-12">
                                                <div class="nk-int-mk sl-dp-mn">
                                                    <h2>Activity</h2>
                                                </div>
                                                <div class="bootstrap-select fm-cmp-mg">
                                                    <select name="activityId" class="selectpicker">
                                                        <c:forEach items="${ activities1 }" var="activity">
                                                            <c:if test="${ activity.getSpeaker() != null }">
                                                                <option value="${ activity.getId() }">${
                                                                    activity.getName() } </option>
                                                            </c:if>

                                                        </c:forEach>
                                                        <c:forEach items="${ activities2 }" var="activity">
                                                            <c:if test="${ activity.getSpeaker() != null }">
                                                                <option value="${ activity.getId() }">${
                                                                    activity.getName() } </option>
                                                            </c:if>

                                                        </c:forEach>



                                                    </select>
                                                </div>
                                            </div>

                                            <div class="col-lg-6 col-md-6 col-sm-12 col-xs-12">
                                                <div class="nk-int-mk sl-dp-mn">
                                                    <h2>Speaker</h2>
                                                </div>
                                                <div class="bootstrap-select fm-cmp-mg">
                                                    <select name="activitySpeaker" class="selectpicker">
                                                        <c:forEach items="${ speakers }" var="speaker">

                                                            <option value="${ speaker.getId() }">${ speaker.getName() }
                                                                ${ speaker.getFname() }</option>

                                                        </c:forEach>

                                                    </select>
                                                </div>
                                            </div>
                                        </div> <br>
                                        <div class="row">

                                            <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                                                <div class="form-group">
                                                    <div class="nk-int-st cmp-int-in cmp-email-over">
                                                        <input type="text" name="activityName" class="form-control"
                                                            placeholder="    New Activity Name" required />
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                                                <button name="addActivityBtn" type="submit"
                                                    class="btn btn-primary notika-btn-primary waves-effect">Update
                                                    Activity</button>
                                            </div>
                                        </div>
                                    </div>
                                </form>


                                <div style="margin:-20px; margin-top:40px; " class="cmp-int-box mg-t-20">
                                    <div class="data-table-list">
                                        <div class="basic-tb-hd">
                                            <h2>All Activities</h2>
                                        </div>
                                        <div id="participant_tab" class="table-responsive">
                                            <table id="data-table-basic-activity" class="table table-striped">
                                                <thead>
                                                    <tr>
                                                        <th>Name</th>
                                                        <th>Timing</th>
                                                        <th>Speaker</th>
                                                        <th>Day</th>
                                                    </tr>
                                                </thead>
                                                <tbody>
                                                    <c:forEach items="${ activities1 }" var="activity">
                                                        <tr>
                                                            <td>${ activity.getName() }</td>
                                                            <td> <span style="color : white; background : #FF9800;"
                                                                    class="badge rounded-pill bg-primary">${
                                                                    activity.getStartTime() } - ${ activity.getEndTime()
                                                                    }</span> </td>
                                                            <td>${ activity.getSpeaker().getName() } ${
                                                                activity.getSpeaker().getFname() }
                                                                <c:if test="${ activity.getSpeaker() == null }"><span>
                                                                        <i>No speaker</i> </span></c:if>
                                                            </td>
                                                            <td> <span style="color : white; background : #00C292;"
                                                                    class="badge rounded-pill bg-primary">Day 1</span>
                                                            </td>
                                                        </tr>
                                                    </c:forEach>
                                                    <c:forEach items="${ activities2 }" var="activity">
                                                        <tr>
                                                            <td>${ activity.getName() }</td>
                                                            <td> <span style="color : white; background : #FF9800;"
                                                                    class="badge rounded-pill bg-primary">${
                                                                    activity.getStartTime() } - ${ activity.getEndTime()
                                                                    }</span> </td>
                                                            <td>${ activity.getSpeaker().getName() } ${
                                                                activity.getSpeaker().getFname() }
                                                                <c:if test="${ activity.getSpeaker() == null }"><span>
                                                                        <i>No speaker</i> </span></c:if>
                                                            </td>
                                                            <td> <span style="color : white; background : #F44336;"
                                                                    class="badge rounded-pill bg-primary">Day 2</span>
                                                            </td>
                                                        </tr>
                                                    </c:forEach>
                                                </tbody>
                                                <tfoot>
                                                    <tr>
                                                        <th>Name</th>
                                                        <th>Timing</th>
                                                        <th>Speaker</th>
                                                        <th>Day</th>
                                                    </tr>
                                                </tfoot>
                                            </table>
                                        </div>
                                    </div>

                                </div>


                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Inbox area End-->
        <!-- End of Mails-->
        <!-- Start of workshops -->
        <div id="workshops">

            <!-- Breadcomb area Start-->
            <div class="breadcomb-area">
                <div class="container">
                    <div class="row">
                        <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                            <div class="breadcomb-list">
                                <div class="row">
                                    <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
                                        <div class="breadcomb-wp">
                                            <div class="breadcomb-icon">
                                                <i class="notika-icon notika-edit"></i>
                                            </div>
                                            <div class="breadcomb-ctn">
                                                <h2>Workshops</h2>
                                                <p>Workshops Available for the Event</p>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-lg-6 col-md-6 col-sm-6 col-xs-3">
                                        <div class="breadcomb-report">

                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- Breadcomb area End-->

            <div class="animation-area">
                <div class="container">
                    <div class="row">
                        <c:forEach items="${ appReps }" var="resp">
                            <div class="col-lg-4 col-md-4 col-sm-4 col-xs-12" style="margin-bottom:10px">
                                <div class="animation-single-int">
                                    <div class="animation-ctn-hd d-flex">
                                        <div
                                            style="display : flex; align-items: center; justify-content : space-between; ">
                                            <h2 class="font-weight-bold" style="float : right; clear : both;">${
                                                resp.getEntreprise().getName()}</h2>
                                            <img style="float : left; clear : both; height:100px;width:100px;"
                                                src="${pageContext.request.contextPath}/assets/img/EnterpriseLogos/${resp.getEntreprise().getLogo()}"
                                                alt="Image">
                                        </div>

                                    </div>
                                    <div class="animation-img mg-b-15">
                                        <img class="animate-one"
                                            src="${pageContext.request.contextPath}/assets/img/EnterpriseBanners/${resp.getEntreprise().getBannerImage()}"
                                            alt="" style="height:90px;width:100%;" />
                                    </div>

                                    <p>Representative: <strong class="text-danger"> <i> ${ resp.getName() } ${
                                                resp.getFname() } </i></strong></p>

                                    <div class="animation-action">
                                        <div class="row">
                                            <div class="col-lg-12">
                                                <p>Domain: <strong class="text-danger">${
                                                        resp.getEntreprise().getDomain() }</strong></p>
                                                <div class="animation-btn">
                                                    <a
                                                        href="${pageContext.request.contextPath }/workshop?Rep=${resp.getId()}"><button
                                                            class="btn ant-nk-st bounce-ac">More Details</button></a>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </c:forEach>
                        <c:forEach items="${ RepsWaiting }" var="resp">
                            <!-- TODO: UNTIL I FIGURE OUT HOW TO SEND JSON AND RECIEVE IT -->
                            <div class="col-lg-4 col-md-4 col-sm-4 col-xs-12" id="approved${ resp.getId() }"
                                style="display:none;">
                                <div class="animation-single-int">
                                    <div class="animation-ctn-hd d-flex">
                                        <div
                                            style="display : flex; align-items: center; justify-content : space-between; ">
                                            <h2 class="font-weight-bold" style="float : right; clear : both;">${
                                                resp.getEntreprise().getName()}</h2>
                                            <img style="float : left; clear : both; height:100px;width:100px;"
                                                src="${pageContext.request.contextPath}/assets/img/EnterpriseLogos/${resp.getEntreprise().getLogo()}"
                                                alt="Image">
                                        </div>

                                    </div>
                                    <div class="animation-img mg-b-15">
                                        <img class="animate-one"
                                            src="${pageContext.request.contextPath}/assets/img/EnterpriseBanners/${resp.getEntreprise().getBannerImage()}"
                                            alt="" />
                                    </div>

                                    <p>Representative: <strong class="text-danger"> <i> ${ resp.getName() } ${
                                                resp.getFname() } </i></strong></p>

                                    <div class="animation-action">
                                        <div class="row">
                                            <div class="col-lg-12">
                                                <p>Domain: <strong class="text-danger">${
                                                        resp.getEntreprise().getDomain() }</strong></p>
                                                <div class="animation-btn">
                                                    <a
                                                        href="${pageContext.request.contextPath }/workshop?Rep=${resp.getId()}"><button
                                                            class="btn ant-nk-st bounce-ac">More Details</button></a>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </c:forEach>
                    </div> <br>

                </div>
            </div>

        </div>
        <!-- End of Workshops -->


        <div class="modal fade" id="acceptModal" role="dialog">
            <div class="modal-dialog modal-sm">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal">&times;</button>
                    </div>
                    <div class="modal-body">
                        <h2>Are you sure ?</h2>
                        <p>Do you really want to accept this enterprise in the forum ? All his informations will then be
                            available to all the visitors of the forum</p>
                    </div>
                    <div class="modal-footer">
                        <input id="confirmValue" type="hidden" name="" value="0">
                        <button onclick="gererDemande(1)" type="button" class="btn btn-default">Accept</button>
                        <button type="button" class="btn btn-default" data-dismiss="modal">Cancel</button>
                    </div>
                </div>
            </div>
        </div>
        <div class="modal fade" id="rejectModal" role="dialog">
            <div class="modal-dialog modal-sm">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal">&times;</button>
                    </div>
                    <div class="modal-body">
                        <h2>Are you sure ?</h2>
                        <p>Do you really want to reject this enterprise from attending the event</p>
                    </div>
                    <div class="modal-footer">
                        <input id="confirmValue" type="hidden" name="" value="0">
                        <button onclick="gererDemande(0)" type="button" class="btn btn-default">Reject</button>
                        <button type="button" class="btn btn-default" data-dismiss="modal">Cancel</button>
                    </div>
                </div>
            </div>
        </div>


        <!-- Start Footer area-->
        <div class="footer-copyright-area">
            <div class="container">
                <div class="row">
                    <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                        <div class="footer-copy-right">
                            <p>Copyright � ENSAK Forum 2021 . All rights reserved. <br> Designed in <a
                                    href="#">Morroco</a>.</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- End Footer area-->


        <!-- jquery
		============================================ -->
        <script src="${pageContext.request.contextPath}/DashboardAssets/js/vendor/jquery-1.12.4.min.js"></script>
        <script>

            $("#addSpeakerForm").submit(function (e) {
                e.preventDefault();
                $.ajax({
                    type: "post",
                    url: "#",
                    data: new FormData(this),
                    contentType: false,
                    processData: false,
                    dataType: 'text',
                    success: function (data) {
                        if (data == "good") {
                            swal("Good", "Speaker added!", "success");
                        } else {
                            swal("Oops", "An error Occured, Please try Again!", "error");
                        }
                    }
                });
            });


            $(document).on("submit", "#addActivityForm", function (event) {

                var $form = $(this);

                $.post($form.attr("action"), $form.serialize(), function (data) {

                    console.log(data);

                    if (data == "good") {
                        swal("Good", "Activity Updated!", "success");
                    } else {
                        swal("Oops", "An error occured, Please try again!", "error");
                    }

                });

                event.preventDefault(); // Important! Prevents submitting the form.
            });



            function random_rgba() {
                var o = Math.round, r = Math.random, s = 255;
                /*  return 'rgba(' + o(r()*s) + ',' + o(r()*s) + ',' + o(r()*s) + ',' + r().toFixed(1) + ')'; */
                return 'rgba(' + 220 + ',' + o(r() * s) + ',' + o(r() * s) + ',' + 0.65 + ')';
            }

            let colors = ['rgba(255, 99, 132, 0.2)',
                'rgb(50,205,50, 0.2)',
                'rgba(255, 206, 86, 0.2)',
                'rgba(75, 192, 192, 0.2)',
                'rgba(255, 99, 132, 0.2)',
                'rgb(50,205,50, 0.2)',
                'rgba(255, 206, 86, 0.2)',
                'rgba(255, 206, 86, 0.2)',
                'rgba(255, 206, 86, 0.2)']

            let borderColors = ['rgba(255, 99, 132, 0.8)',
                'rgb(50,205,50, 0.8)',
                'rgba(255, 206, 86, 0.8)',
                'rgba(75, 192, 192, 0.8)',
                'rgba(255, 99, 132, 0.8)',
                'rgb(50,205,50, 0.8)',
                'rgba(255, 206, 86, 0.8)',
                'rgba(255, 206, 86, 0.8)',
                'rgba(255, 206, 86, 0.8)']


            $("#btn_descriptive_charts , #btn_descriptive_charts1").click(function () {
                $("#enterprise_requests").fadeOut(500);
                $("#participant_table").fadeOut(500);
                $("#participant_profils").fadeOut(500);
                $("#workshops").fadeOut(500);
                $("#line_charts").fadeOut(500);
                $("#compose_mail").fadeOut(500);
                $("#mails").fadeOut(500);


                /*----------------------------------------*/
                /*  1.  Gender of participants
                /*----------------------------------------*/



                var ctx = document.getElementById("barchart1");
                var genderStats = JSON.parse('${ genderStats }');

                var genders = Object.keys(genderStats)
                var genderNumbers = []
                var colors_gender = []
                var colors_gender_border = []
                for (let i = 0; i < genders.length; i++) {
                    genderNumbers[i] = genderStats[genders[i]]
                    colors_gender[i] = colors[i];
                    colors_gender_border[i] = borderColors[i];
                }

                var barchart1 = new Chart(ctx, {
                    type: 'bar',
                    data: {
                        labels: genders,
                        datasets: [{
                            label: 'Gender of participants',
                            data: genderNumbers,
                            backgroundColor: colors_gender,
                            borderColor: colors_gender_border,
                            borderWidth: 1
                        }]
                    },
                    options: {
                        scales: {
                            yAxes: [{
                                ticks: {
                                    beginAtZero: true
                                }
                            }]
                        }
                    }
                });

                /*----------------------------------------*/
                /*  2.  Academic Level Of Participants
                /*----------------------------------------*/
                var ctx = document.getElementById("barchart2");
                var levelStats = JSON.parse('${levelStats}');

                var levels = Object.keys(levelStats)
                var levelNumbers = []
                var colorLevels = []
                var colorLevelsBorder = []
                for (let i = 0; i < levels.length; i++) {
                    levelNumbers[i] = levelStats[levels[i]]
                    colorLevels[i] = colors[i];
                    colorLevelsBorder[i] = borderColors[i];
                }
                var barchart2 = new Chart(ctx, {
                    type: 'bar',
                    data: {
                        labels: levels,
                        datasets: [{
                            label: 'Academic Level Of Participants',
                            data: levelNumbers,
                            borderWidth: 1,
                            backgroundColor: colorLevels,
                            borderColor: colorLevelsBorder,
                            borderWidth: 1
                        }]
                    },
                    options: {
                        scales: {
                            yAxes: [{
                                ticks: {
                                    beginAtZero: true
                                }
                            }]
                        }
                    }
                });
                /*----------------------------------------*/
                /*  3.  Institutions Of Participants
                /*----------------------------------------*/
                var ctx = document.getElementById("barchart3");
                var instStats = JSON.parse('${ instStats }');
                var institutions = Object.keys(instStats)
                var instNumbers = []
                var colorInsts = []
                var colorInstsBorder = []
                for (let i = 0; i < institutions.length; i++) {
                    instNumbers[i] = instStats[institutions[i]]
                    colorInsts[i] = colors[i];
                    colorInstsBorder[i] = borderColors[i];
                }
                var barchart2 = new Chart(ctx, {
                    type: 'bar',
                    data: {
                        labels: institutions,
                        datasets: [{
                            label: 'Institutions Of Participants',
                            data: instNumbers,
                            borderWidth: 1,
                            backgroundColor: colorInsts,
                            borderColor: colorInstsBorder,
                            borderWidth: 1
                        }]
                    },
                    options: {
                        scales: {
                            yAxes: [{
                                ticks: {
                                    beginAtZero: true
                                }
                            }]
                        }
                    }
                });

                /*----------------------------------------*/
                /*  4.  Stand Activity: Resumes
                /*----------------------------------------*/
                var ctx = document.getElementById("barchart4");
                var resumeStats = JSON.parse('${ resumeStats }');
                var stands = Object.keys(resumeStats)
                var resumeNumbers = []
                var colorStands = []
                var colorStandsBorder = []
                for (let i = 0; i < stands.length; i++) {
                    resumeNumbers[i] = resumeStats[stands[i]]
                    colorStands[i] = colors[i];
                    colorStandsBorder[i] = borderColors[i];
                }
                var barchart4 = new Chart(ctx, {
                    type: 'bar',
                    data: {
                        labels: stands,
                        datasets: [{
                            label: 'Stand Activity: Resumes',
                            data: resumeNumbers,
                            borderWidth: 1,
                            backgroundColor: colorStands,
                            borderColor: colorStandsBorder,
                            borderWidth: 1
                        }]
                    },
                    options: {
                        scales: {
                            yAxes: [{
                                ticks: {
                                    beginAtZero: true
                                }
                            }]
                        }
                    }
                });

                /*----------------------------------------*/
                /*  5.  Stand Activity: Messages
                /*----------------------------------------*/
                var ctx = document.getElementById("barchart5");
                var messagesStats = JSON.parse('${ messagesStats }');
                var stands = Object.keys(messagesStats)
                var msgsNumbers = []
                var colorStands = []
                var colorStandsBorder = []
                for (let i = 0; i < stands.length; i++) {
                    msgsNumbers[i] = messagesStats[stands[i]]
                    colorStands[i] = colors[i];
                    colorStandsBorder[i] = borderColors[i];
                }
                var barchart4 = new Chart(ctx, {
                    type: 'bar',
                    data: {
                        labels: stands,
                        datasets: [{
                            label: 'Stand Activity: Messages',
                            data: msgsNumbers,
                            borderWidth: 1,
                            backgroundColor: colorStands,
                            borderColor: colorStandsBorder,
                            borderWidth: 1
                        }]
                    },
                    options: {
                        scales: {
                            yAxes: [{
                                ticks: {
                                    beginAtZero: true
                                }
                            }]
                        }
                    }
                });

                $("#descriptive_charts").fadeIn(1000);
            });


            $("#btnExportBarCharts").click(function () {
                html2canvas($('#allBarCharts')[0], {
                    onrendered: function (canvas) {
                        var data = canvas.toDataURL();
                        var docDefinition = {
                            content: [{
                                image: data,
                                width: 500
                            }]
                        };
                        pdfMake.createPdf(docDefinition).download("BarCharts.pdf");
                    }
                });
            });

            function goBack() {
                window.history.back();
            }

        </script>
        <!-- bootstrap JS
		============================================ -->
        <script src="${pageContext.request.contextPath}/DashboardAssets/js/bootstrap.min.js"></script>
        <!-- wow JS
		============================================ -->
        <script src="${pageContext.request.contextPath}/DashboardAssets/js/wow.min.js"></script>
        <!-- price-slider JS
		============================================ 
    <script src="${pageContext.request.contextPath}/DashboardAssets/js/jquery-price-slider.js"></script> -->
        <!-- owl.carousel JS
		============================================ -->
        <script src="${pageContext.request.contextPath}/DashboardAssets/js/owl.carousel.min.js"></script>
        <!-- scrollUp JS
		============================================ -->
        <script src="${pageContext.request.contextPath}/DashboardAssets/js/jquery.scrollUp.min.js"></script>
        <!-- meanmenu JS
		============================================ -->
        <script src="${pageContext.request.contextPath}/DashboardAssets/js/meanmenu/jquery.meanmenu.js"></script>
        <!-- counterup JS
		============================================ 
    <script src="${pageContext.request.contextPath}/DashboardAssets/js/counterup/jquery.counterup.min.js"></script>
    <script src="${pageContext.request.contextPath}/DashboardAssets/js/counterup/waypoints.min.js"></script>
    <script src="${pageContext.request.contextPath}/DashboardAssets/js/counterup/counterup-active.js"></script> -->
        <!-- mCustomScrollbar JS
		============================================ -->
        <script
            src="${pageContext.request.contextPath}/DashboardAssets/js/scrollbar/jquery.mCustomScrollbar.concat.min.js"></script>
        <!-- jvectormap JS
		============================================
    <script src="${pageContext.request.contextPath}/DashboardAssets/js/jvectormap/jquery-jvectormap-2.0.2.min.js"></script>
    <script src="${pageContext.request.contextPath}/DashboardAssets/js/jvectormap/jquery-jvectormap-world-mill-en.js"></script>
    <script src="${pageContext.request.contextPath}/DashboardAssets/js/jvectormap/jvectormap-active.js"></script>  -->
        <!-- sparkline JS
		============================================ -->
        <script src="${pageContext.request.contextPath}/DashboardAssets/js/sparkline/jquery.sparkline.min.js"></script>
        <script src="${pageContext.request.contextPath}/DashboardAssets/js/sparkline/sparkline-active.js"></script>
        <!-- sparkline JS
		============================================ 
    <script src="${pageContext.request.contextPath}/DashboardAssets/js/flot/jquery.flot.js"></script>
    <script src="${pageContext.request.contextPath}/DashboardAssets/js/flot/jquery.flot.resize.js"></script>
    <script src="${pageContext.request.contextPath}/DashboardAssets/js/flot/curvedLines.js"></script>
    <script src="${pageContext.request.contextPath}/DashboardAssets/js/flot/flot-active.js"></script> -->
        <!-- knob JS
		============================================ 
    <script src="${pageContext.request.contextPath}/DashboardAssets/js/knob/jquery.knob.js"></script>
    <script src="${pageContext.request.contextPath}/DashboardAssets/js/knob/jquery.appear.js"></script>
    <script src="${pageContext.request.contextPath}/DashboardAssets/js/knob/knob-active.js"></script> -->
        <!--  wave JS
		============================================ 
    <script src="${pageContext.request.contextPath}/DashboardAssets/js/wave/waves.min.js"></script>
    <script src="${pageContext.request.contextPath}/DashboardAssets/js/wave/wave-active.js"></script> -->
        <!--  todo JS
		============================================ 
    <script src="${pageContext.request.contextPath}/DashboardAssets/js/todo/jquery.todo.js"></script> -->
        <!-- plugins JS
		============================================ -->
        <script src="${pageContext.request.contextPath}/DashboardAssets/js/plugins.js"></script>
        <!--  Chat JS
		============================================ 
    <script src="${pageContext.request.contextPath}/DashboardAssets/js/chat/moment.min.js"></script>
    <script src="${pageContext.request.contextPath}/DashboardAssets/js/chat/jquery.chat.js"></script> -->
        <!-- main JS
		============================================ -->
        <script src="${pageContext.request.contextPath}/DashboardAssets/js/main.js"></script>
        <!-- tawk chat JS
		============================================ 
    <script src="${pageContext.request.contextPath}/DashboardAssets/js/tawk-chat.js"></script> -->

        <!--  notification JS
		============================================ -->
        <script
            src="${pageContext.request.contextPath}/DashboardAssets/js/notification/bootstrap-growl.min.js"></script>
        <script
            src="${pageContext.request.contextPath}/DashboardAssets/js/notification/notification-active.js"></script>

        <!--  Chat JS
		============================================ -->
        <script src="${pageContext.request.contextPath}/DashboardAssets/js/chat/jquery.chat.js"></script>
        <!-- Charts JS
            ============================================ -->
        <script src="${pageContext.request.contextPath}/DashboardAssets/js/charts/Chart.js"></script>
        <script src="${pageContext.request.contextPath}/DashboardAssets/js/charts/bar-chart.js"></script>
        <script src="${pageContext.request.contextPath}/DashboardAssets/js/charts/line-chart.js"></script>



        <!-- Data Table JS
		============================================ -->
        <script
            src="${pageContext.request.contextPath}/DashboardAssets/js/data-table/jquery.dataTables.min.js"></script>
        <script src="${pageContext.request.contextPath}/DashboardAssets/js/data-table/data-table-act.js"></script>

        <script>
            $("#data-table-basic-enterprise").dataTable();
            $("#data-table-basic").dataTable();
            $("#data-table-basic-speaker").dataTable();
            $("#data-table-basic-activity").dataTable();
        </script>

        <!-- bootstrap select JS
		============================================ -->
        <script
            src="${pageContext.request.contextPath}/DashboardAssets/js/bootstrap-select/bootstrap-select.js"></script>

        <!-- My JS code
		============================================ -->
        <script src="${pageContext.request.contextPath}/DashboardAssets/js/mycode.js"></script>

        <!-- Convert to PDF links JS -->

        <script type="text/javascript"
            src="https://cdnjs.cloudflare.com/ajax/libs/pdfmake/0.1.22/pdfmake.min.js"></script>
        <script type="text/javascript"
            src="https://cdnjs.cloudflare.com/ajax/libs/html2canvas/0.4.1/html2canvas.min.js"></script>


        <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>

    </body>

    </html>