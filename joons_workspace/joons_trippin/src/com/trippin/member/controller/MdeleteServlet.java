package com.trippin.member.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.trippin.member.model.service.MemberService;
import com.trippin.member.model.vo.Member;


/**
 * Servlet implementation class MdeleteServlet
 */
@WebServlet(name = "Mdelete", urlPatterns = { "/mdelete.do" })
public class MdeleteServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public MdeleteServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//1. 세션에서 탈퇴할 아이디를 추출
		HttpSession session = request.getSession(false);
		String email = ((Member)session.getAttribute("member")).getEmail();
		
		
		//2. 비즈니스 로직처리
		int result = new MemberService().deleteMember(email);
		
		//3. 결과 리턴
		
		if(result>0) {
			session.invalidate();
			response.sendRedirect("/views/member/deleteSuccess.jsp");
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









