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
	$(".btn1").click(function(){
		$(".btn1").parent().next().css({"color" : "#f00"});
});

	$(".btn2").on({
	  "mouseover focus" : function() {
		$(".btn2").parent().next().css({"color" : "#0f0"});
	  },
	  "mouseout blur" : function(){
		  $(".btn2").parent().next().css({"color" : " #000"});
		  },
	  });
});
</script>
</head>
<body>
<p>
	<button class="btn1">버튼1</button>
</p>
<p>내용1</p>
<p>
	<button class="btn2">버튼2</button>
</p>
<p>내용2</p>
</body>
</html>