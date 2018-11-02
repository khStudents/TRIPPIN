<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

<<<<<<< HEAD:hyunJinWorkSpace/TrippinBoard/WebContent/index.jsp

<a href="/faqList.do">클릭</a>
=======
<%
	session = request
%>
<!--로그인  -->
<form action="/login.do" method="post">
ID : <input type="text" name="userId"/><br>
PW : <input type="password" name="userPwd"/><br>
<input type="submit" value="로그인"/>
</form>

<!--회원가입  -->
<a href="/views/member/join.jsp">회원가입</a>

>>>>>>> 1341fd752ec1c34d28bc57290f88faa15e81d841:joons_workspace/joons_trippin/WebContent/index.jsp
</body>
</html>

