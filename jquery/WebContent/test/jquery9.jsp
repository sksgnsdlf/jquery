<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="jquery.min.js"></script>
<script>
$(document).ready(function){
	$("input").keydown(function(event){
		$("div").html("key: " + event.which);
		});
</script>
</head>
<body>
Enter your name : <input type="text">
<p> When.. number.</p>
<div/>
<div id="show"></div>
</body>
</html>