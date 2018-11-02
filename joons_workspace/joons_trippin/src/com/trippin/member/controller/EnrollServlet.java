package com.trippin.member.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.trippin.member.model.service.MemberService;
import com.trippin.member.model.vo.Member;

/**
 * Servlet implementation class EnrollServlet
 */
@WebServlet(name = "Enroll", urlPatterns = { "/enroll.do" })
public class EnrollServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public EnrollServlet() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//1. 인코딩
		request.setCharacterEncoding("utf-8");

		//2. 이전 페이지에서 전송한 값을 변수에 저장
		Member m = new Member();
		m.setEmail(request.getParameter("email"));
		m.setUserPwd(request.getParameter("userPwd"));
		m.setUserName(request.getParameter("userName"));
		m.setBirthDate(request.getParameter("birthDate"));
		m.setPhone(request.getParameter("phone"));
		m.setActive('Y');

		//3. 비즈니스 로직
		int result = new MemberService().insertMember(m);


		//4. 결과 처리 페이지로 이동

		if(result>0) {
			response.sendRedirect("/views/member/enrollSuccess.jsp");
		}else {
			response.sendRedirect("/views/member/error.jsp");
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
