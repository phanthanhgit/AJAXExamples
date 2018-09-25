<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
	<title>Demo AJAX()</title>
	<script src="assets/jquery.min.js"></script>
</head>
<body>

	<button id="btnDisplay">Nhan vao day</button>
	<br>
	<label id="loading" style="display: none">Loading</label>
	<div id="status"></div>
	<div id="content"></div>
	
	<script type="text/javascript">
	    $(document).ready(function () {
	        $("#btnDisplay").click(function () {
	       	 	$("#status").empty(); 
	            $.ajax({
			        url: "content.jsp",
			        type: "get",
			        dataType: "html",
			        data: {
			        	name: "Doan Phan Thanh",
			        	year: "2018"
			        },
			        processData: false,
			        beforeSend: function () {
			            $("#status").append("BeforeSend<br/>");
			            $("#loading").show();
			            
			        },
			        complete: function () {
			            $("#status").append("Complete<br/>");
			        },
			        error: function () {
			            $("#status").append("Ajax Error<br/>");
			            $("#content").html("404-Not found!!!");
			        },
			        success: function (response) {
			        	setTimeout(function() {
			        		$("#status").append("Ajax Success<br/>");
				            $("#content").html(response);
				            $("#loading").hide();
			            }, 0);
			        },
			        timeout: 2000
			        
			    });
	        });
	    });
	</script> 
</body>
</html>