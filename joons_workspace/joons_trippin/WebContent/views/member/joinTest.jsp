<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="content-type" content="text/html; charset=utf-8"/>
<link rel= "stylesheet" type="text/css" href="/css/join.css"> 
<script type="text/javascript" src="/js/join.js"></script>

<title>경쾌한 발걸음! - trippin(트리핀)</title>
</head>

<body>

<div id="content_wrap">
	<div class="modal_wrap">
		<div class="modal_title">
			트리핀 회원가입		</div>
		<div class="et_modal_close"></div>
		<div class="modal_content">
			<form action="enroll.do" method="post" id="join_form" name="join_form">
				<div><input type="text" name="email"  id="email" class="input_txt" placeholder="이메일 주소"></div>
				<div><input type="password" name="userPwd" id="userPwd" class="input_txt" placeholder="비밀번호"></div>
				<div><input type="password" name="userPwdRe" id="userPwdRe" class="input_txt" placeholder="비밀번호 확인"></div>
				<div><input type="text" name="userName" id="userName" class="input_txt" placeholder="성명"></div>
				<div><input type="text" name="phone" id="phone" class="input_txt" placeholder="휴대폰 번호"></div>
				<div>
					<input type="radio" name="gender" checked="true">남</input>
					<input type="radio" name="gender">여</input>
				</div>
				<div class="et_login" onclick="join_submit();">
					회원가입				</div>
			</form>
			<div class="et_login_sub_box"><span><a href="/views/member/login.jsp">이미 회원이신가요?  로그인</a></span></div>
		</div>
		<div class="modal_line"></div>
		<div id="confirm_term" data="0" class="">
			어스토리에 가입하면서 이용약관과 개인정보 취급방침을 확인하고 이에 동의합니다.
		</div>

	</div>

</div>

</body>
</html>