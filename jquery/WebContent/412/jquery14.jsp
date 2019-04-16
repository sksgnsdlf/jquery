<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
body {
	font: 14px Malgun Gothic, sans-serif;
}
.zoomBtnZone
(font-size
:
14px;)
</style>
<script src="jquery.min.js"></script>
<script>
	$(document).ready(function() {
		var orginPx = 14;
		$(".zoomZone button").on("click",zoomInOut);
		function zoomInOut() {
			if ($(this).hasClass("zoomOut")) {
				orginPx--;
			} else if ($(this).hasClass("zoomIn")) {
				orginPx++;
			}
			else if ($(this).hasClass("origin")) {
				orginPx = 14;
			}
			else if ($(this).hasClass("hide")) {
				$("#wrap").css({"display":"none"});
			}
			else if ($(this).hasClass("show")) {
				$("#wrap").css({"display":"block"});
			}
			
			$(".fontSize").text(orginPx);
			$("#wrap").css({
				fontSize : orginPx + "px"
			});
		}
		
		//$("li").each(function(i,o){
			$.ajax({
				url: "<%=request.getContextPath()%>/EmployeeServlet",
				dataType: "json",
				success: function(result){
					var tb = $("<li/>");
					for(var i in result.datas){
						var $fn = result.datas[i].firstName;
						//console.log($fn);
						$("#show").append($("<li/>").text($fn));
						//console.log(tb.text($fn));
					}
				}
			})		
			//input ==
		//});
	})
</script>
</head>
<body>
<div id="show"></div>
	<input type="text" id="input1"><button id="list1">Click</button>
	<p class="zoomZone">
		<button class="zoomOut">-</button>
		<button class="origin">100%</button>
		<button class="zoomIn">+</button>
		<button class="hide">Hide</button>
		<button class="show">show</button>
	</p>
	<p class="fontSize">14px</p>
	<div id="wrap">Setting the width of a block-level emement will</div>
</body>
</html>