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
	$("#add").click(function(){
		$("#inputV").append("<li>"+$("#text").val()+"</li>");
		$("#text").val("");
		});		
	});
$(document).ready(function(){
	var i = 1;
	$("#add1").click(function(){
		$("#inputX").append("<tr><td>"+ i +"</td><td>"+$("#text22").val()+
				"</td><td><button>삭제</button></td>");
		$("#text22").val("");
		i = i + 1;
	})
})	
</script>
</head>
<body>
<input type="text" id="text">
<button type="button" id="add">Click to Add</button>
<ul id="inputV">
</ul>

<input type="text" id="text22">
<button type="button" id="add1">Click to Add</button>
<table border="1" id="inputX">
	<tr>
	<th>번호</th>
	<th>값</th>
	<th>삭제
	</tr>
</table>
</body>
</html>