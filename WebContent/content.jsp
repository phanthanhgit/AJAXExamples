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
	if(request.getParameter("name") != null && request.getParameter("year") != null){
		String name = request.getParameter("name");
		String year = request.getParameter("year");
		out.print("<h1>Load thanh cong</h1><br>");
		out.print("Copyright " + name + " - " + year);
	} else {
		out.print("<h1>Khong co du lieu</h1><br>");
	}
%>
</body>
</html>