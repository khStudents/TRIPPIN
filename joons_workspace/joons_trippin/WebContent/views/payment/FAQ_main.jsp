<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="kr.co.trippin.faq.model.vo.*"	import="java.util.ArrayList"%>
<%
	ArrayList<FaqBoard> list = (ArrayList<FaqBoard>)request.getAttribute("faqList");
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="css/FAQ_main.css">
<title>Insert title here</title>
</head>
<body>
	
	<script src="/js/jquery-3.3.1.js"></script>

	
	<script>
		var cnt = 1;
		$(document).ready(
				function() {
					setInterval(function() {
						$('#back-img').css('background-image',
								'url(img/p' + cnt + '.jpg)');
						cnt++;
						if (cnt == 5) {
							cnt = 1;
						}
					}, 5000);

				});
	</script>

	<div class="frame">

		<div class="header">
			<div class=h-item></div>
			<div></div>
		</div>

		<div class="image">
			<div id="back-img">TRIPPIN</div>

		</div>

		<!-- //header -->

		<div class="container">
			<div class="nav">
				<ul class="nav-list">
					<li class="nav-item"><a href="" class="nav-link">NOTICE</a></li>
					<li class="nav-item"><a href="" class="nav-link">FAQ</a></li>
					<li class="nav-item"><a href="" class="nav-link">REVIEW</a></li>
					<li class="nav-item"><a href="" class="nav-link">RECOMMAND</a></li>

				</ul>
			</div>
			<div class="subtitle">
				<h1>FAQ&nbsp;</h1>
			</div>


			<!-- //nav -->
			<div class="content">

				<select>
					<option>All</option>
					<option>Subject</option>
					<option>Writer</option>
				</select> <input type="text" placeholder="">
				<button style="width: 60pt; height: 25pt;">Search</button>

				<p id="height_p">
				<div>
					<center>
			
						<table class="board_table" >
							<tr>
								<th>글번호</th>
								<th>글제목</th>
								<th>글내용</th>
								<th>조회수</th>
								<th>작성일</th>
							</tr>

							<%
								for (FaqBoard fb : list) {
							%>

							<tr>
								<td><%=fb.getBoard_num()%></td>
								<td><a href="/faqList.do?board_num=<%=fb.getBoard_num()%>"><%=fb.getSubject()%></a></td>

								<td><%=fb.getContents()%></td>
								<td><%=fb.getHits() %></td>
								<td><%=fb.getReg_Date()%></td>
							</tr>
							<%
								}
							%>
						</table>

					</center>

				</div>

				<br>
				<p>
				<div id="paging">이전&nbsp;&nbsp;1 | 2 | 3&nbsp;&nbsp;다음</div>


			</div>
			<div class="adv">광고</div>

		</div>
		<!-- //container -->
		<div class="footer">
			<p class="copyright">&copy;Trippin</p>
		</div>
		<!-- //footer -->
	</div>
	<!-- //frame -->



</body>
</html>