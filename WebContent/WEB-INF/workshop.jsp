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
    <link href="${pageContext.request.contextPath}/assets/img/apple-touch-icon.png" rel="apple-touch-icon">  

    <!-- Google Fonts -->
    <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,700,700i|Raleway:300,400,500,700,800" rel="stylesheet">

    <!-- Vendor CSS Files -->
    <link href="${pageContext.request.contextPath}/assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/assets/vendor/venobox/venobox.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/assets/vendor/font-awesome/css/font-awesome.min.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/assets/vendor/owl.carousel/assets/owl.carousel.min.css" rel="stylesheet">
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



    <!-- ======= Header ======= -->
    <header id="header" class="header-scrolled shadow">
        <div class="container">

            <div id="logo" class="pull-left">
                <!-- Uncomment below if you prefer to use a text logo -->
                <!-- <h1><a href="#intro">The<span>Event</span></a></h1>-->
                <a href="${pageContext.request.contextPath}/" class="scrollto"><img src="${pageContext.request.contextPath}/assets/img/logo.png" alt="" title=""></a>
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


    <div class="bg-light">
        <br> <br> <br>
        <main id="main" class="container">

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
           <div class="row p-0">
                <div class="col-xl-12 col-lg-12 col-md-12 mb-4">
                    <div class="card border-0 shadow h-100 py-2">
                        <div class="card-body">
                            <div class="row no-gutters align-items-center">
                                <div style="float : left;" class="col-auto">
                                    <img id="logoImage" src="${pageContext.request.contextPath}/assets/img/EnterpriseLogos/${standRep.getEntreprise().getLogo()}?time=${System.currentTimeMillis()}" alt="Image" 
                                    style="height:90px;width:90px; border-radius: 50%;">
                                    
                                </div>
                                <div  class="col mr-2 justify-content-center">
                                    <div align="center" style="margin:auto" > <h2 class="  text-primary mb-1">WELCOME TO <span class="text-uppercase">${ standRep.getEntreprise().getName() }</span>'S STAND !</h2> </div>
                                    <div align="center" class="h6 mb-0  text-gray-800">
                                     " ${ standRep.getEntreprise().getSlogan() } "  </div>
                                
                                </div>
                                
                                <div style="float : right;" class="col-auto">
                                   <c:if test="${ sessionScope.Connected.getId() == standRep.getId() }">
                                    <button type="button" class="btn btn-danger btn-sm shadow" data-bs-toggle="modal" data-bs-target="#exampleModal">
  <i class="far fa-edit"></i> Edit
</button>
			                    	
                    				</c:if>
                                    
                                </div>
                                
                                
                                
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <div class="row">
                <div class="col-xl-9 col-lg-9 col-sm-12">

                    <div class="card border-0 shadow mb-3">
                        <img height="250px" src="${pageContext.request.contextPath}/assets/img/EnterpriseBanners/${standRep.getEntreprise().getBannerImage()}?time=${System.currentTimeMillis()}" class="card-img-top" id="bannerImage" alt="...">
                      
                        <div class="card-body" style="height : 315px; overflow-y: scroll;">
                            <h5 class="card-title"><strong>${ standRep.getEntreprise().getName() }</strong></h5>
                            <p class="card-text">${ standRep.getEntreprise().getDescription() }</p>
                            <p><strong>Representative: </strong><span class="text-danger">${standRep.getName()} ${standRep.getFname()}.</span></p>
							
                        	
                         <c:if test="${ eventState == 1 }">
	                        <c:if test="${ currentActivity.getName() == 'Stands and Workshops' }"> 
	                        	<c:choose>
		                        <c:when test="${ user.getStatus() != 2 && standRep.getEntreprise().getMeetLink() != null  }">
				                        	<span>Join Representative for a talk: </span>
				                        	<strong class="text-info">
				                        	<a href="https://${ standRep.getEntreprise().getMeetLink() }" target="_blank">${ standRep.getEntreprise().getMeetLink() }</a>
				                        	</strong>
		                        </c:when>
		                        <c:when test="${ user.getId() == standRep.getId() }">
                                	<c:if test="${standRep.isApproved() != null}">
	                                    <c:if test="${standRep.isApproved() == true}">
	                                   	<div class="w-100 d-flex align-items-center">
		                                    <input class="form-control" id="meetLink" value="${ standRep.getEntreprise().getMeetLink()}" placeholder="Enter a meet Link">
		                                    <button class="btn btn-primary ml-2" style="display:none" id="confLink">Validate</button>
										</div>
	                                    </c:if>
                                    </c:if>
		                        </c:when>
		                        </c:choose>
	                       </c:if>
                        </c:if> 
                        </div>
                        	
                    </div>
                </div>

                <div class="col-xl-3 col-lg-3 col-sm-12">
                    <div class="card shadow border-0">
                        <div class="card-body pb-0">

                            <div style="margin-left:-5px"><h6 class="border-bottom pb-2 mb-0">Other Enterprise Informations</h6></div>
                            <div class="d-flex text-muted pt-3">




                                    <div class="shadow bg-danger text-white" style="height: 40px; width: 40px; border-radius: 50%;  display: flex; justify-content: center; align-items: center;">
                                        <i class="fas fa-briefcase"></i>
                                    </div>
                                    <p class="pb-3 mb-0 small lh-sm border-bottom ml-2">
                                        <strong class="d-block text-gray-dark ">Domain </strong> ${standRep.getEntreprise().getDomain()}.
                                    </p>
                                </div>
                                <div class="d-flex text-muted pt-3">
                                    <div class="shadow text-white" style="height: 40px; width: 40px; border-radius: 50%; background-color: blue;  display: flex; justify-content: center; align-items: center;">
                                        <i class="fas fa-map-marker-alt"></i>
                                    </div>
                                    <p class="pb-3 mb-0 small lh-sm border-bottom ml-2">
                                        <strong class="d-block text-gray-dark">Location </strong> ${standRep.getEntreprise().getLocation()}.
                                    </p>
                                </div>
                                <div class="d-flex text-muted pt-3 ">
                                    <div class="shadow bg-success text-white" style="height: 40px; width: 40px; border-radius: 50%;  display: flex; justify-content: center; align-items: center;">
                                        <i class="fas fa-envelope-open-text"></i>
                                    </div>

                                    <p class="pb-3 mb-0 small lh-sm border-bottom ml-2">
                                        <strong class="d-block text-gray-dark">Email </strong> ${standRep.getEntreprise().getEmail()}
                                    </p>
                                </div>
                            <c:if test="${ user.getId() == standRep.getId() || user.getStatus()== 1 }">
                            <div class="text-center pt-2">
                                	<c:choose>
                                	<c:when test="${standRep.isApproved() == null}">
                                    <h5 class="d-block text-warning">Request Pending </h5>
                                    </c:when>
                                	<c:when test="${standRep.isApproved() == true}">
                                    <h5 class="d-block text-success">Approved</h5> 
                                    </c:when>
                                	<c:when test="${standRep.isApproved() == false}">
                                    <h5 class="d-block text-danger">Application Rejected</h5>
                                    </c:when>
									</c:choose>                                    
                            </div>
                            </c:if>
                        </div>
                    </div> <br>
                    <c:if test="${ standRep.isApproved() != null }">
                    	<c:if test="${ standRep.isApproved() == true}">
		                    <c:choose>
		                    <c:when test="${ user.getStatus()== 3 }">
		                    <div style="height : 280px;" class="card shadow border-0">
		                        <div class="card-body">
		                            <h6 class="border-bottom pb-2 mb-0">Send Resume</h6>
									<c:choose>
										<c:when test="${ sentResume == null }">
		                            <p>Send a good written resume, this stand's representative will view it and might contact you for an opportunity</p>
											<div style="margin-top:-15px" id="resumeFormDiv">
												<small class="text-secondary">Only 'pdf' format is accepted</small>
												<form id="resumeForm" method="#"  action="post" >
													<input type="hidden" name="standIdResume" value="${ standRep.getEntreprise().getId() }"/>
													<input type="hidden" name="userNameResume" value="${ user.getName() } ${ user.getFname() }"/>
													<input type="hidden" name="userIdResume" value="${ user.getId() }"/>
													<label style="width : 100%;" class="file">
													<input type="file" name="paticipantResume" required/>
														<span class="file-custom"></span>
                              						</label>
			                           				<button class="btn btn-primary btn-sm col-12 mt-2" type="submit">Send Resume</button>
												</form>
			                            	</div>
												<small id="resumeMessage" class="text-danger"></small>
			                            </c:when>
										<c:otherwise>
											<p>Resume already sent.</p>
			                           		<a class="btn btn-primary btn-sm col-12 mb-3" id="viewResume" href="${pageContext.request.contextPath }/assets/resumes/${sentResume.getPath()}" target="_blank">View Resume</a>
			                           		<form id="changeResumeForm" method="#"  action="post" >
													<input type="hidden" name="idResumeToChange" value="${ sentResume.getId() }"/>
													<input type="hidden" name="pathResumeToChange" value="${ sentResume.getPath() }"/>
			                           		<label style="width : 100%;" class="file">
													<input type="file" name="paticipantResume" required/>
													<span class="file-custom"></span>
                              				</label>
			                           				<button class="btn btn-primary btn-sm col-12" type="submit">Change Resume</button>
											</form>
												<small id="resumeMessage" class="text-danger"></small>
			                            </c:otherwise>
		                            </c:choose>
		                        </div>
		                    </div>
		                    </c:when>
		                    <c:when test="${ user.getId() == standRep.getId() }">
		                    <div class="card shadow border-0">
		                        <div class="card-body " style="height: 225px; overflow-y: scroll;">
		                            <h6 class="border-bottom pb-2 mb-0">Resumes received</h6>
		                            <div class="text-muted pt-2 ">
										<c:choose>
										<c:when test="${ standResume != null  }">
											<c:forEach items="${ standResume }" var="resume">
											<div class="p-2 mb-0 small lh-sm border-bottom d-flex justify-content-between align-items-center">
												<div>
			                                    <strong class="d-block text-gray-dark">Name</strong><a href="${pageContext.request.contextPath }/participant?id_p=${resume.getP_id()}" ><span>${ resume.getP_name() }</span></a>
			                                	</div>
			                                    <a  class="btn btn-primary btn-sm"
			                                     href="${pageContext.request.contextPath }/assets/resumes/${ resume.getPath() }" target="_blank">View</a>
			                                </div>
											</c:forEach>
										</c:when>
										<c:otherwise>
											<p>No resumes submited yet </p>
										</c:otherwise>	
										</c:choose>
		                            </div>
		                        </div>
		                    </div>
		                    </c:when>
		                    </c:choose>
                    	</c:if>
                    </c:if>
                </div>

            </div>
			<c:if test="${ standRep.isApproved() != null }">
					<c:if test="${ standRep.isApproved() == true}">
			            <div class="section-header" style=" margin-top: 15px;">
			                <h2 style="font-size: 25px;">Discussions</h2>
			                <p style="font-size: 15px;">Ask all your questions and get the answers</p>
			            </div>
			            <div class="row" style="margin-top: -15px;" id="mainMessagesSection">
			            <c:forEach items="${ standRep.getEntreprise().getMessages() }" var="mainMessage">
			            <c:if test="${ mainMessage.getPrivacy() == 0 || user.getId() == standRep.getId() || mainMessage.getWriter_id() == sessionScope.Connected.getId() }">  
			                <div class="col-xl-12 col-lg-12 col-md-12 mb-4">
			                    <div class="card border-left-primary border-0 shadow h-100 ">
			                        <div class="card-body" style="margin-top: -15px; margin-bottom: -10px;">
			                            <div class="row no-gutters align-items-center">
			
			                                <div class="col mr-2 justify-content-center">
			                                    <p>
			                                        <div style="float: left;">
			                                            <div class="h6 mb-0  text-gray-800">
			                                                ${ mainMessage.getMessage() } </div>
			                                            <p class="card-text"><small class="text-muted">Sent by 
			                                            <c:choose>
			                                            <c:when test="${ mainMessage.getWriterStatus() == 3}">
			                                            	<a href="${pageContext.request.contextPath }/participant?id_p=${mainMessage.getWriter_id()}" ><strong>${ mainMessage.getWriter_name() } </strong></a>
			                                            </c:when> 
			                                            <c:otherwise>
			                                            <strong>${ mainMessage.getWriter_name() } </strong>
			                                            </c:otherwise>
			                                            </c:choose>
			                                            at <i>${ mainMessage.getMessage_date() }</i>  </small>
			                                            	<c:if test="${ mainMessage.getPrivacy() == 1 }">  
			                                            	<span class="badge bg-danger text-white">Private</span>
			                                            	</c:if>
			                                            	<span class="badge bg-success text-white"><span id="reponsesNumb${ mainMessage.getId_message() }">
			                                            	<c:choose>
			                                            	<c:when test="${ mainMessage.getResponses().size() > 0 }">${mainMessage.getResponses().size()}</c:when>
			                                            	<c:otherwise> 0 </c:otherwise>
			                                            	</c:choose></span> Responses
			                                            	</span>
			                                             </p>
			                                        </div>
			                                        <button style="float: right; border-radius: 30px; width: 30px; height: 30px;" class="btn btn-primary btn-sm shadow" 
			                                        type="button" data-bs-toggle="collapse" id="collapse${ mainMessage.getId_message() }" data-bs-target="#main${ mainMessage.getId_message() }" 
			                                        aria-expanded="false" aria-controls="collapseExample">
			                                            <i class="fa fa-angle-down"></i>
			                                        </button> <br>
			                                    </p>
			                                    <div class="collapse collapse1" id="main${ mainMessage.getId_message() }">
			                                    <c:forEach items="${ mainMessage.getResponses() }" var="response">
			                                        <div class="card card-body">
			                                            ${ response.getMessage() }
			                                            <p class="card-text"><small class="text-muted"> Sent by 
			                                            <c:choose>
			                                            <c:when test="${ response.getWriterStatus() == 3}">
			                                            	<a href="${pageContext.request.contextPath }/participant?id_p=${response.getWriter_id()}" ><strong>${ response.getWriter_name() } </strong></a>
			                                            </c:when> 
			                                            <c:otherwise>
			                                            <strong>${ response.getWriter_name() } </strong>
			                                            </c:otherwise>
			                                            </c:choose>
			                                             at <i>${ response.getMessage_date() }</i>  </small></p>
			                                        </div> <br>
			                                    </c:forEach>
			                                    </div>
			                                </div>
			                            </div>
			                        </div>
			                        <div class="card-footer">
			                            <form action="#" method="post" class="responseFrom" style="margin-bottom: -15px;">
			                                <div class="input-group mb-3">
			                                	<input type="hidden" value="${standRep.getEntreprise().getId()}" name="stand" >
			                        			<input type="hidden" value="${user.getId() }" name="writer" >
			                        			<input type="hidden" value="${user.getName()} ${ user.getFname()}" name="writer_name" >
			                        			<input type="hidden" value="${mainMessage.getId_message()}" name="responseTo" >
			                        			<input type="hidden" value="${mainMessage.getPrivacy()}" name="privacy" >
			                                    <input type="text" class="form-control" name="message" placeholder="Comment...." aria-label="Recipient's username" aria-describedby="button-addon2">
			                                    <button style="border-radius: 0px 5px 5px 0px;" class="btn btn-primary btn-sm" name="newMessage" type="submit" >Send</button>
			                                </div>
			                            </form>
			                        </div>
			
			                    </div>
			                </div>
			                </c:if>
			                </c:forEach>
			            </div>
			            <form action="#" method="post" id="MainMessageForm">
			            <div class="row">
			                <div class="col-lg-12">
			                    <div style="float : right;">
			                            <div class="form-group">
			                                                                       <select class="form-control bg-white shadow rounded-sm border-0" name="privacy" style="background-color: #f8f9fa; border: solid 1px #6c757d;" class="form-control-sm" id="sel1">
			                                  <option value="0" selected>Public</option>
			                                  <option value="1" >Private</option>
			                                </select>
			                            </div>
			                    </div>
			                </div>
			            </div>
			            
			            <div class="row">
			                <div class="col-lg-12">
			                        <div class="form-group">
			                        	<input type="hidden" value="${standRep.getEntreprise().getId()}" name="stand" >
			                        	<input type="hidden" value="${user.getId() }" name="writer" >
			                        	<input type="hidden" value="${user.getName()} ${ user.getFname()}" name="writer_name" >
			                            <textarea class="form-control shadow rounded-sm border-0" name="message" rows="3" required data-msg="Please write something for us" placeholder="Ask your question here........"></textarea>
			                            <div class="validate"></div>
			                        </div>
			                        <div style="float: left;" class="text-center"><input class="btn btn-primary btn-sm shadow" name="newMessage" type="submit" value="Send Message"></div>
			                </div>
			            </div>
					</form>
				 </c:if>
		 </c:if>
        </main>
        <br> <br>
    </div>
    <!-- Modal -->
<div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title text-black" id="exampleModalLabel"> <b>Edit Informations</b> </h5>
       <!-- <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>  --> 
      </div>
      <div class="modal-body">
      <form action="#" method="post" id="logoForm">
			                  <label style="width : 100%;" class="file">
                               <input type="file" id="logoInp" name="logoImage" required aria-label="File browser example">
                               <input type="hidden" name="logoInput">
                               <span class="file-custom"></span>
                              </label>
			                    		<button type="submit" class="btn btn-sm btn-primary shadow-sm" name="submitLogo" >Change Logo</button>
			                    	</form> <br>
        <form action="#" method="post" id="bannerForm">
        <label style="width : 100%;" class="file">
                                <input type="file" id="bannerInp" name="bannerImage" required aria-label="File browser example">
                                <input type="hidden" name="bannerInput">
                                <span class="file-custom"></span>
                              </label>
			                    		<button type="submit" class="btn btn-sm btn-primary shadow-sm" name="submitLogo" >Change Banner</button>
                    		
                    	</form>
      </div>
      <div class="modal-footer">
        <button id="closeModalButton" type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
        
      </div>
    </div>
  </div>
</div>
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

    <script src="https://kit.fontawesome.com/f36a65bf41.js"></script>

	<script src="${pageContext.request.contextPath}/assets/vendor/jquery/jquery.min.js"></script>
	<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
    <c:if test="${ sessionScope.firstLog == true}">
	<script>
	swal( "Welcome!" ,  "Your application has been submitted, You'lle recieve the result once an admin treats it." ,  "success" );
	</script>
	<c:set var="firstLog" value="${false}" scope="session"/>
	</c:if>

	<script>
	
    function goBack(){
    	window.history.back();
    }
	function showLogo(input){
		if(input.files && input.files[0]){ 
			var reader = new FileReader();
            reader.readAsDataURL(input.files[0]);
            
            reader.onload = function (e) {
            	$("#logoImage").attr('src', e.target.result);
        }
	}  
	}
	$("#logoInp").change(function(){
    	showLogo(this);
	});
	$("#logoForm").submit(function(e){
		e.preventDefault();
		$.ajax({
			type :"post",
			url:"#",
			data : new FormData(this),
			contentType: false,
			processData: false,
			dataType:'text',
			success: function(data){	
				$("#closeModalButton").trigger("click");
				alert("Logo updated succesfully");
				}               				
				});
		                            			
			});
	
	function showBanner(input){
			if(input.files && input.files[0]){ 
				var reader = new FileReader();
	            reader.readAsDataURL(input.files[0]);
	            
	            reader.onload = function (e) {
	            	$("#bannerImage").attr('src', e.target.result);

            }
		}  
	}
	$("#bannerInp").change(function(){
        showBanner(this);
    });
	
	$("#bannerForm").submit(function(e){
		e.preventDefault();
		$.ajax({
			type :"post",
			url:"#",
			data : new FormData(this),
			contentType: false,
			processData: false,
			dataType:'text',
			success: function(data){
				$("#closeModalButton").trigger("click");
				alert("Banner updated succesfully");
			}
				             				
				});
		                            			
			});
	$("#changeResumeForm").submit(function(e){
		e.preventDefault();
		$.ajax({
			type :"post",
			url:"#",
			data : new FormData(this),
			contentType: false,
			processData: false,
			dataType:'text',
			success: function(data){
				switch(data){
				case "error":
					$("#resumeMessage").html("An error has occured, try again");
					$("#resumeMessage").attr("class","text-danger");
					break;
		    					
				case "wrong":
					$("#resumeMessage").html("Invalide format !");
					$("#resumeMessage").attr("class","text-danger");
					break;
				default:
					$("#resumeMessage").html("Resume changed, Good Luck !");
					$("#resumeMessage").attr("class","text-success");
					$("#resumeFormDiv").html("");
					$("#viewResume").hide();
					setTimeout(function(){
						$("#viewResume").show();
						$("#viewResume").prop('href',"${pageContext.request.contextPath}/assets/resumes/"+data);
					},2000);			
						} 
						}               				
				});
		                            			
			});
	$("#resumeForm").submit(function(e){
	e.preventDefault();
	$.ajax({
		type :"post",
		url:"#",
		data : new FormData(this),
		contentType: false,
		processData: false,
		dataType:'text',
		success: function(data){
			switch(data){
			case "error":
				$("#resumeMessage").html("An error has occured, try again");
				break;
	    					
			case "wrong":
				$("#resumeMessage").html("Invalide format !");
				break;
			default:
				$("#resumeMessage").html("Resume uploaded, Good Luck !");
				$("#resumeMessage").attr("class","text-success");
				$("#resumeFormDiv").html("");
				setTimeout(function(){
					$("#resumeFormDiv").html("<a class='btn btn-primary btn-sm' href='${pageContext.request.contextPath}/assets/resumes/"
							+data+"' target='_blank'>View</a>");
				},1300);			
					} 
					}               				
			});
	                            			
		});
	</script>
	<script>
	$("#meetLink").keyup(function() {
		$("#confLink").show();
    });
    $("#confLink").click(function() {
    	let link = $("#meetLink").val();
        $.post(
        	"#", {
            meetLink: link,
            stand: "${ standRep.getEntreprise().getId()}",
            },
            function() {
				$("#confLink").hide();
            }
            )
            });
	</script>
	<script src="${pageContext.request.contextPath}/assets/js/chatHandling.js"></script>
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
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-ygbV9kiqUc6oa4msXn9868pTtWMgiQaeYH7/t7LECLbyPA2x65Kgf80OJFdroafW" crossorigin="anonymous"></script>

    <!-- Template Main JS File -->
    <script src="${pageContext.request.contextPath}/assets/js/main2.js"></script>



</body>

</html>