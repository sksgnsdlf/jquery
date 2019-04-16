<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script>
	$(function(){
		$("#title").css("background","red");
	});
	$(document).ready(function(){ //전체코드를 다 읽은다음 ready를 실행하는것
		$("#title1").css("color","red");
	})
	//같은 의미이다.
</script>
</head>
<body>
	<h1 id="title">제목</h1>
	<h1 id="title1">제목</h1>
</body>
</html>