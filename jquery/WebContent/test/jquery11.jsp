<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script src="jquery.min.js"></script>
<script>
$(function(){ //방향키 눌렀을때 스위치값을 input에 넣어줌
	$(document).on("keydown", keyEventFnc);
	function keyEventFnc(e){
		var direct = "";
		
		switch(e.keyCode){
		case 37:
			direct = "LEFT";
			break;
		case 38:
			direct = "TOP";
			break;
		case 39:
			direct = "RIGHT";
			break;
		case 40:
			direct = "BOTTOM";
			break;
		}
		
		if(direct) $("#user_id").val(direct);
	}
});
</script>
</head>
<body>
<p><input type="text" name="user_id" id="user_id"></p>
</body>
</html>