<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<link rel="stylesheet" href="https://cdn.datatables.net/1.10.19/css/jquery.dataTables.min.css">
<script src="https://cdn.datatables.net/1.10.19/js/jquery.dataTables.min.js"></script>
<script>
	$(document).ready(function() {
		//$('#example').DataTable({
		//	"ajax" : 'arrays.txt'
/* 		$.ajax({
			url: "arrays2.json",
			success: function(result){
				console.log(result)
				for(var i in result.data){
					var j = 0;
					 $.ajax(
					   { url:"createData1.jsp",
						   type:"post",
						   data:{
							  	"full_name": result.data[i][j++],
							  	"position": result.data[i][j++],
							  	"office": result.data[i][j++],
							  	"extn": result.data[i][j++],
							  	"start_date": result.data[i][j++],
							  	"salary": result.data[i][j++]
						   },
						   success: function(){
							  console.log("success");   
						     }
						   });
					   }						
				   }
				}); */
				$('#example').DataTable({
					"ajax": 'getData.jsp'
				})	
			});
</script>
</head>
<body>
	<table id="example" class="display" style="width: 100%">
		<thead>
			<tr>
				<th>Name</th>
				<th>Position</th>
				<th>Office</th>
				<th>Extn</th>
				<th>Start date</th>
				<th>Salary</th>
			</tr>
		</thead>
		<tfoot>
			<tr>
				<th>Name</th>
				<th>Position</th>
				<th>Office</th>
				<th>Extn.</th>
				<th>Start date</th>
				<th>Salary</th>
			</tr>
		</tfoot>
	</table>
</body>
</html>