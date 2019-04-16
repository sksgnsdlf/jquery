<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<script src="jquery.min.js"></script>
    <script>
$(document).ready(function(){
$("#hide").click(function(){
$("p").hide();
});
$("#show").click(function(){
$("p").show();
});
});
</script>
</head>
 <body>
    <H2>This is a heading </h2>
	<p> This is a paragraph.</p>
	<p> This is another paragraph. </p>
    <button id="hide">Hide</button>
    <button id="show">Show</button>
</body>
</html>