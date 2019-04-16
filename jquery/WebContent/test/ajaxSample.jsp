<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script>
	$(document).ready(function(){
		$.ajax({
			url:"<%=request.getContextPath()%>/EmployeeServlet",
			dataType:"json",
			success: function(result){
				console.log(result); //result가 datas전체 값임 (크롬 F12찍어봐라)
				var tb = $("<table border='1'/>");
				for(var i in result.datas){ //result안에있는 datas를 하나씩 넘김
					console.log(i);	//배열이 차례대로 넘어감
					var $id = result.datas[i].id; //index[i]의 id값(Servlet의네모값)을 받아옴
					var $firstName = result.datas[i].firstName;
					var $lastName = result.datas[i].lastName;				
				var row = $("<tr/>").append(
						$("<td/>").text($id),
						$("<td/>").text($firstName),
						$("<td/>").text($lastName),
						$("<td/>").html("<button > Del</button>")
						//$("<td><input type='button' value='Del'></td>") //위와 같음
					);
				tb.append(row)
				}
				$("#show").append(tb);
			}
		});
	});
</script>
</head>
<body>
<div id="show">
</div>
</body>
</html>