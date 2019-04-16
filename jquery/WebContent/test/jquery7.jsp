<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="jquery.min.js"></script>
<script>
$(function(){
$("#wrap p:eq(2)").after("<p>After</p>");
$("<p>insertAfter</p>").insertAfter("#wrap p:eq(1)");

$("#wrap p:eq(1)").before("<p>Before</p>");
$("<p>insertBefore</p>").insertBefore("#wrap p:eq(0)");
});
</script>
</head>
<body>
	<div id="wrap">
		<p>내용1</p>
		<p>내용2</p>
		<p>내용3</p>
	</div>
</body>
</html>