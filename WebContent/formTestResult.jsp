<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	/* String p1 = request.getParameter("p1");
	String p2 = request.getParameter("p2"); */
	String name = request.getParameter("name");
	int kor = Integer.parseInt(request.getParameter("kor"));
	int eng = Integer.parseInt(request.getParameter("eng"));
	int math = Integer.parseInt(request.getParameter("math"));
	int total = kor + eng + math;
	double avg = total/3.0;
	
	//DB 접속
	//1. 로그인 4가지 정보
	String user = "user13";
	String password = "user13";
	String url = "jdbc:oracle:thin:@211.238.142.32:1521:xe";
	String driver = "oracle.jdbc.driver.OracleDriver";
	
	//2. driver를 메모리에 로딩
	Class.forName(driver);
	
	//3. 로그인 후 Connection 객체 반환
	Connection con = DriverManager.getConnection(url, user, password);
	
	//4. Sql문 생성
	String sql = "insert into point values(point_seq.nextval, ?, ?, ?, ?, ?, ?)";
	
	//5. Sql문 미리 전송
	PreparedStatement st = con.prepareStatement(sql);
	
	//6. ? 값 세팅
	st.setString(1, name);
	st.setInt(2, kor);
	st.setInt(3, eng);
	st.setInt(4, math);
	st.setInt(5, total);
	st.setDouble(6, avg);
	
	//7. 최종 전송 후 결과 처리
	int result = st.executeUpdate();
	
	//8. close
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
	<h1>Form Test Result Page</h1>
	<%-- <h3>P1: <%= p1 %></h3>
	<h3>p2: <%= p2 %></h3> --%>
	<h3>name: <%= name %></h3>
	<h3>kor: <%= kor %></h3>
	<h3>eng: <%= eng %></h3>
	<h3>math: <%= math %></h3>
	<h3>total: <%= total %></h3>
	<h3>avg: <%= avg %></h3>
</body>
</html>