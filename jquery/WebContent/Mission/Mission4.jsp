<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="jquery.min.js"></script>
    <script>
$(document).ready(function(){
	var Text = $("#Text1").text();	
$("#Text2").click(function(){
	alert(Text);
});

$("#Text3").click(function(){	
	var Text2 = $("#Text1").html();
	alert(Text2);
});
});
</script>
</head>
<body>
	<p id="Text1"> This is some Bold text in a paragraph.<label>eee</label> </p>
    <button id="Text2">Show Text</button>
    <button id="Text3">Show HTML</button>
</body>
</html>