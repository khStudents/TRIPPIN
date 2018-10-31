package kr.co.trippin.faq.service;

import java.sql.Connection;
import java.util.ArrayList;

import kr.co.trippin.faq.common.JDBCTemplate;
import kr.co.trippin.faq.model.dao.FaqBoardDao;
import kr.co.trippin.faq.model.vo.FaqBoard;

public class FaqBoardService {

	public ArrayList<FaqBoard> faqAllList() {
	
		Connection conn = JDBCTemplate.getConnection();
		
		ArrayList<FaqBoard> list = new FaqBoardDao().faqAllList(conn);
		
		JDBCTemplate.close(conn);
		
		return list;
	}
	
	
}
