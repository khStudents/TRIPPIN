<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="content-type" content="text/html; charset=utf-8"/>

<title>경쾌한 발걸음! - trippin(트리핀)</title>
</head>

<body>

<style>
	.modal_wrap{
		width:365px;
		border-top:solid #1a7ad9 2px;
		font-family:nanum;
	}
	.modal_title{
		font-size:19px;
		height:60px;
		border-bottom:solid #cccccc 1px;
		color:#363636;
		font-weight:bold;
		padding:22px 0px 0px 20px;
	}
	.modal_content{
		padding:20px;
	}
	
	.modal_line{
		width:365px;
		height:1px;
		background:#ccc;
	}
	
	.et_login{
		width:325px;
		height:40px;
		line-height:40px;
		background:#1a7ad9;
		color:#fff;
		text-align:center;
		font-size:15px;
		cursor:pointer;
	}
	.input_txt{
		width:325px;
		height:31px;
		border:solid #c8c8ca 1px;
		margin-bottom:10px;
		font-family:'nanum';
		padding-left:10px;
	}
	
	#auto_login{
		width:120px;
		height:20px;
		padding-left:29px;
		background:url('/res/img/member/check_box_null.png') no-repeat;
		line-height:20px;cursor:pointer;
		margin-bottom:10px;
	}
	#auto_login.on{
		background:url('res/img/member/check_box_checked.png') no-repeat;
	}
	.et_login_sub_box{
		padding-top:10px;
		font-size:13px;
		color:#808080;
		margin-bottom:10px;
	}
	.et_login_sub_box a{
		color:#808080;
	}
	.et_modal_close{
		top:22px;
		right:10px;
		width:23px;
		height:23px;
		background:url('/res/img/member/modal_close_btn.png') no-repeat;
		cursor:pointer;
	}
	
	#loading_wrap{
		display:none;
		text-align:center;
		padding-top:100px;
	}
	#confirm_term{
		height: 20px;  
		padding-left: 29px;  
		background: url('/res/img/member/check_box_null.png') no-repeat;  
		line-height: 20px;  
		cursor: pointer;  
		margin-bottom: 10px;
	}
	#confirm_term.on{
		background:url('/res/img/member/check_box_checked.png') no-repeat;
	}
	.radio_box{height:30px;}
</style>
<form action="/login.do" method="post">
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
				<div><input type="radio" name="gender" checked="true">남</input>
					<input type="radio" >여</input>
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
</form>
<script>

function join_submit(){
	if($('#confirm_term').attr('data') == '0'){
		alert('이용약관 및 개인정보 보호정책에 동의해주세요.');
	}else if($('#user_name').val() == ''){
		alert('이름은 필수입력사항입니다.');//"이름"은 필수 정보입니다.');
		$('#user_name').focus();
	}else if($('#email_address').val() == ''){
		alert('이메일주소는 필수입니다.');//"이메일"은 필수 정보입니다.');
		$('#email_address').focus();
	}else if($('#email_address').attr('data-vali') == '1'){
		alert('잘못된 이메일 형식입니다.');//잘못된 이메일 형식입니다.');
		$('#email_address').focus();
	}else if($('#password').val() == ''){
		alert('비밀번호는 필수정보입니다.');//"비밀번호"는 필수 정보입니다.');
		$('#password').focus();
	}else if($('#password').attr('data-vali') == '1'){
		alert('비밀번호는 6자 이상이어야 합니다.');//비밀번호는 6자 이상이어야 합니다.');
		$('#password').focus();
	}else if($('#r_gender') .val() == ''){
		alert('성별을 선택하세요.');
	}else{
		document.join_form.submit();
	}	
}

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
$('#confirm_term').click(function(){
	_is_checked = $(this).attr('data');
	if(_is_checked == '0'){
		$(this).attr('data','1');
		$(this).addClass('on');
	}else{
		$(this).attr('data','0');
		$(this).removeClass('on');
	}
})

</script>

<script type="text/javascript">
	jQuery(document).ready(function ($) {
		$('input[name=password]').keyup(function(){
			$('input[name=password_confirm]').val($(this).val());
		});
		$('input').placeholder();
	});
</script>


<!-- 수정한부분 -->
<script>
	function vali_pw(){
	var pw = $('#password').val();
	if(pw.length < 6){
		$('#password').addClass('vali');
		$('#password').attr('data-vali','1');
	}else{
		$('#password').removeClass('vali');
		$('#password').attr('data-vali','0');
	}
}
</script>

<script>
	function check(){
		var userPwd = document.getElementById("userPwd").value;
		var userPwdRe = document.getElementById("userPwdRe").value;
		var checkFlag = document.getElementById('checkFlag').value;
		
		if(checkFlag == 0){
			alert("ID체크를 진행해 주세요.")
			return false;
		}else if(userPwd==userPwdRe){
			return true;
		}else{
			return false;
		}
	}
</script>


</body>
</html>