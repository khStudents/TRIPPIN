<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<!-- 아임포트 -->
<script type="text/javascript" src="https://code.jquery.com/jquery-1.12.4.min.js" ></script>
<script type="text/javascript" src="https://cdn.iamport.kr/js/iamport.payment-1.1.5.js"></script>




















<script>

var IMP = window.IMP; // 생략가능
IMP.init('imp60118715'); // 'iamport' 대신 부여받은 "가맹점 식별코드"를 사용

IMP.request_pay({
    pg : 'inicis', // version 1.1.0부터 지원.
    pay_method : 'card', // 결제 수단
    merchant_uid : 'merchant_' + new Date().getTime(),
    name : '주문명:결제테스트', // db 테이블에 들어갈 주문명 혹은 주문번호
    amount : 14000, // 결제 금액
    buyer_email : 'iamport@siot.do', // 구매자 이메일
    buyer_name : '구매자이름', // 구매자 이름
    buyer_tel : '010-1234-5678', // 구매자 전화번호
    buyer_addr : '서울특별시 강남구 삼성동', // 구매자 주소
    buyer_postcode : '123-456', // 구매자 우편번호
    m_redirect_url : 'https://www.yourdomain.com/payments/complete' // 결제 완료 후 보낼 컨트롤러의 메소드명
}, function(rsp) {
    if ( rsp.success ) { // 성공시
        var msg = '결제가 완료되었습니다.';
        msg += '고유ID : ' + rsp.imp_uid;
        msg += '상점 거래ID : ' + rsp.merchant_uid;
        msg += '결제 금액 : ' + rsp.paid_amount;
        msg += '카드 승인번호 : ' + rsp.apply_num;
    } else { // 실패시
        var msg = '결제에 실패하였습니다.';
        msg += '에러내용 : ' + rsp.error_msg;
    }
    alert(msg);
});

</script>

</body>
</html>