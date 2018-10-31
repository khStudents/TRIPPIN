
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

jQuery(document).ready(function ($) {
	$('input[name=password]').keyup(function(){
		$('input[name=password_confirm]').val($(this).val());
	});
	$('input').placeholder();
});
