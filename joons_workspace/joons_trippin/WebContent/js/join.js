
function join_submit(){
	if($('#userName').val() == ''){
		alert('이름은 필수입력사항입니다.');//"이름"은 필수 정보입니다.');
		$('#userName').focus();
	}else if($('#email').val() == ''){
		alert('이메일주소는 필수입니다.');//"이메일"은 필수 정보입니다.');
		$('#email').focus();
	}else if($('#email').attr('data-vali') == '1'){
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
function check(){
	var pw1 = document.getElementById('pw1').value;
	var pw2 = document.getElementById('pw2').value;
	var checkFlag = document.getElementById('checkFlag').value;
	if(checkFlag==0){
		alert("ID 중복확인을 진행해주세요");
		return false;
	}
	else if(pw1==pw2){
		return true;
	}else{
		return false;
	}
}

function idCheck(){
	var userId = document.getElementById("userId").value;
	 window.open("/views/member/idCheck.jsp?checkId="+userId,"_blank","width=500px,height=100px");
	
	return false;
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
