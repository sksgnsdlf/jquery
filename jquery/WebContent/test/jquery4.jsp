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
		$("#wrap > h1").css("border", "2px dashed #f00");

		$("#wrap > section").children().css({
			"background-color":"yellow",
			"border":"2px solid #f00"
			});
	});
</script>
</head>
<body>
	<div id="wrap">
		<h1>인접 관게 선택자</h1>
		<p>내용1</p>
		<section>
			<h1>자식요소 선택자</h1>
			<p>내용2</p>
		</section>
	</div>
</body>
</html>