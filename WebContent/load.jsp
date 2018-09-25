<%@page import="java.util.Random"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Phuong Thuc Load()</title>
	<script src="assets/jquery.min.js"></script>
</head>
<body>

	<button>Nhan de load du lieu</button>
	<div id="content"></div>
	<%
	Random r = new Random();
	out.print(r.nextInt());
	%>

	<script type="text/javascript">
		$("button").click(function(){
			//response : bao gồm các dữ liệu trả về từ request
			//status : gồm trạng thái request (“success” , “notmodified” , “error” , “timeout” , or “parsererror”)
			//xhr : gồm các đối tượng XMLHttpRequest
			$("#content").load("demo.txt", function(response, status, xhr){
				if(status == "success"){
					alert("Tai du lieu thanh cong!\n" + xhr.status + ": " + xhr.statusText);
					$("#content").html(response);
				}
				if( status == "error"){
					alert("Da co loi xay ra!\n" + xhr.status + ": " + xhr.statusText);
				}
			});
		});
	</script>
</body>
</html>