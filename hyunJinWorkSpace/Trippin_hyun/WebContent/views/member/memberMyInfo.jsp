<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="kr.or.trippin.member.model.vo.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<%
	
	Member m = (Member)session.getAttribute("member");
%>
<body>
<form>


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
			<center>
			<fieldset style="width:300px">
			<legend>회원정보</legend>
					<form align="left" action="/infoUpdate.do" method="post" id="join_form" name="join_form">
					<table>
						<tr>
							<td class="input_txt">ID : </td><td class="input_txt"><%=m.getUserId()%></td>
							</tr>
							<tr>
							<td class="input_txt">NAME : </td><td class="input_txt"><%=m.getUserName()%></td>
							</tr>
							<tr>
							<td class="input_txt">AGE : </td><td class="input_txt"><%=m.getAge()%></td>
							</tr>
							<tr>
							<td class="input_txt">EMAIL : </td><td><input type="email" name="email" class="input_txt" value="<%=m.getEmail()%>" /></td>
							</tr>
							<tr>
							<td class="input_txt">PHONE : </td><td><input type="phone" name="phone" class="input_txt" value="<%=m.getPhone()%>" /></td>
							</tr>
							<tr>
							<td class="input_txt">ADDRESS : </td><td><input type="text" name="address" class="input_txt" value="<%=m.getAddress()%>" /></td>
							</tr>
							<tr>	
							<td class="input_txt">GENDER : </td><td class="input_txt"><%if(m.getGender()=='M'){ %>남
							<%}else{ %>여
							<%} %></td>
							</tr>
							<tr>
							<td class="input_txt">HOBBY : </td><td><input type="text" name="hobby" class="input_txt" value="<%=m.getHobby()%>" /></td>
							</tr>
							<tr>
							<td class="input_txt">ENROLLDATE : </td><td class="input_txt"><%=m.getEnrollDate()%></td>
						</tr>
					</table>
					
					<%--
							<td>PW : </td><td><input type="password" name="userPwd" value="<%=m.getUserPwd()%>" /></td>
					PW_re : <input type="password" value="<%=m.getUserPwd()%>" /><br>	
					 --%>
					<input type="submit" value="수정하기"/> <input type="button" value="취소" onclick="return back();"/>
					</form>
			</fieldset>
			</center>
		<div class="et_modal_close"></div>
		<div class="modal_content">
		</div>
		<div class="modal_line"></div>
		<div id="confirm_term" data="0" class="">
			어스토리에 가입하면서 이용약관과 개인정보 취급방침을 확인하고 이에 동의합니다.
		</div>
	</div>
</div>
</form>			
			
			
			

<script>
	function back(){
		history.go(-1);
		return false;
	}
	
</script>
</body>
</html>

