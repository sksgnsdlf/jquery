<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="jquery.min.js"></script>
<Script>
	$(document).ready(
	function() {
		$("#myInput").on("keyup",function() {
		var value = $(this).val().toLowerCase();
		$("table tr").filter(
		function() {
			$(this).toggle($(this).text().toLowerCase().indexOf(value) > -1);
			}).css("display", "none")
	})
})
</Script>
</head>
<body>
    <input id="myInput" />
</body>
</html>