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

