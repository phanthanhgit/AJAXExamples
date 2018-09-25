<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
	if(request.getParameter("user") != null && request.getParameter("pass") != null){
		String user = request.getParameter("user");
		String pass = request.getParameter("pass");
		if(user.trim().equals("abc") && pass.trim().equals("123")){
			out.print("Dang nhap thanh cong!");
		} else
			out.print("Dang nhap that bai!");
	}
%>
</body>
</html>