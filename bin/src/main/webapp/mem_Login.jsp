<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ログイン</title>
</head>
<body>
<a href="top.jsp">Topへ戻る</a>
<br>
<h1>ログイン</h1>
<br>
<form action="/" method="post">

ログインID<input type="text" name="loginID">
<br>
パスワード<input type="password" name="password">
<br>
<input type="hidden" name="action" value="login">
<input type="submit" value="ログイン">



<br>
<br>

退会手続きの方はこちら
<input type="hidden" name="action" value="leave">
<input type="submit" value="退会手続き">


</form>
</body>
</html>