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
		url:"<%=request.getContextPath()%>/cmjServlet",
		dataType:"json",
		success: function(result){
			var tb = $("<table border='1'/>");
			for(var i in result.datas){
				var $employee_id = result.datas[i].employee_id; 
				var $firstName = result.datas[i].firstName;
				var $lastName = result.datas[i].lastName;	
				var $salary = result.datas[i].salary;	
			var row = $("<tr />").attr("id", result.datas[i].employee_id).append(
					$("<td/>").text($employee_id),
					$("<td/>").text($firstName),
					$("<td/>").text($lastName),
					$("<td/>").text($salary),
					$("<td/>").html("<button onclick='del(" + result.datas[i].employee_id + ")' >Del</button>")
				);
			tb.append(row)
			}
			$("#show").append(tb);
		}
	});
});
function del(id) {
    console.log(id);
    $("#" + id).remove();
    $.ajax({
      url: "<%=request.getContextPath()%>/cmjDelServlet?action=del",
      dataType:"json",
      data: { employee_id: id },
      success: function (result) {
        console.log("return");
        console.log(result);
      }
    });
  }
</script>
</head>
<body>
<div id="show">
</div>
</body>
</html>