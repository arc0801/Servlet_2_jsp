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
	<h1>Delete Form</h1>
	<form id="form" action="formDeleteResult.jsp">
		<input type="text" name="num">
		<input type="button" value="Delete" id="btn">
	</form>

<script type="text/javascript">
	$('#btn').click(function () {
		var result = confirm("정말로 해당 번호의 정보를 삭제하시겠습니까?");
		
		if(result){
			form.submit();
		}
	})
</script>
</body>
</html>