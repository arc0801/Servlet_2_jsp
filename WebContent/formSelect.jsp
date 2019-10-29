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
	<h1>Form Select Page</h1>
	<form action="formSelectResult.jsp" id="frm">
		<input type="text" name="num">
		<button id="btn">SELECT</button>
	</form>
	
<script type="text/javascript">
	$('#btn').click(function() {
		var result = confirm("해당 번호 선택?");
		
		if(result){
			$('#frm').submit();
		}
	});
</script>	
</body>
</html>