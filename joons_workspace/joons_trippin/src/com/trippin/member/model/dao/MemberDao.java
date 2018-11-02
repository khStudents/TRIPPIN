package com.trippin.member.model.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.trippin.common.JDBCTemplate;
import com.trippin.member.model.vo.Member;

public class MemberDao {
	public Member selectOneMember(Connection conn, Member m) {
		PreparedStatement pstmt = null;
		ResultSet rset = null;

		String query = "select * from member where email=? and user_pwd=? and active='Y'";

		Member member = null;

		try {
			pstmt = conn.prepareStatement(query);

			pstmt.setString(1, m.getEmail());
			pstmt.setString(2, m.getUserPwd());

			rset = pstmt.executeQuery();

			if(rset.next()) {
				member = new Member();
				member.setEmail(rset.getString("email"));
				member.setUserPwd(rset.getString("user_pwd"));
				member.setUserName(rset.getString("user_name"));
				member.setPhone(rset.getString("phone"));
				member.setBirthDate(rset.getString("birth_date"));
				member.setActive(rset.getString("active").charAt(0));
				member.setEnrollDate(rset.getDate("enrolldate"));
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			JDBCTemplate.close(rset);
			JDBCTemplate.close(pstmt);
		}

		return member;
	}

	public int insertMember(Connection conn, Member m) {
		PreparedStatement pstmt = null;
		String sql = "insert into member values(?,?,?,?,?,?,SYSDATE)";
		int result = 0;
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, m.getEmail());
			pstmt.setString(2, m.getUserPwd());
			pstmt.setString(3, m.getUserName());
			pstmt.setString(4, m.getBirthDate());
			pstmt.setString(5, m.getPhone());
			pstmt.setString(6, String.valueOf(m.getActive()));
			result = pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			JDBCTemplate.close(pstmt);
		}
	
		return result;
	}

	public int deleteMember(Connection conn, String email) {
		PreparedStatement pstmt = null;
		String sql = "update member set active=? where email=?";
		int result = 0;
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, "N");
			pstmt.setString(2, email);
			result = pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			JDBCTemplate.close(pstmt);
		}
		return result;
	}
}
