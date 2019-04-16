<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="jquery.min.js"></script>
<script>
	$(function() {
		$("#Text2").click(function() {
			var name = $("#link").attr("href");
			alert(name);
		});
	});
</script>
</head>
<body>
	<a id="link" href="www.naver.com">W3Schools.com</a>
	<br>
	<button id="Text2">Show href Value</button>

</body>
</html>