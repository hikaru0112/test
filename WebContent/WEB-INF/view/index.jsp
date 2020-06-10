<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!doctype html>
<html lang="ja">
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
<%@ page import="java.util.ArrayList"%>
<%@ page import="bean.Msgbean"%>
<title>Insert title here</title>
<%
ArrayList<Msgbean> msg = (ArrayList<Msgbean>)request.getAttribute("msg");


%>
<style type="text/css">
body{
    margin-left: auto;
    margin-right: auto;
    width: 700px;


    border:10px solid #47a60c;/* 枠線 */
    box-sizing:border-box;
}
p.box {
   border-bottom: 1px dashed green;
}


p.name{
font-size: 25px;
}
</style>
</head>
<body>
<h1>掲示板</h1>
<a href="/2chan/setting"><p>編集画面</p></a>
<%
for(Msgbean mb: msg){
	%><p class="name"><%=mb.getName() %></p>
	<p><%=mb.getMsg() %><p>
	<p class="box"><%="作成日時："+mb.getIndata()%>
	<%if(!(null == mb.getUpdata())&&!(mb.getUpdata().equals(mb.getIndata()))){
		%><%="   更新日時："+mb.getUpdata()%></p><%


	}
}
%>
<form action="/2chan/Uproad" method="post">
名前:<input type="text" name="name"><br>
mail:<input type="text" name="mail"><br>
<textarea rows="10" cols="60" placeholder="メッセージを入力"  name="msg"></textarea>
<br><input type="submit" value="送信する">
</form>

</body>
</html>