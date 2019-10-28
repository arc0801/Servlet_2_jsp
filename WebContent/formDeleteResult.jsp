<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	int num = Integer.parseInt(request.getParameter("num"));

	String user = "user13";
	String password = "user13";
	String url = "jdbc:oracle:thin:@211.238.142.32:1521:xe";
	String driver = "oracle.jdbc.driver.OracleDriver";

	Class.forName(driver);
	
	Connection con = DriverManager.getConnection(url, user, password);
	
	String sql = "DELETE point where num = ?";
	
	PreparedStatement st = con.prepareStatement(sql);
	
	st.setInt(1, num);
	
	int result = st.executeUpdate();
	
	st.close();
	con.close();
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>Form Delete Result Page</h1>
</body>
</html>