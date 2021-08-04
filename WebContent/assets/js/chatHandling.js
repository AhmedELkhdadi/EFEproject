$("body").on('submit','.responseFrom',function(e){ //If we append the  form dynamically then we have to attach the submit listener to something that already exists when the page loads, 
														//or it wont work when we send new main message, and try to add more responses to it 
		e.preventDefault(); 
		let message = $(this).find("input[name='message']").val();
		let stand = $(this).find("input[name='stand']").val();
		let writer = $(this).find("input[name='writer']").val();
		let writer_name = $(this).find("input[name='writer_name']").val();
		let privacy = $(this).find("input[name='privacy']").val();
		let responseTo = $(this).find("input[name='responseTo']").val();
		let responsesNumElem = $("#reponsesNumb"+responseTo);
		let msgInput = $(this).find("input[name='message']");
	    $.ajax({
	           type: "post",
	           url: '#',
	           data: {
	        	   message: message,
	        	   stand: stand,
	        	   writer: writer,
	        	   writer_name: writer_name,
	        	   privacy: privacy,
	        	   responseTo : responseTo
	           },
	           success: function(data)
	           {
	               if(data = "ok"){
	            	   responsesNumElem.text(Number(responsesNumElem.text())+1);
	            	   if($("#main"+responseTo).is(":hidden")){
	            	   		 $("#collapse"+responseTo).trigger("click");
	            	    }
	            	   $("#main"+responseTo).append("<div class='card card-body'>"
	            			   +message+"<p class='card-text'><small class='text-muted'> Sent by <strong>"
	            			   +writer_name+" </strong> just now </small></p></div> <br>");
	            		msgInput.val("");
	               }
	           }
	         });
		})


		 $("#MainMessageForm").on('submit',function(e){
			e.preventDefault(); 
			let message = $(this).find("textarea[name='message']").val();
			let stand = $(this).find("input[name='stand']").val();
			let writer = $(this).find("input[name='writer']").val();
			let writer_name = $(this).find("input[name='writer_name']").val();
			let privacy = $(this).find("select[name='privacy']").val();  
			let msgInput = $(this).find("textarea[name='message']");
		    $.ajax({
		           type: "post",
		           url: '#',
		           data: {
		        	   message: message,
		        	   stand: stand,
		        	   writer: writer,
		        	   writer_name: writer_name,
		        	   privacy: privacy  
		           },
		           success: function(data)
		           {
		               msgInput.val("");
		               if(data !="error"){
		            	   $("#mainMessagesSection").append("<div class='col-xl-12 col-lg-12 col-md-12 mb-4'>"
		            			    +"<div class='card border-left-primary border-0 shadow h-100 '>"
		            		        +"<div class='card-body' style='margin-top: -15px; margin-bottom: -10px;'>"
		            		        +"    <div class='row no-gutters align-items-center'>"
		            		                +"<div class='col mr-2 justify-content-center'><p>"
		            		                   +"<div style='float: left;'>"
		            		                       +" <div class='h6 mb-0  text-gray-800'>"+message+" </div>"
		            		                        +"<p class='card-text'><small class='text-muted'> Sent by <strong>"+writer_name+" </strong> just <i> now</i> </small>"
		            		                        +"<span class='badge bg-danger text-white mr-1 ' id='privacy"+data+"'></span>"
		            		                            +"<span class='badge bg-success text-white'><span id='reponsesNumb"+data+"'>0</span> Responses</span></p></div>"
		            		                            +"<button style='float: right; border-radius: 30px; width: 30px; height: 30px;'"
		            		                        +"class='btn btn-primary btn-sm shadow' type='button' data-bs-toggle='collapse'"
		            		                       +" id='collapse"+data+"' data-bs-target='#main"+data+"' aria-expanded='false'aria-controls='collapseExample'>"
		            		                        +"<i class='fa fa-angle-down'></i></button> <br></p>"
		            		                    +"<div class='collapse collapse1' id='main"+data+"'></div></div></div></div>"
		            		        +"<div class='card-footer'>"
		            		        +"<form action='#' method='post' class='responseFrom' style='margin-bottom: -15px;'>"
		            		        +" <div class='input-group mb-3'>"
		            		        +"  <input type='hidden' value='"+stand+"' name='stand'>"
		            		        +"   <input type='hidden' value='"+writer+"' name='writer'>"
		            		        +"      <input type='hidden' value='"+writer_name+"' name='writer_name'>"
		            		        +"      <input type='hidden' value='"+data+"' name='responseTo'>"
		            		        +"            <input type='hidden' value='"+privacy+"' name='privacy'>"
		            		        +"           <input type='text' class='form-control' name='message' placeholder='Comment....'"
		            		        +"                aria-label='Recipient' s username' aria-describedby='button-addon2'>"
		            		        +"           <button style='border-radius: 0px 5px 5px 0px;' class='btn btn-primary btn-sm' name='newMessage'"
		            		        +"              type='submit'>Send</button> </div>  </form>  </div> </div></div>" );
		              
			              if(privacy =='1'){
			              	$("#privacy"+data).text("Private");
			              }
		              }else{
		              	$("#chatErrorMsg").text("Error occured, couldn't send message, try again");
		              }
		               
		           }
		         });
			});