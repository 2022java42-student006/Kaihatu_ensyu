<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link href="/Kaihatu_ensyu/css/style.css" rel="stylesheet">
<meta charset="UTF-8">
<title>管理者ログイン画面</title>
</head>

	<body>
		<h3>管理者ログイン</h3>
		<br>
				
				<form action="/Kaihatu_ensyu/Add_LoginServlet?action=login_info" method="post">
				ユーザ名:
				<input type="text" name="add_username">
				<br>	
				パスワード:
				<input type="password" name="add_password"><br>
				<input type="submit" value="ログイン" >
				</form>
				<br>	
				
		
	</body>
</html>