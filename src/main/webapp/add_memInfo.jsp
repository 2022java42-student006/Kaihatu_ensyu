<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>会員情報画面</title>
</head>
<body>
<jsp:include page="/addMenu.jsp" />

<a href="add_memTop.jsp">戻る</a>
<form action="/" method="post">
<br>
<br>
会員情報<br>
<table border ="1">
<tr><td>会員ID</td><td>氏名</td><td>住所</td><td>電話番号</td></tr>
<tr><td>　</td><td></td><td>　</td><td>　</td></tr>
<tr><td>E-mail</td><td>生年月日</td><td>入会年月日</td><td>退会年月日</td></tr>
<tr><td>　</td><td>　</td><td>　</td><td>　</td></tr>
</table>

<input type="submit" value="変更">
<input type="hidden" name="action" value="changeMemData"> 

<input type="submit" value="削除">
<input type="hidden" name="action" value="delete">

<br>
<br>
<table border ="1">
<tr><td>会員ID</td><td>氏名</td><td>住所</td><td>電話番号</td></tr>
<tr><td>　</td><td></td><td>　</td><td>　</td></tr>
<tr><td>E-mail</td><td>生年月日</td><td>入会年月日</td><td>退会年月日</td></tr>
<tr><td>　</td><td>　</td><td>　</td><td>　</td></tr>
</table>

<input type="submit" value="変更">
<input type="hidden" name="action" value="changeMemData"> 

<input type="submit" value="削除">
<input type="hidden" name="action" value="delete">
</form>
</body>

</body>
</html>