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
        	var $frm = $(".login_f");
        	$frm.on("submit", function(event){
        		event.preventDefault();
        		var datas = $frm.serializeArray();
        		$.ajax({
        			url: $frm.attr("action"), //member_login_ok.jsp?user_id=user01&user_pw=1111
        			data: datas,//datas-> {user_id:user01,user_pw:1111}
        			type: "post",
        			dataType: "json",
        			success: function(result){
        				console.log(result);
       					//var data = JSON.parse(result);
       					var data = result;
       					console.log(data);
       					if (data.username == "no")
                       	    $(".login_wrap").html("<b>Id, Pw 를 확인하세요.</b>");
                       	else
                       	    $(".login_wrap").html("<p>Welcome to " + data.username + "</p>");
        			}
        		});
        	})
        });
    </script>
</head>

<body>
    <div class="login_wrap">
        <h1>로그인</h1>
        <form class="login_f" method="post" action="member_login_ok.jsp">
            <p>
                <label for="user_id">아이디</label>
                <input type="text" name="user_id" id="user_id" value="110" />
            </p>
            <p>
                <label for="user_pw">비밀번호</label>
                <input type="password" name="user_pw" id="user_pw" value="John" />
            </p>
            <p><input type="submit" value="로그인" class="login_btn" /></p>
        </form>
    </div>
</body>

</html>