<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	div{
		color: red;
		text-align:center;
		coursor: pointer;
		font-weight: bolder;
		width: 300px;
	}
</style>
<script src="jquery.min.js"></script>
</head>
<body>
<div>Click here</div>
<div> to iterate through</div>
<div>these divs.</div>

<script>
$(document.body).click(function(){
	$("div").each(function(i){
		if(this.style.color !== "blue"){
			this.style.color = "blue";
		}else{
			this.style.color ="";
		}
	});
});
</script>
</body>
</html>