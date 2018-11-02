package kr.co.trippin.faq.model.dao;

import java.sql.Statement;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import kr.co.trippin.faq.common.JDBCTemplate;
import kr.co.trippin.faq.model.vo.FaqBoard;

public class FaqBoardDao {

	public ArrayList<FaqBoard> faqAllList(Connection conn) {
		// TODO Auto-generated method stub
		
		Statement stmt = null;
		ResultSet rset = null;
		FaqBoard fb = null;
		
		ArrayList<FaqBoard> list = new ArrayList<FaqBoard>();
		
		try {
			stmt = conn.createStatement();
			String query = "select * from faq_board";
			rset = stmt.executeQuery(query);
			
			while(rset.next()) {
				fb = new FaqBoard();
				fb.setBoard_num(rset.getInt("board_num"));
				fb.setSubject(rset.getString("subject"));
				fb.setContents(rset.getString("contents"));
				fb.setHits(rset.getInt("hits"));
				fb.setReg_Date(rset.getDate("reg_date"));
				
				list.add(fb);
			}
			
			
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			JDBCTemplate.close(rset);
			JDBCTemplate.close(stmt);
		}
		
		
		
		return list;
		
	}

	
}
