<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
</head>
<body>
	<h1>Parameter Test Page</h1>
	<a href="./parameterResult1.jsp?name=iu&age=27">GO1</a>
	<button id="btn">Click</button>
	
	<form action="./parameterResult1.jsp?name=iu&age=27" method="get">
		<input type="text" name="name">
		<input type="number" name="age">
		<input type="submit" name="Click">
	</form>
	
	<form id="frm" action="./parameterResult1.jsp?name=iu&age=27" method="post">
		<input type="text" name="name">
		<input type="number" name="age">
		<input type="submit" id="btn2" value="Click">
	</form>
	
<script type="text/javascript">
$('#btn2').click(function() {
	var check = confirm("확인 또는 취소");
	if(check){
		/* location.hrer="./parameterResult1.jsp?name="+$('#v1').val()+"&age=+('#').val()"; */
		$('#frm').submit();
	}else {
		alert("취소");
	}
})
	$('#btn').click(function() {
		/* alert(); */
		location.href="./parameterResult1.jsp?name=choa&age=27";
	})
</script>	
</body>
</html>