<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
	<title>Demo POST Dang nhap</title>
	<script src="assets/jquery.min.js"></script>
</head>
<body>
<h3 id="status"></h3>
<form action="#" method="post" id="login">
	<label>Ten dang nhap:</label>
	<input name="txtuser" type="text" placeholder="Nhap ten dang nhap" >
	<br>
	<label>Mat khau:</label>
	<input name="txtpass" type="password" placeholder="Nhap mat khau" >
	<br>
	<button type="submit" id="submit">Dang nhap</button>
</form>

<script type="text/javascript">
	$(document).ready(function () {
		$("#submit").click(function(e){	
			e.preventDefault();
			var username = $("input[name='txtuser']").val();
			var password = $("input[name='txtpass']").val();
			$.post(
				"kiemtralogin.jsp",
				{
					user: username,
					pass: password
				},
				function(response, status, xhr){
					$("#status").html(response);
				}
			);
		});
	});
</script>
</body>
</html>