<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% String str = request.getContextPath(); %>
<!DOCTYPE html>
<html>

<head>
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script>
    $(document).ready(function () {

      $.ajax({
        url: "<%=request.getContextPath()%>/EmpServlet?action=list",
        dataType: "json",
        success: function (results) {
          var $tableTag = $("<table border='1' />");
          for (var i = 0; i < results.datas.length; i++) {
            var $trTag = $("<tr />").attr("id", results.datas[i].employeeid);
            $trTag.append($("<td />").text(results.datas[i].employeeid), $("<td />").text(results.datas[i].firstName), $("<td />").html("<button onclick='del(" + results.datas[i].employeeid + ")' >Del</button>"));
            $tableTag.append($trTag);
          }
          $("#div1").append($tableTag);
        }
      });
    });

    function del(id) {
      console.log(id);
      $("#" + id).remove();
      $.ajax({
        url: "<%=request.getContextPath()%>/EmpServlet?action=del",
        dataType:"json",
        data: { employeeid: id },
        success: function (result) {
          console.log("return");
          console.log(result);
        }
      });
    }
  </script>
</head>

<body>

  <div id="div1">
    <h2>Let jQuery AJAX Change This Text</h2>
  </div>

</body>

</html>