<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>マイページ</title>
</head>
<body>
<h1>マイページ</h1>

<form action="/" method="post">
<input type="submit" value="予約情報確認">
<input type="hidden" name="action" value="bookConfirm">
<br>
<br>

氏名：
<br>
電話番号：
<br>
E-mail:
<br>
ログインID：
<br>
<br>

<button onclick="location.href='mem.Ch.jsp'">
変更
</button>


<input type ="submit" value="ログアウト">
<input type="hidden" name="action" value="logout">
</form>
</body>

</html>