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
	$("#wrap > li").css("border","2px dashed #f00");
});
</script>
</head>
<body>
	<h1>인접 관게 선택자</h1>
		<ul id="wrap">
			<li>리스트1
				<ul>
					<li id="list_1">리스트1-1</li>
					<li>리스트 1-2</li>
				</ul>
			</li>	
			<li>리스트2</li>
			<li>리스트3</li>
		</ul>
</body>
</html>