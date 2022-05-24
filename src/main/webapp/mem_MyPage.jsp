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
  							<li><a href="mem_Login.jsp">ログイン</a></li>
  						</div>
					</ul>	
		</div>
	<br>
<form action="/" method="post">



<input type="hidden" name="action" value="bookConfirm">
<br>

氏名：${member.name}
<br>

電話番号：${member.phone}
<br>
E-mail:${member.email} 
<br>
ログインID：${member.login_id}

<br>

<br>
<br>
<<<<<<< HEAD
<a href="mem_Ch.jsp">変更</a>
<a href="mem_Lev.jsp">退会</a>
</form>

<form action="/Kaihatu_ensyu/LogoutServlet?action=logout" method="post">
<input type ="submit" value="ログアウト">
<input type="hidden" name="action" value="logout">
</form>
=======

<a href="mem_Ch.jsp" class="btn btn-flat"><span>変更</span></a>
<a href="mem_Lev.jsp" class="btn btn-flat"><span>退会</span></a>



<div id="app">
<label>
<input type ="submit" value="ログアウト">
<input type="hidden" name="action" value="logout">
</label>
</div>
>>>>>>> a2c692ce6265b676c9d232770854d421196df536
<br>



<footer id="f3">
  		<h1 class="f">新宿トラベル</h1>
 		 <h2 class="f1">&copy;  Shinjuku Travel</h2>
 	</footer>


</body>
</html>