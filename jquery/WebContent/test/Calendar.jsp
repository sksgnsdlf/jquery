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
	var today = new Date();
	var thisYear = today.getFullYear();
	var thisMonth = today.getMonth();
	console.log(thisMonth+1);
	var lastDate = new Date(thisYear, (thisMonth+1),0).getDate();
	console.log(lastDate);
	var thisDay = new Date(thisYear, thisMonth,1).getDay(); 
	console.log(thisDay);
	
	//요일적는곳
	var $tableTag = $("<table border='1'/>");
	var $trTag = $("<tr />");
	var dayAry = ["Sun","Mon","Tue","Wed","Thr","Fri","Sat"];
	for(var i=0; i<7; i++){
		$trTag.append($("<th>").text(dayAry[i]));
	}
	$tableTag.append($trTag);
	//공백날짜 구하는곳
	var $trTag = $("<tr />");
	var blank = 0;
	for(blank=0; blank<thisDay; blank++){
		$trTag.append($("<td>").text(" "));		
	}
	//요일날짜 구하고 줄바꾸는곳
	for(var i=1; i<=lastDate; i++){
		if((blank+i)%7 == 0) //토요일엔 하늘색
			$trTag.append($("<td>").text(i).css("background-color","cyan"));
		else if((blank+i)%7 == 1) //일요일날 빨간색
			$trTag.append($("<td>").text(i).css("background-color","red"));
		else if(i == today.getDate()) //오늘날짜엔 노란색
			$trTag.append($("<td>").text(i).css("background-color","yellow"));
		else  //줄바꿈
			$trTag.append($("<td>").text(i));
		if((blank+i)%7 == 0)
		var $trTag = $("<tr />");
		$tableTag.append($trTag);
	}
	$("#Calendar").append($tableTag);
});
</script>
</head>
<body>
<div id="Calendar">
</div>
</body>
</html>