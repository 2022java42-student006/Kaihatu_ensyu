<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>会員新規登録画面</title>
</head>
<body>
	<h1>会員新規登録画面</h1>
	<a href="add_memTop.jsp">戻る</a>
	<form action="" method="post">
		氏名：<input type="text" name="name"> <br>
		電話番号：<input type="text" name="tel"><br>
		 E-mail：<input type="text" name="email"><br>
		ログインID：<input type="text" name="login_id"><br> 
		生年月日：<input type="text" name="birthday"><br>
		住所：<input type="text" name="address"> <br>
		<input type="submit" value="登録する">
	</form>
</body>
</html>