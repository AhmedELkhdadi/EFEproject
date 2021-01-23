<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
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
    <link rel="shortcut icon" type="image/x-icon" href="img/favicon.ico">
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
    <link rel="stylesheet" href="${pageContext.request.contextPath}/DashboardAssets/css/animation/animation-custom.css">
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
    <!-- Data Table JS
		============================================ -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/DashboardAssets/css/jquery.dataTables.min.css">
    <!-- notification CSS
		============================================ -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/DashboardAssets/css/notification/notification.css">
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
     





</head>

<body>
    <!--[if lt IE 8]>
            <p class="browserupgrade">You are using an <strong>outdated</strong> browser. Please <a href="http://browsehappy.com/">upgrade your browser</a> to improve your experience.</p>
        <![endif]-->
    <!-- Start Header Top Area -->
    <div class="header-top-area">
        <div class="container">
            <div class="row">
                <div class="col-lg-4 col-md-4 col-sm-12 col-xs-12">
                    <div class="logo-area">
                        <!--  <a href="#"><img src="${pageContext.request.contextPath}/DashboardAssets/img/logo/logo.png" alt="" /></a> -->
                        <h1><a href="${ pageContext.request.contextPath }"  style="color: white;">ENSAK FORUM</a></h1>
                    </div>
                </div>
                <div class="col-lg-8 col-md-8 col-sm-12 col-xs-12">
                    <div class="header-top-menu">
                        <ul class="nav navbar-nav notika-top-nav">
                            <li class="nav-item dropdown">
                                <a href="#" data-toggle="dropdown" role="button" aria-expanded="false"
                                    class="nav-link dropdown-toggle"><span><i
                                            class="notika-icon notika-search"></i></span></a>
                                <div role="menu" class="dropdown-menu search-dd animated flipInX">
                                    <div class="search-input">
                                        <i class="notika-icon notika-left-arrow"></i>
                                        <input type="text" />
                                    </div>
                                </div>
                            </li>
                            <li class="nav-item dropdown">
                                <a href="#" data-toggle="dropdown" role="button" aria-expanded="false"
                                    class="nav-link dropdown-toggle"><span><i
                                            class="notika-icon notika-mail"></i></span></a>
                                <div role="menu" class="dropdown-menu message-dd animated zoomIn">
                                    <div class="hd-mg-tt">
                                        <h2>Messages</h2>
                                    </div>
                                    <div class="hd-message-info">
                                        <a href="#">
                                            <div class="hd-message-sn">
                                                <div class="hd-message-img">
                                                    <img src="${pageContext.request.contextPath}/DashboardAssets/img/post/1.jpg"
                                                        alt="" />
                                                </div>
                                                <div class="hd-mg-ctn">
                                                    <h3>David Belle</h3>
                                                    <p>Cum sociis natoque penatibus et magnis dis parturient montes</p>
                                                </div>
                                            </div>
                                        </a>
                                        <a href="#">
                                            <div class="hd-message-sn">
                                                <div class="hd-message-img">
                                                    <img src="${pageContext.request.contextPath}/DashboardAssets/img/post/2.jpg"
                                                        alt="" />
                                                </div>
                                                <div class="hd-mg-ctn">
                                                    <h3>Jonathan Morris</h3>
                                                    <p>Cum sociis natoque penatibus et magnis dis parturient montes</p>
                                                </div>
                                            </div>
                                        </a>
                                        <a href="#">
                                            <div class="hd-message-sn">
                                                <div class="hd-message-img">
                                                    <img src="${pageContext.request.contextPath}/DashboardAssets/img/post/4.jpg"
                                                        alt="" />
                                                </div>
                                                <div class="hd-mg-ctn">
                                                    <h3>Fredric Mitchell</h3>
                                                    <p>Cum sociis natoque penatibus et magnis dis parturient montes</p>
                                                </div>
                                            </div>
                                        </a>
                                        <a href="#">
                                            <div class="hd-message-sn">
                                                <div class="hd-message-img">
                                                    <img src="${pageContext.request.contextPath}/DashboardAssets/img/post/1.jpg"
                                                        alt="" />
                                                </div>
                                                <div class="hd-mg-ctn">
                                                    <h3>David Belle</h3>
                                                    <p>Cum sociis natoque penatibus et magnis dis parturient montes</p>
                                                </div>
                                            </div>
                                        </a>
                                        <a href="#">
                                            <div class="hd-message-sn">
                                                <div class="hd-message-img">
                                                    <img src="${pageContext.request.contextPath}/DashboardAssets/img/post/2.jpg"
                                                        alt="" />
                                                </div>
                                                <div class="hd-mg-ctn">
                                                    <h3>Glenn Jecobs</h3>
                                                    <p>Cum sociis natoque penatibus et magnis dis parturient montes</p>
                                                </div>
                                            </div>
                                        </a>
                                    </div>
                                    <div class="hd-mg-va">
                                        <a href="#">View All</a>
                                    </div>
                                </div>
                            </li>
                            <li class="nav-item nc-al"><a href="#" data-toggle="dropdown" role="button"
                                    aria-expanded="false" class="nav-link dropdown-toggle"><span><i
                                            class="notika-icon notika-alarm"></i></span>
                                    <div class="spinner4 spinner-4"></div>
                                    <div class="ntd-ctn"><span>3</span></div>
                                </a>
                                <div role="menu" class="dropdown-menu message-dd notification-dd animated zoomIn">
                                    <div class="hd-mg-tt">
                                        <h2>Notification</h2>
                                    </div>
                                    <div class="hd-message-info">
                                        <a href="#">
                                            <div class="hd-message-sn">
                                                <div class="hd-message-img">
                                                    <img src="${pageContext.request.contextPath}/DashboardAssets/img/post/1.jpg"
                                                        alt="" />
                                                </div>
                                                <div class="hd-mg-ctn">
                                                    <h3>David Belle</h3>
                                                    <p>Cum sociis natoque penatibus et magnis dis parturient montes</p>
                                                </div>
                                            </div>
                                        </a>
                                        <a href="#">
                                            <div class="hd-message-sn">
                                                <div class="hd-message-img">
                                                    <img src="${pageContext.request.contextPath}/DashboardAssets/img/post/2.jpg"
                                                        alt="" />
                                                </div>
                                                <div class="hd-mg-ctn">
                                                    <h3>Jonathan Morris</h3>
                                                    <p>Cum sociis natoque penatibus et magnis dis parturient montes</p>
                                                </div>
                                            </div>
                                        </a>
                                        <a href="#">
                                            <div class="hd-message-sn">
                                                <div class="hd-message-img">
                                                    <img src="${pageContext.request.contextPath}/DashboardAssets/img/post/4.jpg"
                                                        alt="" />
                                                </div>
                                                <div class="hd-mg-ctn">
                                                    <h3>Fredric Mitchell</h3>
                                                    <p>Cum sociis natoque penatibus et magnis dis parturient montes</p>
                                                </div>
                                            </div>
                                        </a>
                                        <a href="#">
                                            <div class="hd-message-sn">
                                                <div class="hd-message-img">
                                                    <img src="${pageContext.request.contextPath}/DashboardAssets/img/post/1.jpg"
                                                        alt="" />
                                                </div>
                                                <div class="hd-mg-ctn">
                                                    <h3>David Belle</h3>
                                                    <p>Cum sociis natoque penatibus et magnis dis parturient montes</p>
                                                </div>
                                            </div>
                                        </a>
                                        <a href="#">
                                            <div class="hd-message-sn">
                                                <div class="hd-message-img">
                                                    <img src="${pageContext.request.contextPath}/DashboardAssets/img/post/2.jpg"
                                                        alt="" />
                                                </div>
                                                <div class="hd-mg-ctn">
                                                    <h3>Glenn Jecobs</h3>
                                                    <p>Cum sociis natoque penatibus et magnis dis parturient montes</p>
                                                </div>
                                            </div>
                                        </a>
                                    </div>
                                    <div class="hd-mg-va">
                                        <a href="#">View All</a>
                                    </div>
                                </div>
                            </li>
                            <li class="nav-item"><a href="#" data-toggle="dropdown" role="button" aria-expanded="false"
                                    class="nav-link dropdown-toggle"><span><i
                                            class="notika-icon notika-menus"></i></span>
                                    <div class="spinner4 spinner-4"></div>
                                    <div class="ntd-ctn"><span>2</span></div>
                                </a>
                                <div role="menu" class="dropdown-menu message-dd task-dd animated zoomIn">
                                    <div class="hd-mg-tt">
                                        <h2>Tasks</h2>
                                    </div>
                                    <div class="hd-message-info hd-task-info">
                                        <div class="skill">
                                            <div class="progress">
                                                <div class="lead-content">
                                                    <p>HTML5 Validation Report</p>
                                                </div>
                                                <div class="progress-bar wow fadeInLeft" data-progress="95%"
                                                    style="width: 95%;" data-wow-duration="1.5s" data-wow-delay="1.2s">
                                                    <span>95%</span>
                                                </div>
                                            </div>
                                            <div class="progress">
                                                <div class="lead-content">
                                                    <p>Google Chrome Extension</p>
                                                </div>
                                                <div class="progress-bar wow fadeInLeft" data-progress="85%"
                                                    style="width: 85%;" data-wow-duration="1.5s" data-wow-delay="1.2s">
                                                    <span>85%</span>
                                                </div>
                                            </div>
                                            <div class="progress">
                                                <div class="lead-content">
                                                    <p>Social Internet Projects</p>
                                                </div>
                                                <div class="progress-bar wow fadeInLeft" data-progress="75%"
                                                    style="width: 75%;" data-wow-duration="1.5s" data-wow-delay="1.2s">
                                                    <span>75%</span>
                                                </div>
                                            </div>
                                            <div class="progress">
                                                <div class="lead-content">
                                                    <p>Bootstrap Admin</p>
                                                </div>
                                                <div class="progress-bar wow fadeInLeft" data-progress="93%"
                                                    style="width: 65%;" data-wow-duration="1.5s" data-wow-delay="1.2s">
                                                    <span>65%</span>
                                                </div>
                                            </div>
                                            <div class="progress progress-bt">
                                                <div class="lead-content">
                                                    <p>Youtube App</p>
                                                </div>
                                                <div class="progress-bar wow fadeInLeft" data-progress="55%"
                                                    style="width: 55%;" data-wow-duration="1.5s" data-wow-delay="1.2s">
                                                    <span>55%</span>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="hd-mg-va">
                                        <a href="#">View All</a>
                                    </div>
                                </div>
                            </li>
                            <li class="nav-item"><a href="#" data-toggle="dropdown" role="button" aria-expanded="false"
                                    class="nav-link dropdown-toggle"><span><i
                                            class="notika-icon notika-chat"></i></span></a>
                                <div role="menu" class="dropdown-menu message-dd chat-dd animated zoomIn">
                                    <div class="hd-mg-tt">
                                        <h2>Chat</h2>
                                    </div>
                                    <div class="search-people">
                                        <i class="notika-icon notika-left-arrow"></i>
                                        <input type="text" placeholder="Search People" />
                                    </div>
                                    <div class="hd-message-info">
                                        <a href="#">
                                            <div class="hd-message-sn">
                                                <div class="hd-message-img chat-img">
                                                    <img src="${pageContext.request.contextPath}/DashboardAssets/img/post/1.jpg"
                                                        alt="" />
                                                    <div class="chat-avaible"><i class="notika-icon notika-dot"></i>
                                                    </div>
                                                </div>
                                                <div class="hd-mg-ctn">
                                                    <h3>David Belle</h3>
                                                    <p>Available</p>
                                                </div>
                                            </div>
                                        </a>
                                        <a href="#">
                                            <div class="hd-message-sn">
                                                <div class="hd-message-img chat-img">
                                                    <img src="${pageContext.request.contextPath}/DashboardAssets/img/post/2.jpg"
                                                        alt="" />
                                                </div>
                                                <div class="hd-mg-ctn">
                                                    <h3>Jonathan Morris</h3>
                                                    <p>Last seen 3 hours ago</p>
                                                </div>
                                            </div>
                                        </a>
                                        <a href="#">
                                            <div class="hd-message-sn">
                                                <div class="hd-message-img chat-img">
                                                    <img src="${pageContext.request.contextPath}/DashboardAssets/img/post/4.jpg"
                                                        alt="" />
                                                </div>
                                                <div class="hd-mg-ctn">
                                                    <h3>Fredric Mitchell</h3>
                                                    <p>Last seen 2 minutes ago</p>
                                                </div>
                                            </div>
                                        </a>
                                        <a href="#">
                                            <div class="hd-message-sn">
                                                <div class="hd-message-img chat-img">
                                                    <img src="${pageContext.request.contextPath}/DashboardAssets/img/post/1.jpg"
                                                        alt="" />
                                                    <div class="chat-avaible"><i class="notika-icon notika-dot"></i>
                                                    </div>
                                                </div>
                                                <div class="hd-mg-ctn">
                                                    <h3>David Belle</h3>
                                                    <p>Available</p>
                                                </div>
                                            </div>
                                        </a>
                                        <a href="#">
                                            <div class="hd-message-sn">
                                                <div class="hd-message-img chat-img">
                                                    <img src="${pageContext.request.contextPath}/DashboardAssets/img/post/2.jpg"
                                                        alt="" />
                                                    <div class="chat-avaible"><i class="notika-icon notika-dot"></i>
                                                    </div>
                                                </div>
                                                <div class="hd-mg-ctn">
                                                    <h3>Glenn Jecobs</h3>
                                                    <p>Available</p>
                                                </div>
                                            </div>
                                        </a>
                                    </div>
                                    <div class="hd-mg-va">
                                        <a href="#">View All</a>
                                    </div>
                                </div>
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
                                <li><a data-toggle="collapse" data-target="#demoevent" href="#">Email</a>
                                    <ul id="demoevent" class="collapse dropdown-header-top">
                                        <li><a href="#" id="btn_mails1">View Emails</a>
                                        </li>
                                        <li><a href="#" id="btn_compose_mail1">Compose Email</a>
                                        </li>
                                    </ul>
                                </li>

                                <li><a data-toggle="collapse" data-target="#demolibra" href="#">Charts</a>
                                    <ul id="demolibra" class="collapse dropdown-header-top">
                                        <li><a href="#" id="btn_descriptive_charts1">Descriptive Analysis</a>
                                        </li>
                                        <li><a href="#" id="btn_line_charts1">Other Charts</a>
                                        </li>
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
                    <div class="wb-traffic-inner notika-shadow sm-res-mg-t-30 tb-res-mg-t-30 dk-res-mg-t-30 box-shadow">
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
                <!-- <div class="col-lg-3 col-md-6 col-sm-6 col-xs-12">
                    <div class="wb-traffic-inner notika-shadow sm-res-mg-t-30 tb-res-mg-t-30 dk-res-mg-t-30 box-shadow">
                        <div class="website-traffic-ctn">
                            <h2><span class="counter">125</span></h2>
                            <p>Total Visits of Today</p>
                        </div>
                        <div class="sparkline-bar-stats4">2,4,8,4,5,7,4,7,3,5,7,5</div>
                    </div>
                </div> -->
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
                        <li class="active"><a data-toggle="tab" href="#Home"><i class="notika-icon notika-house"></i>
                                Home</a>
                        </li>
                        <li><a data-toggle="tab" href="#mailbox"><i class="notika-icon notika-mail"></i> Email</a>
                        </li>

                        <li><a data-toggle="tab" href="#Charts"><i class="notika-icon notika-bar-chart"></i> Charts</a>
                        </li>
                        <!---- <li><a data-toggle="tab" href="#Tables"><i class="notika-icon notika-windows"></i> Tables</a>
                        </li>
                         <li><a data-toggle="tab" href="#Forms"><i class="notika-icon notika-form"></i> Forms</a>
                        </li>
                        <li><a data-toggle="tab" href="#Appviews"><i class="notika-icon notika-app"></i> App views</a>
                        </li>
                        <li><a data-toggle="tab" href="#Page"><i class="notika-icon notika-support"></i> Pages</a>
                        </li>
                    <li><a data-toggle="tab" href="#Interface"><i class="notika-icon notika-edit"></i> Interface</a>
                        </li> -->
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
                                <li><a href="#" id="btn_mails">View Emails</a>
                                </li>
                                <li><a href="#" id="btn_compose_mail">Compose Email</a>
                                </li>
                            </ul>
                        </div>

                        <div id="Charts" class="tab-pane notika-tab-menu-bg animated flipInX">
                            <ul class="notika-main-menu-dropdown">
                                <li><a href="#" id="btn_descriptive_charts">Descriptive Analysis</a>
                                </li>
                                <li><a href="#" id="btn_line_charts">Other Charts</a>
                                </li>

                            </ul>
                        </div>



                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Main Menu area End-->
    <!-- Start Status area 
    <div class="notika-status-area">
        <div class="container">
            <div class="row">
                <div class="col-lg-3 col-md-6 col-sm-6 col-xs-12">
                    <div class="wb-traffic-inner notika-shadow sm-res-mg-t-30 tb-res-mg-t-30">
                        <div class="website-traffic-ctn">
                            <h2><span class="counter">50,000</span></h2>
                            <p>Total Website Traffics</p>
                        </div>
                        <div class="sparkline-bar-stats1">9,4,8,6,5,6,4,8,3,5,9,5</div>
                    </div>
                </div>
                <div class="col-lg-3 col-md-6 col-sm-6 col-xs-12">
                    <div class="wb-traffic-inner notika-shadow sm-res-mg-t-30 tb-res-mg-t-30">
                        <div class="website-traffic-ctn">
                            <h2><span class="counter">90,000</span>k</h2>
                            <p>Website Impressions</p>
                        </div>
                        <div class="sparkline-bar-stats2">1,4,8,3,5,6,4,8,3,3,9,5</div>
                    </div>
                </div>
                <div class="col-lg-3 col-md-6 col-sm-6 col-xs-12">
                    <div class="wb-traffic-inner notika-shadow sm-res-mg-t-30 tb-res-mg-t-30 dk-res-mg-t-30">
                        <div class="website-traffic-ctn">
                            <h2>$<span class="counter">40,000</span></h2>
                            <p>Total Online Sales</p>
                        </div>
                        <div class="sparkline-bar-stats3">4,2,8,2,5,6,3,8,3,5,9,5</div>
                    </div>
                </div>
                <div class="col-lg-3 col-md-6 col-sm-6 col-xs-12">
                    <div class="wb-traffic-inner notika-shadow sm-res-mg-t-30 tb-res-mg-t-30 dk-res-mg-t-30">
                        <div class="website-traffic-ctn">
                            <h2><span class="counter">1,000</span></h2>
                            <p>Total Support Tickets</p>
                        </div>
                        <div class="sparkline-bar-stats4">2,4,8,4,5,7,4,7,3,5,7,5</div>
                    </div>
                </div>
            </div>
        </div>
    </div>
   End Status area-->


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
                                        <!---  <div class="dropdown-trig-sgn">
                                            <button class="btn triger-zoomIn" data-toggle="dropdown"><i class="notika-icon notika-sent"></i></button>
                                            <ul class="dropdown-menu triger-zoomIn-dp">
                                                <li role="presentation"><a role="menuitem" tabindex="-1" href="#"><i class="notika-icon notika-house"> </i> PDF File</a></li>
                                                <li role="presentation"><a role="menuitem" tabindex="-1" href="#"><i class="notika-icon notika-star"> </i> CSV File</a>
                                                </li>
                                            </ul>
                                        </div> -->
                                        <button onclick="exportTableToCSV('participants.csv')" data-toggle="tooltip"
                                            data-placement="left" title="Download Report" class="btn"><i
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
                                            <th>Sexe</th>
                                            <th>Age</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                    	<c:forEach items="${ participants }" var="participant">
                                        <tr>
                                            <td>${ participant.getName()} ${ participant.getFname()}</td>
                                            <td>${ participant.getEmail() }</td>
                                            <td>${ participant.getTel() }</td>
                                            <td>${ participant.getSexe() }</td>
                                            <td>${ participant.getAge() }</td>
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
                                            <h2>Contact</h2>
                                            <p>Welcome to Notika <span class="bread-ntd">Admin Template</span></p>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-lg-6 col-md-6 col-sm-6 col-xs-3">
                                    <div class="breadcomb-report">
                                        <button data-toggle="tooltip" data-placement="left" title="Download Report"
                                            class="btn"><i class="notika-icon notika-sent"></i></button>
                                    </div>
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
                                <div class="contact-img">
                                    <img src="${pageContext.request.contextPath}/DashboardAssets/img/post/1.jpg"
                                        alt="" />
                                </div>
                                <div class="conct-sc-ic">
                                    <a class="btn" href="#"><i class="notika-icon notika-facebook"></i></a>
                                    <a class="btn" href="#"><i class="notika-icon notika-twitter"></i></a>
                                    <a class="btn" href="#"><i class="notika-icon notika-pinterest"></i></a>
                                </div>
                            </div>
                            <div class="contact-ctn">
                                <div class="contact-ad-hd">
                                    <h2>${ participant.getName() } ${ participant.getFname() }</h2>
                                    <p class="ctn-ads">${ participant.getAge() }years old, ${ participant.getSexe() }</p>
                                </div>
                                <p><span class="text-info ">Phone number:</span> ${ participant.getTel() }</p>
                                <p><span class="text-info ">Academic level:</span> ${ participant.getLevel() }</p>
                                <p><span class="text-info ">Institution:</span> ${ participant.getInstitution() }</p>
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
                                        <button onclick="exportTableToCSV('participants.csv')" data-toggle="tooltip"
                                            data-placement="left" title="Download Report" class="btn"><i
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
                    <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12" >
                        <div class="data-table-list">
                            <div class="basic-tb-hd">
                                <h2>Data Table</h2>
                                <p>You can export this table in PDF or CSV file format for other use</p>
                            </div>
                            <div id="enterprise_tab" class="table-responsive">
                                <table id="data-table-basic-enterprise" class="table table-striped">
                                    <thead>
                                        <tr>
                                            <th>Name of Representative</th>
                                            <th>Name of Enterprise</th>
                                            <th>Domain</th>
                                            <th>Location</th>
                                            <th>Actions</th>

                                        </tr>
                                    </thead>
                                    <tbody>
                                    <c:forEach items="${ RepsWaiting }" var="resp">
                                        <tr id="nonApproved${ resp.getId() }">
                                            <td>${ resp.getName() } ${ resp.getFname() }</td>
                                            <td>${ resp.getEntreprise().getName() }</td>
                                            <td>${ resp.getEntreprise().getDomain() }</td>
                                            <td>${ resp.getEntreprise().getLocation() }</td>
                                            <td>
                                                <div class="button-icon-btn sm-res-mg-t-30">
                                                    <button data-toggle="tooltip" data-placement="top"
                                                        title="Accept demand"
                                                        class="approveRep btn btn-sm btn-success success-icon-notika btn-reco-mg btn-button-mg"
                                                        onclick="showModal('${ resp.getId() }',1)"><i
                                                            class="notika-icon notika-checked"></i></button>
                                                    <button
                                                        class="rejectRep btn btn-sm btn-danger danger-icon-notika btn-reco-mg btn-button-mg"
                                                        onclick="showModal('${ resp.getId() }',0)"
                                                        data-toggle="tooltip" data-placement="top"
                                                        title="Reject demand"><i
                                                            class="notika-icon notika-close"></i></button>
                                                    <a href="${pageContext.request.contextPath }/workshop?Rep=${resp.getId()}"><button
                                                    type="submit" name="info"
                                                     data-toggle="tooltip" data-placement="top"
                                                        title="View details"
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
                                        <button onclick="exportTableToCSV('participants.csv')" data-toggle="tooltip"
                                            data-placement="left" title="Download Report" class="btn"><i
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
            <div class="container">
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
                                        <button onclick="exportTableToCSV('participants.csv')" data-toggle="tooltip"
                                            data-placement="left" title="Download Report" class="btn"><i
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

        <div class="line-chart-area">
            <div class="container">
                <div class="row">
                    <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
                        <div class="line-chart-wp chart-display-nn">
                            <canvas height="140vh" width="180vw" id="basiclinechart"></canvas>
                        </div>
                    </div>
                    <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
                        <div class="line-chart-wp sm-res-mg-t-30 chart-display-nn">
                            <canvas height="140vh" width="180vw" id="linechartinterpolation"></canvas>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
                        <div class="line-chart-wp mg-t-30 chart-display-nn">
                            <canvas height="140vh" width="180vw" id="linechartstyles"></canvas>
                        </div>
                    </div>
                    <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
                        <div class="line-chart-wp mg-t-30 chart-mg-nt">
                            <canvas height="140vh" width="180vw" id="linechartpointcircle"></canvas>
                        </div>
                    </div>
                </div>
            </div>
        </div>

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
                                            <h2>Compose Email</h2>
                                            <p>Welcome to Notika <span class="bread-ntd">Admin Template</span></p>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-lg-6 col-md-6 col-sm-6 col-xs-3">
                                    <div class="breadcomb-report">
                                        <button data-toggle="tooltip" data-placement="left" title="Download Report"
                                            class="btn"><i class="notika-icon notika-sent"></i></button>
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
                    <div class="col-lg-3 col-md-3 col-sm-4 col-xs-12">
                        <div class="inbox-left-sd">
                            <div class="compose-ml">
                                <a class="btn" href="#">Compose</a>
                            </div>
                            <div class="inbox-status">
                                <ul class="inbox-st-nav inbox-ft">
                                    <li><a href="#"><i class="notika-icon notika-mail"></i> Inbox<span
                                                class="pull-right">12</span></a></li>
                                    <li><a href="#"><i class="notika-icon notika-sent"></i> Sent</a></li>
                                    <li><a href="#"><i class="notika-icon notika-draft"></i> Draft</a></li>
                                    <li><a href="#"><i class="notika-icon notika-trash"></i> Trash</a></li>
                                </ul>
                            </div>
                            <hr>
                            <div class="inbox-status">
                                <ul class="inbox-st-nav">
                                    <li><a href="#"><i class="notika-icon notika-travel"></i> Travel</a></li>
                                    <li><a href="#"><i class="notika-icon notika-finance"></i> Finance</a></li>
                                    <li><a href="#"><i class="notika-icon notika-social"></i> Social</a></li>
                                    <li><a href="#"><i class="notika-icon notika-promos"></i> Promos</a></li>
                                    <li><a href="#"><i class="notika-icon notika-flag"></i> Updates</a></li>
                                </ul>
                            </div>
                            <hr>
                            <div class="inbox-status">
                                <ul class="inbox-st-nav inbox-nav-mg">
                                    <li><a href="#"><i class="notika-icon notika-success"></i> Forum</a></li>
                                    <li><a href="#"><i class="notika-icon notika-chat"></i> Chat</a></li>
                                    <li><a href="#"><i class="notika-icon notika-star"></i> Work</a></li>
                                    <li><a href="#"><i class="notika-icon notika-settings"></i> Settings</a></li>
                                    <li><a href="#"><i class="notika-icon notika-support"></i> Support</a></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-9 col-md-9 col-sm-8 col-xs-12">
                        <div class="view-mail-list sm-res-mg-t-30">
                            <div class="view-mail-hd">
                                <div class="view-mail-hrd">
                                    <h2>New Message</h2>
                                </div>
                            </div>
                            <div class="cmp-int mg-t-20">
                                <div class="row">
                                    <div class="col-lg-1 col-md-2 col-sm-2 col-xs-12">
                                        <div class="cmp-int-lb cmp-int-lb1 text-right">
                                            <span>To: </span>
                                        </div>
                                    </div>
                                    <div class="col-lg-11 col-md-10 col-sm-10 col-xs-12">
                                        <div class="form-group">
                                            <div class="nk-int-st cmp-int-in cmp-email-over">
                                                <input type="email" class="form-control"
                                                    placeholder="example@email.com" />
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-lg-1 col-md-2 col-sm-2 col-xs-12">
                                        <div class="cmp-int-lb cmp-int-lb1 text-right">
                                            <span>Cc: </span>
                                        </div>
                                    </div>
                                    <div class="col-lg-11 col-md-10 col-sm-10 col-xs-12">
                                        <div class="form-group">
                                            <div class="nk-int-st cmp-int-in cmp-email-over">
                                                <input type="email" class="form-control" placeholder="" />
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-lg-1 col-md-2 col-sm-2 col-xs-12">
                                        <div class="cmp-int-lb text-right">
                                            <span>Subject: </span>
                                        </div>
                                    </div>
                                    <div class="col-lg-11 col-md-10 col-sm-10 col-xs-12">
                                        <div class="form-group cmp-em-mg">
                                            <div class="nk-int-st cmp-int-in cmp-email-over">
                                                <input type="text" class="form-control" placeholder="" />
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="cmp-int-box mg-t-20">
                                <div class="html-editor-cm">
                                    <h2>Hello Mamunur Roshid!</h2>
                                    <p>Dummy text of the printing and typesetting industry. Lorem Ipsum has been the
                                        <b>dustrys standard dummy text</b> ever since the 1500s, when an unknown printer
                                        took a galley of types and scrambleded it to make a type
                                        specimenen book. It has survived not only five centuries, but also the leap into
                                        electronic typesetting, remaining essentially unchanged. It was popularised in
                                        the 1960s with the release of Letraset sheets containing
                                        Lorem Ipsum passages <a href="#">Read more</a>.
                                    </p>
                                    <p>All the Lorem Ipsum generators on the Internet tend to repeat the predefined
                                        chunks as necessary, making this the first true generator on the Internet. It
                                        uses a dictionary of over 200 Latin words, combined with a handful
                                        of model sentence crisity structures, to generate Lorem Ipsum which looks
                                        reasonable. recently with.Dummy text of the printing and typesetting
                                        industryunknown printer took a galley of type.</p>
                                    <span class="vw-tr">Thanks and Regards</span>
                                    <span>Mark Smith</span>
                                </div>
                            </div>
                            <div class="multiupload-sys">
                                <div id="dropzone" class="dropmail">
                                    <form action="/upload" class="dropzone dropzone-custom needsclick" id="demo-upload">
                                        <div class="dz-message needsclick download-custom">
                                            <i class="notika-icon notika-cloud" aria-hidden="true"></i>
                                            <h2>Drop files here or click to upload.</h2>
                                            <p><span class="note needsclick">(This is just a demo dropzone. Selected
                                                    files are <strong>not</strong> actually uploaded.)</span>
                                            </p>
                                        </div>
                                    </form>
                                </div>
                            </div>
                            <div class="vw-ml-action-ls text-right mg-t-20">
                                <div class="btn-group ib-btn-gp active-hook nk-email-inbox">
                                    <button class="btn btn-default btn-sm waves-effect"><i
                                            class="notika-icon notika-next"></i> Reply</button>
                                    <button class="btn btn-default btn-sm waves-effect"><i
                                            class="notika-icon notika-right-arrow"></i> Forward</button>
                                    <button class="btn btn-default btn-sm waves-effect"><i
                                            class="notika-icon notika-down-arrow"></i> Print</button>
                                    <button class="btn btn-default btn-sm waves-effect"><i
                                            class="notika-icon notika-trash"></i> Remove</button>
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
                                            <h2>All Emails</h2>
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
                                        <button onclick="exportTableToCSV('participants.csv')" data-toggle="tooltip"
                                            data-placement="left" title="Download Report" class="btn"><i
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
        <div class="inbox-area">
            <div class="container">
                <div class="row">

                    <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                        <div class="inbox-text-list sm-res-mg-t-30">

                            <div class="inbox-btn-st-ls btn-toolbar">
                                <div class="btn-group ib-btn-gp active-hook nk-email-inbox">
                                    <button class="btn btn-default btn-sm"><i class="notika-icon notika-refresh"></i>
                                        Refresh</button>

                                </div>
                                <div class="btn-group ib-btn-gp active-hook nk-act nk-email-inbox">
                                    <button class="btn btn-default btn-sm"><i
                                            class="notika-icon notika-left-arrow"></i></button>
                                    <button class="btn btn-default btn-sm"><i
                                            class="notika-icon notika-right-arrow"></i></button>
                                </div>
                            </div>
                            <div class="table-responsive">
                                <table class="table table-hover table-inbox">
                                    <tbody>
                                        <tr class="unread">
                                            <td class="">
                                                <label><input type="checkbox" checked="" class="i-checks"></label>
                                            </td>
                                            <td><a href="#">Jeremy Massey</a></td>
                                            <td><a href="#">Lorem ipsum dolor sit amet, consectetur adipiscing elit.</a>
                                            </td>
                                            <td><i class="notika-icon notika-paperclip"></i></td>
                                            <td class="text-right mail-date">Tue, Nov 25</td>
                                        </tr>
                                        <tr class="active">
                                            <td class="">
                                                <label><input type="checkbox" class="i-checks"></label>
                                            </td>
                                            <td><a href="#">Marshall Horne</a></td>
                                            <td><a href="#">Praesent nec nisl sed neque ornare maximus at ac enim.</a>
                                            </td>
                                            <td></td>
                                            <td class="text-right mail-date">Wed, Jan 13</td>
                                        </tr>
                                        <tr>
                                            <td class="">
                                                <label><input type="checkbox" class="i-checks"></label>
                                            </td>
                                            <td><a href="#">Grant Franco</a> <span
                                                    class="label label-warning">Finance</span></td>
                                            <td><a href="#">Etiam maximus tellus a turpis tempor mollis.</a></td>
                                            <td></td>
                                            <td class="text-right mail-date">Mon, Oct 19</td>
                                        </tr>
                                        <tr class="unread active">
                                            <td class="">
                                                <label><input type="checkbox" class="i-checks"></label>
                                            </td>
                                            <td><a href="#">Ferdinand Meadows</a></td>
                                            <td><a href="#">Aenean hendrerit ligula eget augue gravida semper.</a></td>
                                            <td><i class="notika-icon notika-paperclip"></i></td>
                                            <td class="text-right mail-date">Sat, Aug 29</td>
                                        </tr>
                                        <tr>
                                            <td class="">
                                                <label><input type="checkbox" checked="" class="i-checks"></label>
                                            </td>
                                            <td><a href="#">Ivor Rios</a> <span class="label label-info">Social</span>
                                            </td>
                                            <td><a href="#">Sed quis augue in nunc venenatis finibus.</a></td>
                                            <td><i class="notika-icon notika-paperclip"></i></td>
                                            <td class="text-right mail-date">Sat, Dec 12</td>
                                        </tr>
                                        <tr>
                                            <td class="">
                                                <label><input type="checkbox" class="i-checks"></label>
                                            </td>
                                            <td><a href="#">Maxwell Murphy</a></td>
                                            <td><a href="#">Quisque eu tortor quis justo viverra cursus.</a></td>
                                            <td></td>
                                            <td class="text-right mail-date">Sun, May 17</td>
                                        </tr>
                                        <tr>
                                            <td class="">
                                                <label><input type="checkbox" class="i-checks"></label>
                                            </td>
                                            <td><a href="#">Henry Patterson</a></td>
                                            <td><a href="#">Aliquam nec justo interdum, ornare mi non, elementum
                                                    lacus.</a></td>
                                            <td><i class="notika-icon notika-paperclip"></i></td>
                                            <td class="text-right mail-date">Thu, Aug 06</td>
                                        </tr>
                                        <tr>
                                            <td class="">
                                                <label><input type="checkbox" class="i-checks"></label>
                                            </td>
                                            <td><a href="#">Maxwell Murphy</a></td>
                                            <td><a href="#">Quisque eu tortor quis justo viverra cursus.</a></td>
                                            <td></td>
                                            <td class="text-right mail-date">Sun, May 17</td>
                                        </tr>
                                    </tbody>
                                </table>

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
                                        <button data-toggle="tooltip" data-placement="left" title="Download Report"
                                            class="btn"><i class="notika-icon notika-sent"></i></button>
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
	                         <h2>${ resp.getEntreprise().getName()}</h2>
	                         <img src="${pageContext.request.contextPath}/assets/img/EnterpriseLogos/${resp.getEntreprise().getLogo()}" alt="Image" 
	                         style="height:100px;width:100px;"> 
                            </div>
                            <div class="animation-img mg-b-15">
                              <img class="animate-one"
                                    src="${pageContext.request.contextPath}/assets/img/EnterpriseBanners/${resp.getEntreprise().getBannerImage()}" alt="" />
                            </div>

	                         <p>Representative: <strong class="text-danger"> <i> ${ resp.getName() } ${ resp.getFname() } </i></strong></p>

                            <div class="animation-action">
                                <div class="row">
                                    <div class="col-lg-12">
                                        <p>Domain:  <strong class="text-danger">${ resp.getEntreprise().getDomain() }</strong></p>
                                        <div class="animation-btn">
                                            <a href="${pageContext.request.contextPath }/workshop?Rep=${resp.getId()}" ><button class="btn ant-nk-st bounce-ac">More Details</button></a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    </c:forEach>
                    <c:forEach items="${ RepsWaiting }" var="resp"> <!-- TODO: UNTIL I FIGURE OUT HOW TO SEND JSON AND RECIEVE IT -->
                    <div class="col-lg-4 col-md-4 col-sm-4 col-xs-12" id="approved${ resp.getId() }" style="display:none;">
                        <div class="animation-single-int">
                            <div class="animation-ctn-hd d-flex">
	                         <h2>${ resp.getEntreprise().getName()}</h2>
	                         <img src="${pageContext.request.contextPath}/assets/img/EnterpriseLogos/${resp.getEntreprise().getLogo()}" alt="Image" 
	                         style="height:100px;width:100px;"> 
                            </div>
                            <div class="animation-img mg-b-15">
                              <img class="animate-one"
                                    src="${pageContext.request.contextPath}/assets/img/EnterpriseBanners/${resp.getEntreprise().getBannerImage()}" alt="" />
                            </div>

	                         <p>Representative: <strong class="text-danger"> <i> ${ resp.getName() } ${ resp.getFname() } </i></strong></p>

                            <div class="animation-action">
                                <div class="row">
                                    <div class="col-lg-12">
                                        <p>Domain:  <strong class="text-danger">${ resp.getEntreprise().getDomain() }</strong></p>
                                        <div class="animation-btn">
                                           <a href="${pageContext.request.contextPath }/workshop?Rep=${resp.getId()}" ><button class="btn ant-nk-st bounce-ac">More Details</button></a>
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
                        <p>Copyright © 2018 . All rights reserved. <br> Template by <a
                                href="https://colorlib.com">Colorlib</a>.</p>
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
    function random_rgba() {
        var o = Math.round, r = Math.random, s = 255;
        /*  return 'rgba(' + o(r()*s) + ',' + o(r()*s) + ',' + o(r()*s) + ',' + r().toFixed(1) + ')'; */
         return 'rgba(' + 220 + ',' + o(r()*s) + ',' + o(r()*s) + ',' + 0.65 + ')'; 
    }

    
    $("#btn_descriptive_charts , #btn_descriptive_charts1").click(function() {
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
        for( let i = 0; i<genders.length ; i++ ){
        	genderNumbers[i] = genderStats[genders[i]]
        	colors_gender[i] = random_rgba()
        }
     
        var barchart1 = new Chart(ctx, {
            type: 'bar',
            data: {
                labels: genders,
                datasets: [{
                    label: 'Gender of participants',
                    data: genderNumbers,
                    backgroundColor: colors_gender,
                    borderColor: colors_gender,
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
        for( let i = 0; i<levels.length ; i++ ){
        	levelNumbers[i] = levelStats[levels[i]]
        	colorLevels[i] = random_rgba()
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
                    borderColor: colorLevels,
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
        for( let i = 0; i<institutions.length ; i++ ){
        	instNumbers[i] = instStats[institutions[i]]
        	colorInsts[i] = random_rgba()
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
                    borderColor: colorInsts,
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
        for( let i = 0; i<stands.length ; i++ ){
        	resumeNumbers[i] = resumeStats[stands[i]]
        	colorStands[i] = random_rgba()
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
                    borderColor: colorStands,
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
        for( let i = 0; i<stands.length ; i++ ){
        	msgsNumbers[i] = messagesStats[stands[i]]
        	colorStands[i] = random_rgba()
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
                    borderColor: colorStands,
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
    <script src="${pageContext.request.contextPath}/DashboardAssets/js/notification/bootstrap-growl.min.js"></script>
    <script src="${pageContext.request.contextPath}/DashboardAssets/js/notification/notification-active.js"></script>

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
    <script src="${pageContext.request.contextPath}/DashboardAssets/js/data-table/jquery.dataTables.min.js"></script>
    <script src="${pageContext.request.contextPath}/DashboardAssets/js/data-table/data-table-act.js"></script>

    <script>
        $("#data-table-basic-enterprise").dataTable();
        $("#data-table-basic").dataTable();
    </script>

    <!-- My JS code
		============================================ -->
    <script src="${pageContext.request.contextPath}/DashboardAssets/js/mycode.js"></script>

</body>

</html>