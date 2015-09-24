package com.board;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.*;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

public class BoardDAO {
	// �����ͺ��̽� ���� ��� ��� ����
	private static final String JDBC_DRIVER = "oracle.jdbc.driver.OracleDriver";
	private static final String JDBC_URL = "jdbc:oracle:thin:@192.168.0.79:1521:orcl11";
	private static final String USER = "javauser";
	private static final String PASSWD = "java1234";

	// �����ͺ��̽� ���� ��� ���� ����
	private Connection con = null;// �����ϱ� ���� Connection ��ü
	private PreparedStatement pstmt = null;
	private DataSource ds = null;

	// JDBC ����̹��� �ε��ϴ� ����
	public BoardDAO() {
		// JDBC ����̹� �ε�
		try {
			Context ctx = new InitialContext();
			ds = (DataSource) ctx.lookup("java:comp/env/jdbc/javauser");
			// Class.forName(JDBC_DRIVER);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	// �����ͺ��̽� ���� �޼ҵ�
	public boolean connect() {
		try {
			// �����ͺ��̽��� ����, Connection ��ü ����
			// con = DriverManager.getConnection(JDBC_URL, USER, PASSWD);
			con = ds.getConnection();
			return true;
		} catch (Exception e) {
			e.printStackTrace();
			return false;
		}
	}

	// �����ͺ��̽� ���� ���� �޼ҵ�
	public void disconnect() {
		if (pstmt != null) {
			try {
				pstmt.close();
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		if (con != null) {
			try {
				con.close();
			} catch (Exception e) {
				e.printStackTrace();
			}
		}

	}

	public List<BoardVO> getBoardList() {
		connect();
		List<BoardVO> list = new ArrayList<BoardVO>();

		StringBuffer sql = new StringBuffer();
		sql.append("    SELECT NO,    NAME,    PW,    TITLE,    EMAIL,   ");
		sql.append("to_char(REGDATE,'YYYY-MM-DD HH24:MI:SS') as REGDATE    ");
		sql.append(" FROM SIMPLE_BOARD");

		try {
			pstmt = con.prepareStatement(sql.toString());
			ResultSet rs = pstmt.executeQuery();

			// ResultSet�� ��� ��� ���� ������ StudentVO ��ü�� ����
			while (rs.next()) {
				// �� ���� �л������� ������ �л��� ���� ���� ��ü ��
				BoardVO vo = new BoardVO();
				vo.setNO(rs.getInt("NO"));
				vo.setNAME(rs.getString("NAME"));
				// vo.setPW(rs.getString("PW"));
				vo.setTITLE(rs.getString("TITLE"));
				vo.setEMAIL(rs.getString("EMAIL"));
				vo.setREGDATE(rs.getString("REGDATE"));
				// vo.setCONTENT(rs.getString("CONTENT"));

				// ArrayList�� �л����� StudentVO ��ü�� �߰�
				list.add(vo);
			}
			rs.close();
		} catch (SQLException se) {
			se.printStackTrace();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			disconnect();
		}
		// �ϼ��� ArrayList ��ü�� ��ȯ
		return list;
	}

	public BoardVO getBoard(int no) {
		if (!connect())
			return null;

		BoardVO vo = null;
		ResultSet rs = null;

		StringBuffer sql = new StringBuffer();
		sql.append("    SELECT NO,    NAME,    PW,    TITLE,     ");
		sql.append("EMAIL,  REGDATE,content    ");
		sql.append(" FROM SIMPLE_BOARD where no=?");

		try {
			pstmt = con.prepareStatement(sql.toString());
			pstmt.setInt(1, no);
			rs = pstmt.executeQuery();

			// ResultSet�� ��� ��� ���� ������ StudentVO ��ü�� ����
			if (rs.next()) {
				// �� ���� �л������� ������ �л��� ���� ���� ��ü ��
				vo = new BoardVO();
				vo.setNO(rs.getInt("NO"));
				vo.setNAME(rs.getString("NAME"));
				vo.setPW(rs.getString("PW"));
				vo.setTITLE(rs.getString("TITLE"));
				vo.setEMAIL(rs.getString("EMAIL"));
				vo.setREGDATE(rs.getString("REGDATE"));
				vo.setCONTENT(rs.getString("CONTENT"));

				// ArrayList�� �л����� StudentVO ��ü�� �߰�
				// return vo;
			}
			rs.close();
		} catch (SQLException se) {
			se.printStackTrace();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			if (rs != null) {
				try {
					rs.close();
				} catch (Exception e2) {
					// TODO: handle exception
					e2.printStackTrace();
				}
			}
			disconnect();
		}

		return vo;
	}

	public int BoardInsert(BoardVO vo) {
		int rowCount = 0;
		connect();
		StringBuffer sql = new StringBuffer();

		sql.append("insert into  (");
		sql.append("NAME,    PW,    TITLE,    EMAIL,   ");
		sql.append("CONTENT   ");
		sql.append(") values(?,?,?,?,?,?)");

		try {
			pstmt = con.prepareStatement(sql.toString());

			int i = 0;

			pstmt.setString(++i, vo.getNAME());
			pstmt.setString(++i, vo.getPW());
			pstmt.setString(++i, vo.getTITLE());
			pstmt.setString(++i, vo.getEMAIL());
			pstmt.setString(++i, vo.getCONTENT());

			rowCount = pstmt.executeUpdate();
		} catch (SQLException se) {
			se.printStackTrace();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			disconnect();
		}
		return rowCount;
	}

	public boolean insertDB(BoardVO vo) {
		int rowCount = 0;
		connect();
		boolean ss = false;

		StringBuffer sql = new StringBuffer();
		sql.append("insert into SIMPLE_BOARD (");
		sql.append("NAME,    PW,    TITLE,    EMAIL,   ");
		sql.append("CONTENT   ");
		sql.append(") values(?,?,?,?,?)");
//		INSERT INTO JAVAUSER.SIMPLE_BOARD (
//				   NO, NAME, PW, 
//				   TITLE, EMAIL, REGDATE, 
//				   CONTENT) 
//				VALUES ( /* NO */,
//				 /* NAME */,
//				 /* PW */,
//				 /* TITLE */,
//				 /* EMAIL */,
//				 /* REGDATE */,
//				 /* CONTENT */ );
		try {
			pstmt = con.prepareStatement(sql.toString());

			int i = 0;

			pstmt.setString(++i, vo.getNAME());
			pstmt.setString(++i, vo.getPW());
			pstmt.setString(++i, vo.getTITLE());
			pstmt.setString(++i, vo.getEMAIL());
			pstmt.setString(++i, vo.getCONTENT());

			rowCount = pstmt.executeUpdate();
			if (rowCount == 1) {
				ss = true;
			}
		} catch (SQLException se) {
			se.printStackTrace();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			disconnect();
		}
		return ss;
	}

	public boolean isPw(int no,String pw) {
		if (!connect())
			return false;

		BoardVO vo = null;
		ResultSet rs = null;

		StringBuffer sql = new StringBuffer();
		sql.append("    SELECT         PW    ");
		sql.append("  ");
		sql.append(" FROM SIMPLE_BOARD where no=?");

		try {
			pstmt = con.prepareStatement(sql.toString());
			pstmt.setInt(1, no);
			rs = pstmt.executeQuery();

			// ResultSet�� ��� ��� ���� ������ StudentVO ��ü�� ����
			if (rs.next()) {
				// �� ���� �л������� ������ �л��� ���� ���� ��ü ��
//				vo = new BoardVo();
//				vo.setNO(rs.getInt("NO"));
//				vo.setNAME(rs.getString("NAME"));
//				vo.setPW(rs.getString("PW"));
//				vo.setTITLE(rs.getString("TITLE"));
//				vo.setEMAIL(rs.getString("EMAIL"));
//				vo.setREGDATE(rs.getString("REGDATE"));
//				vo.setCONTENT(rs.getString("CONTENT"));

				// ArrayList�� �л����� StudentVO ��ü�� �߰�
				// return vo;
			}
			return pw.equals(rs.getString("PW"));
			//rs.close();
			
		} catch (SQLException se) {
			se.printStackTrace();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			if (rs != null) {
				try {
					System.out.println("rs.close();");
					rs.close();
				} catch (Exception e2) {
					// TODO: handle exception
					e2.printStackTrace();
				}
			}
			disconnect();
		}
		return false;
		//return vo;
	}
	
	public void deleteDB(int no) {
		
	}
	public int updateDB(BoardVO vo) {
		int rowCount = 0;
		connect();
		StringBuffer sql = new StringBuffer();

		sql.append("UPDATE JAVAUSER.SIMPLE_BOARD  ");
		sql.append("SET             ");
		sql.append("       NAME    = ?,       ");
		sql.append("       PW      = ?,         ");
		sql.append("       TITLE   = ?,      ");
		sql.append("       EMAIL   = ?,      ");
		sql.append("       REGDATE = ?,    ");
		sql.append("       CONTENT = ?     ");
		sql.append("WHERE  NO      = ?          ");

		try {
			pstmt = con.prepareStatement(sql.toString());

			int i = 0;

			pstmt.setString(++i, vo.getNAME());
			pstmt.setString(++i, vo.getPW());
			pstmt.setString(++i, vo.getTITLE());
			pstmt.setString(++i, vo.getEMAIL());
			pstmt.setString(++i, vo.getREGDATE());
			pstmt.setString(++i, vo.getCONTENT());
			pstmt.setInt(++i, vo.getNO());

			rowCount = pstmt.executeUpdate();
		} catch (SQLException se) {
			se.printStackTrace();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			disconnect();
		}
		return rowCount;
	}
}
