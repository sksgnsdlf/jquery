<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="jquery.min.js"></script>
<script>
$(function(){  //on방식
	$("#box_1").on({ 
		//mouseout - 각각의 범위안에 들어가면 색깔바뀜
		"mouseout": function(){
		$("#box_1").css({"background-color" : "yellow"})
	},
		//mouseover - 각각의 범위안에 들어갔을때만 색깔바뀜
	"mouseover": function(){	
		$("#box_1").css({"background-color" : "blue"})
	}});

	//각각지정방식
	//mouseleave - 전체범위안에 들어가면 색깔바뀜
	$("#box_2").on("mouseleave", function(){
		$("#box_2").css({"background-color" : "pink"});
	});
	//mouseenter - 전체범위안에 들어갔을때만 색깔바뀜
	$("#box_2").on("mouseenter", function(){
		$("#box_2").css({"background-color" : "red"});
	});
});
</script>
</head>
<body>
	<H1>mouseout</H1>
	<div id="box_1">
		<p><a href="#">내용1</a></p>
		<p><a href="#">내용2</a></p>
		<p><a href="#">내용3</a></p>
	</div>
	
		<H1>mouseleave</H1>
	<div id="box_2">
		<p><a href="#">내용4</a></p>
		<p><a href="#">내용5</a></p>
		<p><a href="#">내용6</a></p>
	</div>
</body>
</html>