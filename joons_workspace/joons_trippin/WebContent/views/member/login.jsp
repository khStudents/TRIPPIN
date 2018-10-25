<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="content-type" content="text/html; charset=utf-8"/>
<script src="//developers.kakao.com/sdk/js/kakao.min.js"></script>

<title>경쾌한 발걸음! - trippin(트리핀)</title>
</head>

<body>

<style>
.modal_wrap{width:365px;border-top:solid #1a7ad9 2px;font-family:nanum;}
.modal_title{font-size:19px;height:60px;border-bottom:solid #cccccc 1px;color:#363636;font-weight:bold;padding:22px 0px 0px 20px;}
.modal_content{padding:20px;}
.modal_line{width:365px;height:1px;background:#ccc;}

.et_login{width:325px;height:40px;line-height:40px;background:#1a7ad9;color:#fff;text-align:center;font-size:15px;cursor:pointer;}
.input_txt{width:312px;height:31px;border:solid #c8c8ca 1px;margin-bottom:10px;font-family:'nanum';padding-left:10px;}

.et_login_sub_box{padding-top:10px;font-size:13px;color:#808080;}
.et_login_sub_box a{color:#808080;}
.et_modal_close{top:22px;right:10px;width:23px;height:23px;cursor:pointer;}

#loading_wrap{display:none;text-align:center;padding-top:100px;}
</style>

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
<script>

function login_submit(){
	if($('#email').val() == ''){
		alert('이메일주소는 필수입니다.');//"이메일"은 필수 정보입니다.');
		$('#email').focus();
	}else if($('#userPwd').val() == ''){
		alert('비밀번호는 필수정보입니다.');//"비밀번호"는 필수 정보입니다.');
		$('#userPwd').focus();
	}else{
		document.login_form.submit();
	}
}

</script>
</body>
</html>