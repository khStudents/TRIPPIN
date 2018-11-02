package com.trippin.member.model.service;

import java.sql.Connection;

import com.trippin.common.JDBCTemplate;
import com.trippin.member.model.dao.MemberDao;
import com.trippin.member.model.vo.Member;

public class MemberService {

	public Member selectOneMember(Member m) {
		Connection conn = JDBCTemplate.getConnection();
		Member member = new MemberDao().selectOneMember(conn, m);

		JDBCTemplate.close(conn);

		return member;
	}

	public int insertMember(Member m) {
		
		Connection conn = JDBCTemplate.getConnection();
		int result = new MemberDao().insertMember(conn, m);
		JDBCTemplate.commit(conn);
		
		return result;
	}

	public int deleteMember(String email) {
		Connection conn = JDBCTemplate.getConnection();
		int result = new MemberDao().deleteMember(conn, email);
		JDBCTemplate.commit(conn);
		return result;
	}

}
