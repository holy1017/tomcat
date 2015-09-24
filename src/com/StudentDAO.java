package com;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

public class StudentDAO {
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
	public StudentDAO() {
		// JDBC ����̹� �ε�
		try {
			Context ctx=new InitialContext();
			ds = (DataSource) ctx.lookup("java:comp/env/jdbc/javauser");
			//Class.forName(JDBC_DRIVER);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	// �����ͺ��̽� ���� �޼ҵ�
	public void connect() {
		try {
			// �����ͺ��̽��� ����, Connection ��ü ����
			//con = DriverManager.getConnection(JDBC_URL, USER, PASSWD);
			con = ds.getConnection();
		} catch (Exception e) {
			e.printStackTrace();
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

	public ArrayList<StudentVO> getStudentList() {
		connect();
		ArrayList<StudentVO> list = new ArrayList<StudentVO>();

		StringBuffer sql = new StringBuffer();
		sql.append("select sd_num, sd_name, sd_id, s_num, sd_birth, ");
		sql.append("sd_phone, sd_address, sd_email, sd_date from student");

		try {
			pstmt = con.prepareStatement(sql.toString());
			ResultSet rs = pstmt.executeQuery();

			// ResultSet�� ��� ��� ���� ������ StudentVO ��ü�� ����
			while (rs.next()) {
				// �� ���� �л������� ������ �л��� ���� ���� ��ü ��
				StudentVO vo = new StudentVO();
				vo.setSd_num(rs.getString("sd_num"));
				vo.setSd_name(rs.getString("sd_name"));
				vo.setSd_id(rs.getString("sd_id"));
				vo.setS_num(rs.getString("s_num"));
				vo.setSd_birth(rs.getString("sd_birth"));
				vo.setSd_phone(rs.getString("sd_phone"));
				vo.setSd_address(rs.getString("sd_address"));
				vo.setSd_email(rs.getString("sd_email"));
				vo.setSd_date(rs.getString("sd_date"));

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

	public int StudentInsert(StudentVO vo) {
		int rowCount = 0;
		connect();
		StringBuffer sql = new StringBuffer();
		sql.append("insert into student(no, sd_num, sd_name, sd_id, sd_passwd, s_num, sd_birth, ");
		sql.append(" sd_phone, sd_address, sd_email) ");
		sql.append(" values(student_seq.nextval, ?, ?, ?, ?, ?, ?, ?, ?, ?) ");

		try {
			pstmt = con.prepareStatement(sql.toString());

			pstmt.setString(1, vo.getSd_num());
			pstmt.setString(2, vo.getSd_name());
			pstmt.setString(3, vo.getSd_id());
			pstmt.setString(4, vo.getSd_passwd());
			pstmt.setString(5, vo.getS_num());
			pstmt.setString(6, vo.getSd_birth().replace("-", ""));
			pstmt.setString(7, vo.getSd_phone());
			pstmt.setString(8, vo.getSd_address());
			pstmt.setString(9, vo.getSd_email());

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
