<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link href="/Kaihatu_ensyu/css/style.css" rel="stylesheet">
<meta charset="UTF-8">
<title>会員登録</title>
</head>
<body>
		<h3>会員登録</h3>
		
		<ul class="snip1217">
					<div id="menu">
  						<li class="current"><a href="top.jsp">ホーム</a></li>
  						<li><a href="mem_MyPage.jsp">マイページ</a></li>
  						<li><a href="mem_Reg.jsp">会員登録</a></li>
  						<li><a href="mem_Bc.jsp">予約確認</a></li>
  					</div>
	</ul>
	
			<br>
				名前
					<input type="text" name ="名前   " class="form-text"/>

			<br>
				電話番号
					<input type="tel" name="電話" class="form-text"/>
			<br>
				メール
					<input type="email" name="メール" class="form-text"/>
				
			<br>
				ログインID
					<input type="text" name="ログインID" class="form-text"/>
			<br>
				パスワード
					<input type="password" name="パスワード" class="form-text"/>
	
			<br>
				生年月日
					<input type="date" name="生年月日" class="form-text"/>

			<br>
				住所
					<input type="text" name="住所" class="form-text"/>
				
				<input class="contact-submit" type="submit" value="登録" />
</body>
</html>