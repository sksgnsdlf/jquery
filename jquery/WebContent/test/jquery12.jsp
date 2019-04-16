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
	$.ajax({ //ajax부르는 방식(사용하는 방식)
		url:"./MOCK_DATA.json",
		dataType:"json",
		success:function(data){
			if(data.length > 0){
				var tb= $("<table />");
				for(var i in data){
					var $id= data[i].id;
					var $first_name = data[i].first_name;
					var $last_name = data[i].last_name;
					var $email = data[i].email;
					var $gender = data[i].gender; 
					
					var row=$("<tr/>").append(
						$("<td/>").text($id),
						$("<td/>").text($first_name),
						$("<td/>").text($last_name),
						$("<td/>").text($email),
						$("<td/>").text($gender)
					);		
					tb.append(row);
				}
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