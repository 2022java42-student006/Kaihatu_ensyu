<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<link href="/Kaihatu_ensyu/css/style.css" rel="stylesheet">
<meta charset="UTF-8">
<title>マイページ</title>
</head>
<body>
<div class="sample_h_7">
<p>マイページ</p>


<ul class="snip1217">
						<div id="menu">
  							<li class="current"><a href="top.jsp">ホーム</a></li>
  							<li><a href="mem_MyPage.jsp">マイページ</a></li>
  							<li><a href="mem_Reg.jsp">会員登録</a></li>
  							<li><a href="mem_Bc.jsp">予約確認</a></li>
  						</div>
					</ul>	
		</div>
	<br>
<form action="/" method="post">
<<<<<<< HEAD
<input type="submit" value="予約情報確認">
=======
>>>>>>> f9a8bf9c8e8ce1887cbc6301940f4b5f0b522d2c
<input type="hidden" name="action" value="bookConfirm">
<br>

氏名：${member.name}
<br>
<<<<<<< HEAD
電話番号：${member.phone}
<br>
E-mail:${member.email} 
<br>
ログインID：${member.login_id}
=======
<br>
電話番号：
<br>
<br>
E-mail:
<br>
<br>
ログインID：
>>>>>>> f9a8bf9c8e8ce1887cbc6301940f4b5f0b522d2c
<br>
<br>
<a href="mem_Ch.jsp">変更</a>
<a href="mem_Lev.jsp">退会</a>
<input type ="submit" value="ログアウト">
<input type="hidden" name="action" value="logout">
<br>



<footer id="f3">
  		<h1 class="f">新宿トラベル</h1>
 		 <h2 class="f1">&copy;  Shinjuku Travel</h2>
 	</footer>

</form>
</body>
</html>