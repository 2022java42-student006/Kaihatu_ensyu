<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>退会手続き</title>
</head>
<body>
<h1>退会手続き</h1>
<br>
<a href="top.jsp">Topへ戻る</a>
<br><br>

<form action="/" method="post">
氏名<input type="text" name="name">
<br>
ログインID<input type="text" name="liginID">
<br>
パスワード<input type ="password" name="password">
<br>
<label>
  <input type="checkbox" name="checkLeave" value="checkLeave">
 退会するとデータが削除されます。<br>
 退会しますか？
 <br>
</label>
<input type="hidden" name="action" value="leave">
<input type="submit" value="退会する">



</form>
</body>
</html>