package com.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

import com.vo.BoardDTO;

public class BoardDAO {
	DataSource ds;
	private static BoardDAO instance = new BoardDAO();
	
	public static BoardDAO getInstance(){
		return instance;
	}
	private BoardDAO() {	}
	
	private Connection getConnection() throws Exception{
		//DateSource 얻기, 컨넥션 풀 사용
		Context ctx = new InitialContext();
		ds = (DataSource) ctx.lookup("java:comp/env/jdbc/Oracle11g");
		return ds.getConnection();
	}
	//목록보기
	public ArrayList<BoardDTO> list(){
		ArrayList<BoardDTO> list = new ArrayList<BoardDTO>();
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try {
			con = getConnection();
			StringBuffer query = new StringBuffer();
			query.append("	SELECT NUM,   "); 
			query.append("      AUTHOR,   "); 
			query.append("      TITLE,    "); 
			query.append("      CONTENT,  "); 
			query.append("      WRITEDAY, "); 
			query.append("      READCNT,  "); 
			query.append("      REPROOT,  "); 
			query.append("      REPSTEP,  "); 
			query.append("      REPINDENT"); 
			//query.append("  ,    PASSWD    "); 
			query.append(" FROM BOARD     "); 
			query.append("order by reproot desc, repstep asc ");
			pstmt = con.prepareStatement(query.toString());
			rs = pstmt.executeQuery();
			
			while(rs.next()){
				BoardDTO data = new BoardDTO();
				data.setNum(rs.getInt("num"));
				data.setAuthor(rs.getString("author"));
				data.setTitle(rs.getString("title"));
				data.setContent(rs.getString("content"));
				data.setWriteday(rs.getString("writeday"));
				data.setReadcnt(rs.getInt("readcnt"));
				data.setReproot(rs.getInt("reproot"));
				data.setRepstep(rs.getInt("repstep"));
				data.setRepindent(rs.getInt("repindent"));
				list.add(data);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}finally{
			try {
				if(rs != null) rs.close();
				if(pstmt != null) pstmt.close();
				if(con != null) con.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		return list;
	}
}
