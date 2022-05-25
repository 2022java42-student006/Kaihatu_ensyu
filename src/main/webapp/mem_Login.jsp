<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ログイン</title>
</head>
<link href="/Kaihatu_ensyu/css/style.css" rel="stylesheet">
<body>
	<div class="sample_h_7">
		<p>ログイン</p>


		<ul class="snip1217">
			<div id="menu">
				<li class="current"><a href="top.jsp">ホーム</a></li>
				<li><a href="mem_MyPage.jsp">マイページ</a></li>
				<li><a href="mem_Reg.jsp">会員登録</a></li>
				<li><a href="mem_Login.jsp">ログイン</a></li>
			</div>
		</ul>
	</div>
	<form action="/Kaihatu_ensyu/LoginServlet.java" method="post">
	<br><br>
		ログインID<input type="text" name="loginID"class="form-text"> <br> パスワード<input
			type="password" name="password"class="form-text"> <br> <input
			type="hidden" name="action" value="login"class="form-text"><br> <input
			type="submit" value="ログイン"class="button"> <br> <br> 
			<br>
			<a href="mem_Lev.jsp"class="btn btn-flat"><span>退会手続きの方はこちら←</span></a>


		<footer id="f3">
			<h1 class="f">新宿トラベル</h1>
			<h2 class="f1">&copy; Shinjuku Travel</h2>
		</footer>

</body>
</html>