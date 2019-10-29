<%@page import="java.sql.ResultSet"%>
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
	
	String sql = "select * from point where num = ?";
	
	PreparedStatement st = con.prepareStatement(sql);
	
	st.setInt(1, num);
	
	ResultSet rs = st.executeQuery();
	
	int n=0;
	String name=null;
	int kor=0;
	int eng=0;
	int math=0;
	int total=0;
	double avg=0.0;
	
	if(rs.next()){
		n = rs.getInt("num");
		name = rs.getString("name");
		kor = rs.getInt("kor");
		eng = rs.getInt("eng");
		math = rs.getInt("math");
		total = rs.getInt("total");
		avg = rs.getDouble("avg");
	}
		
	rs.close();
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
	<h1>Form Select Result Page</h1>
	<h3><%= n %></h3>
	<h3><%= name %></h3>
	<h3><%= kor %></h3>
	<h3><%= eng %></h3>
	<h3><%= math %></h3>
	<h3><%= total %></h3>
	<h3><%= avg %></h3>
</body>
</html>