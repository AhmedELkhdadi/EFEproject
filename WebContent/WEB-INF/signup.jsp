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
        <link href="${pageContext.request.contextPath}/assets/img/favicon.png" rel="icon">

        <!-- Google Fonts -->
        <link
            href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,700,700i|Raleway:300,400,500,700,800"
            rel="stylesheet">

        <!-- Vendor CSS Files -->
        <link href="${pageContext.request.contextPath}/assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
        <link href="${pageContext.request.contextPath}/assets/vendor/venobox/venobox.css" rel="stylesheet">
        <link href="${pageContext.request.contextPath}/assets/vendor/font-awesome/css/font-awesome.min.css" rel="stylesheet">
        <link href="${pageContext.request.contextPath}/assets/vendor/owl.carousel/assets/owl.carousel.min.css" rel="stylesheet">
        <link href="${pageContext.request.contextPath}/assets/vendor/aos/aos.css" rel="stylesheet">

        <!-- Template Main CSS File -->
        <link href="${pageContext.request.contextPath}/assets/css/style.css" rel="stylesheet">

        <style>
            body {
                font-family: "Open Sans", sans-serif;
                height: 100vh;
            }
        </style>
    </head>

    <body>

        <header id="header" class="header-scrolled shadow">
            <div class="container">

                <div id="logo" class="pull-left">
                    <a href="${ pageContext.request.contextPath }/" class="scrollto"><img src="${pageContext.request.contextPath}/assets/img/logo.png"
                            alt="" title=""></a>
                </div>

                <nav id="nav-menu-container">
                    <ul class="nav-menu">
                        <li class="buy-tickets"><a href="${pageContext.request.contextPath}/login">Log in</a></li>
                        <li class="buy-tickets"><a href="${ pageContext.request.contextPath }/">Go Back</a></li>
                    </ul>
                </nav>
            </div>
        </header>
        <!-- End Header -->
        <div class="bg-light">
            <br> <br> <br>
            <main id="main" class="container">
                <div class="row align-content-center justify-content-center" style="">
                    <div class="col-lg-12">

                        <div
                            class="d-flex align-items-center p-3 my-3 text-white bg-primary rounded shadow justify-content-center">
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

                        <div class="row p-0">
                            <div class="col-xl-6 col-lg-6 col-md-12 mb-4">
                                <div class="card shadow h-100 py-2" style="border-top : 4px solid #1F6DFB">
                                    <div class="card-body">
                                        <div class="row no-gutters align-items-center">

                                            <div class="col mr-2 justify-content-center">
                                                <div align="center" style="margin:auto"
                                                    class="text-lg font-weight-bold text-uppercase mb-1">Sign up as a
                                                    Participantss ${path} </div>
                                                <br>
                                                <div class="h6 mb-0  text-gray-800">
                                                    <form method='post'  action='#'  class="row g-3">
                                                        <div class="col-md-12">
                                                            <input type="text" name="loginP" class="form-control loginsignup mb-2"
                                                                 placeholder="username" required>
                                                             <span class="loginAvailability" hidden=true style="margin-bottom: -10px;margin-left:7px;"></span>
                                                        </div>
                                                        <div class="col-md-12"> <br>
                                                            <input type="text" name="nameP" class="form-control"
                                                                 placeholder="Name" required>
                                                        </div>
                                                        <div class="col-md-12"> <br>
                                                            <input type="text" name="fnameP" class="form-control"
                                                                 placeholder="Family Name"
                                                                required>
                                                        </div>
                                                        <div class="col-md-12"> <br>
                                                            <input type="email" name="emailP" class="form-control"
                                                                 placeholder="Email" required>
                                                        </div>
                                                        <div class="col-md-12"> <br>
                                                            <input type="text" name="telP" class="form-control"
                                                                 placeholder="Phone number"
                                                                required>
                                                        </div>
                                                        <div class="col-md-12"> <br>
                                                            <input type="number" name="age" class="form-control" min="0" max="100"
                                                                 placeholder="Age"
                                                                required>
                                                        </div>
                                                        <div class="col-md-12"> <br>
                                                            <input type="text" name="SF" class="form-control"
                                                                 placeholder="Study Field"
                                                                required>
                                                        </div>
                                                        <div class="col-md-12"> <br>
                                                            <select name="institution" class="form-control" required>
                                                                <option value="" disabled selected>Institution
                                                                </option>
                                                                <c:forEach items="${institutions}" var="inst">
                                                                    <option value="${inst.getName()}">${inst.getName()}
                                                                    </option>
                                                                </c:forEach>
                                                            </select>
                                                        </div>
                                                        <div class="col-md-12"> <br>
                                                            <select name="level" class="form-control" required>
                                                                <option value="" disabled selected>Study level
                                                                </option>
                                                                <c:forEach items="${levels}" var="level">
                                                                    <option value="${level.getName()}">
                                                                        ${level.getName()}</option>
                                                                </c:forEach>
                                                            </select>
                                                        </div>
                                                        <div class="col-md-12">
                                                            <br>
                                                            <input type="password" name="passwordP" class="form-control"
                                                                id="validationCustom03" placeholder="Password" required>
                                                        </div>
                                                        <div class="col-md-12 d-flex justify-content-around mt-4 "> 
																  <label class="radio-inline  pl-2"><input type="radio" id="male" name="sexe" value="M"> Male</label>
																  <label class="radio-inline  pl-2"><input type="radio" id="female" name="sexe" value="F"> Female</label>
                                                        </div>
                                                        <div class="col-12">

                                                            <br>
                                                            <button style="width: 100%;" name="signUp" class="btn btn-primary signup"
                                                                type="submit">Sign Up</button>
                                                        </div>
                                                    </form>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-xl-6 col-lg-6 col-md-12 mb-4">
                                <div class="card shadow h-100 py-2" style="border-top : 4px solid #1F6DFB">
                                    <div class="card-body">
                                        <div class="row no-gutters align-items-center">
                                            <div class="col mr-2 justify-content-center">
                                                <div align="center" style="margin:auto"
                                                    class="text-lg font-weight-bold text-uppercase mb-1">Apply to
                                                    represent you Enterprise</div>
                                                <br>
                                                <div class="h6 mb-0  text-gray-800">
                                                    <form method='POST' action='sign_up'  class="row g-3 ">
                                                        <div class=" col-md-12 text-center">
                                                            <h5>Personal Informations</h5>
                                                        </div>
                                                        <div class="col-md-12">
                                                            <input type="text" name="loginR" class="form-control loginsignup"
                                                                 placeholder="Username" required>
                                                            <span class="loginAvailability" hidden=true style="margin-bottom: -10px;margin-left:7px;"></span>
                                                        </div>
                                                        <div class="col-md-12"> <br>
                                                            <input type="text" name="nameR" class="form-control"
                                                                 placeholder="Name" required>
                                                        </div>
                                                        <div class="col-md-12"> <br>
                                                            <input type="text" name="fnameR" class="form-control"
                                                                 placeholder="Family Name"
                                                                required>
                                                        </div>
                                                        <div class="col-md-12"> <br>
                                                            <input type="email" name="emailR" class="form-control"
                                                                 placeholder="Email" required>
                                                        </div>
                                                        <div class="col-md-12"> <br>
                                                            <input type="text" name="telR" class="form-control"
                                                                 placeholder="Phone number"
                                                                required>
                                                        </div>
                                                        <div class="col-md-12">
                                                            <br>
                                                            <input type="password" name="passwordR" class="form-control"
                                                                id="validationCustom03" placeholder="Password" required>
                                                        </div>
                                                        <div class=" col-md-12 text-center mt-4">
                                                            <h5>Enterprise Informations</h5>
                                                        </div>
                                                        <div class="col-md-12">
                                                            <input type="text" name="entName" class="form-control"
                                                                 placeholder="Name" required>
                                                        </div>
                                                        <div class="col-md-12"> <br>
                                                            <input type="text" name="slogan" class="form-control"
                                                                 placeholder="Slogan" required>
                                                        </div>
                                                        <div class="col-md-12"> <br>
                                                                <textarea class="form-control" name="entDesc" id="exampleFormControlTextarea1" placeholder="Description" rows="3" required></textarea>
                                                        </div>
                                                        <div class="col-md-12"> <br>
                                                            <input type="Email" name="entEmail" class="form-control"
                                                                 placeholder="Email" required>
                                                        </div>
                                                        <div class="col-md-12"> <br>
                                                            <input type="text" name="domain" class="form-control"
                                                                 placeholder="Domain" required>
                                                        </div>
                                                        <div class="col-md-12"> <br>
                                                            <input type="text" name="entLoc" class="form-control"
                                                                 placeholder="Localisation"
                                                                required>
                                                        </div>
<!--                                                         <div class="col-md-12"> <br> Logo : <input type="file" -->
<!--                                                                 name="logo"  required> -->
<!--                                                         </div> -->
<!--                                                         <div class="col-md-12"> <br> Banner image : <input type="file" -->
<!--                                                                 name="banner"   required> -->
<!--                                                         </div>  -->
                                                        <br>


                                                        <br>
                                                        <div class="col-12">
                                                            <br>
                                                            <button type="submit" style="width: 100%;" name="apply" class="btn btn-primary signup"
                                                                >Apply</button>
                                                           
                                                            <c:if test="${ applyRes != null }">
                                                                <c:out
                                                                    value="${applyRes ? 'Account added' : 'Error occured' }" />
                                                            </c:if>
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
                
            </div>
        </footer>
        <!-- End  Footer -->
		
		
        <a href="#" class="back-to-top"><i class="fa fa-angle-up"></i></a>

        <script src="${pageContext.request.contextPath}/assets/vendor/jquery/jquery.min.js"></script>
        <script src="https://kit.fontawesome.com/f36a65bf41.js"></script>

        <script src="${pageContext.request.contextPath}/assets/js/eventCountDown.js"></script>
		<script>
		 $(".loginsignup").on('keyup',function() { // this sends request to server to see if login exits already or not on keyup
	           let availabilityMessage = $(this).closest("div").find(".loginAvailability");
	           let signupBtn = $(this).closest("form").find(".signup");
			 $.get(
	                "${pageContext.request.contextPath}/ajaxRequests", {
	                    loginEntered: $(this).val().trim()
	                },
	                (data) => {
	                	console.log(data);

	                    if (data == "used" && $(this).val() != "") {
	                    	availabilityMessage.prop('hidden',false);
	                    	availabilityMessage.html("Username taken, try something else.");
	                    	availabilityMessage.css("color", "red");
	                        signupBtn.attr("disabled", "disabled");
	                    } else if ($(this).val() != "") {
	                    	availabilityMessage.prop('hidden',false);
	                    	availabilityMessage.html("Username available");
	                    	availabilityMessage.css("color", "green");
	                    	signupBtn.attr("disabled", false);
	                    } else {
	                    	availabilityMessage.prop('hidden',true);
	                    	availabilityMessage.html("");
	                        signupBtn.attr("disabled", false);
	                    }
	                },
	                'text'
	            )
	        })
		</script>
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


    </body>

    </html>