<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="content-type" content="text/html; charset=utf-8"/>
<script src="//developers.kakao.com/sdk/js/kakao.min.js"></script>
<link rel= "stylesheet" type="text/css" href="/css/login.css"> 
<script type="text/javascript" src="/js/login.js"></script>

<title>경쾌한 발걸음! - trippin(트리핀)</title>
</head>

<body>


<div id="content_wrap">
	<div class="modal_wrap">
		<div class="modal_title">
			트리핀 로그인		</div>
		<div class="et_modal_close"></div>
		<div class="modal_content">
			<form action="/login.do" method="post" id="login_form" name="login_form">
				<div><input type="text" name="email"  id="email" class="input_txt" placeholder="이메일 주소"></div>
				<div><input type="password" name="userPwd" id="userPwd" class="input_txt" placeholder="비밀번호"></div>
				<div class="et_login" onclick="login_submit();">
					로그인				</div>
			</form>
			<div class="et_login_sub_box"><span><a href="/ko/member/find_pw">비밀번호 찾기</a> | <a href="/ko/member/join" style="color:#1a7ad9">회원가입</a></span></div>
		</div>
		<div class="modal_line"></div>
		<div class="modal_content">
			
			<a id="kakao-login-btn"></a>
			<a href="http://developers.kakao.com/logout"></a>

		</div>		
	</div>

</div>
<script type='text/javascript'>

Kakao.init('c459d0b7109c90d7323ddf348b743514');  //여기서 아까 발급받은 키 중 javascript키를 사용해준다.
Kakao.Auth.createLoginButton({
  container: '#kakao-login-btn',
  success: function(authObj) {
    alert(JSON.stringify(authObj));
  },
  fail: function(err) {
     alert(JSON.stringify(err));
  }
});
</script>

</body>
</html>