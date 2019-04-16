<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="httpshttps://cdn.datatables.net/1.10.19/css/jquery.dataTables.min.css"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script>
$(document).ready(function(){
	$("#plus").on("click",function(){
		$("#rejects").append($("#subjects :selected"));
	})
	$("#minus").on("click",function(){
		$("#subjects").append($("#rejects :selected"));
	})
});
</script>
</head>
<body>
<h3>선택한 option을 상대편으로 옮기기</h3>
<form>
	<select name="subjects" id="subjects" size="10">
		<option> 취미1-1 </option>
		<option> 취미1-2 </option>
		<option> 취미1-3 </option>
		<option> 취미1-4 </option>
		<option> 취미1-5 </option>	
	</select>
	<button type="button" id="plus" >+</button>
	<button type="button" id="minus">-</button>
	<select name="rejects" id="rejects" size="10">
		<option> 취미2-1 </option>
		<option> 취미2-2 </option>
		<option> 취미2-3 </option>
		<option> 취미2-4 </option>
		<option> 취미2-5 </option>	
	</select>
</form>
</body>
</html>