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
	$.ajax({
		url:"./dataset.xml",
		dataType:"xml",
		success:function(data){
			var $data = $(data).find("record");
			if($data.length > 0){
				var tb = $("<table />");
				$.each($data, function(i,o){
					var $id = 
					$(o).find("id").text();
					
					var $first_name = 
						$(o).find("first_name").text();
						
					var $last_name = 
						$(o).find("last_name").text();
						
					var $email = 
						$(o).find("email").text();
						
					var $gender = 
						$(o).find("gender").text();
						
					var row = $("<tr/>").append(
					$("<td/>").text($id),
					$("<td/>").text($first_name),
					$("<td/>").text($last_name),
					$("<td/>").text($email),
					$("<td/>").text($gender)
					);
					tb.append(row);
				});
				$(".wrap").append(tb);
			}
		}
	});
});
</script>
</head>
<body>
	<div class="wrap"></div>
</body>
</html>