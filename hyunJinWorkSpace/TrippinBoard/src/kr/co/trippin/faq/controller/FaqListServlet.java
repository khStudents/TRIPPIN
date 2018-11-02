package kr.co.trippin.faq.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.co.trippin.faq.model.vo.FaqBoard;
import kr.co.trippin.faq.service.FaqBoardService;

/**
 * Servlet implementation class FaqListServlet
 */
@WebServlet(name = "FaqList", urlPatterns = { "/faqList.do" })
public class FaqListServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public FaqListServlet() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		ArrayList<FaqBoard> list = new FaqBoardService().faqAllList();
		System.out.println(list);
		if (!list.isEmpty()) {
			RequestDispatcher view = request.getRequestDispatcher("/FAQ_main.jsp");
			request.setAttribute("faqList", list);

			view.forward(request, response);

		} else {
			response.sendRedirect("/index.jsp");
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
