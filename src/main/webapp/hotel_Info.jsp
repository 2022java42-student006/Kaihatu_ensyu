<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link href="/Kaihatu_ensyu/css/style.css" rel="stylesheet">
<meta charset="UTF-8">
<title>宿情報詳細</title>
</head>
<body>
<h3>新宿トラベル</h3>
	
	<ul class="snip1217">
					<div id="menu">
  						<li class="current"><a href="top.jsp">ホーム</a></li>
  						<li><a href="gimi.html">マイページ</a></li>
  						<li><a href="kouryaku.html">会員登録</a></li>
  						<li><a href="mem_Bc.jsp">予約確認</a></li>
  					</div>
	</ul>
<br>
<br>
<br>


<table>

<tr><th>宿名：</th><td>データベースより取得情報が入る</td></tr>
<tr><th>住所：</th><td>データベースより取得情報が入る</td></tr>
<tr><th>電話番号：</th><td>データベースより取得情報が入る</td></tr>
<tr><th>部屋数：</th><td>データベースより取得情報が入る</td></tr>
<tr><th>チェックイン時間：</th><td>データベースより取得情報が入る</td></tr>
<tr><th>チェックアウト時間：</th><td>データベースより取得情報が入る</td></tr>

</table>
<br>
<br>
<br>
<form action="" method="post">
<input type="submit" value="ご予約はこちらから">
<input type="hidden" name="action" value="reserve">
</form>



</body>
</html>