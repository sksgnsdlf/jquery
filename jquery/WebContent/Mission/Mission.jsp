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
	$("li:not(:eq(0))").css("background","yellow");
});
</script>

</head>
<body>
<ul id="myList">
<li>내용1</li>
<li>내용2</li>
<li>내용3</li>
<li>내용4</li>
</ul>
</body>
</html>