<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
	<title>Demo GET</title>
	<script src="assets/jquery.min.js"></script>
</head>
<body>

	<button id="btnDisplay">Nhan vao day</button>
	<br>
	<form action="#" method="get">
		<input name="txtname" type="text" placeholder="Nhap ten">
		<input name="txtyear" type="text" placeholder="Nhap Year">
		<button type="submit" id="submit">Gui du lieu</button>
	</form>
	<div id="content"></div>
	<p></p>
	<script type="text/javascript">
	    $(document).ready(function () {
	        $("#submit").click(function (e) {
	        	e.preventDefault();
	        	var name = $('input[name=txtname]').val();
	        	var year = $('input[name=txtyear]').val();
	       	 	$.get(
	       	 		"content.jsp",
	       	 		{
	       	 			name: name,
	       	 			year: year
	       	 		},
	       	 		function(response, status, xhr){
	       	 			$("#content").html(response);
	       	 		}
	       	 	);
	        });
	    });
	</script> 
</body>
</html>