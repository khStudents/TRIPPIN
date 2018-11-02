<%@page import="com.trippin.member.model.vo.Member"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

<%
	session = request.getSession(false);
	Member member = (Member)session.getAttribute("member");	
	if(member!=null){
%>
<H1>[<%=member.getUserName()%>]님 환영합니다.</H1>
	<a href="/myInfo.do">마이페이지</a><br>
	<a href="/logout.do">로그아웃</a><br>
	
	<%if(!member.getEmail().equals("admin@trippin.com")){ %>
	<a href="/mdelete.do">회원탈퇴</a><br>
	<%} %>		
<%
	}else{
%>

<form action="/login.do" method="post">
ID : <input type="email" name="email"/><br>
PW : <input type="password" name="userPwd"/><br>
<input type="submit" value="로그인"/>
</form>
<a href="/views/member/enroll.jsp">회원가입</a>
<%
	}
%>

</body>
</html>