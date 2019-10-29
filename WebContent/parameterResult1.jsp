<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String name = request.getParameter("name"); //return data type 무조건 String
	int num = Integer.parseInt(request.getParameter("age"));
	System.out.println(name);
	System.out.println(num);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>Parameter Test Result1 Page</h1>
	<h1><%= name %></h1>
	<h1><%= num %></h1>
</body>
</html>