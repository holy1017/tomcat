package school;

import java.sql.*;

public class DbConnection {

	private static final String _DRIVER = "oracle.jdbc.driver.OracleDriver";
	private static final String _URL = "jdbc:oracle:thin:@localhost:1521/orcl";
	private static final String _ID = "javauser";
	private static final String _PW = "java1234";

	private static DbConnection dbc = null;

	public static DbConnection getDbConnection() {
		// TODO Auto-generated constructor stub
		if (dbc == null) {
			synchronized (DbConnection.class) {
				if (dbc == null) {
					dbc = new DbConnection();
				}
			}
		}
		return dbc;
	}

	public Connection getConnection() throws ClassNotFoundException, SQLException {
		Connection cnt = null;
		// try {
		Class.forName(_DRIVER);
		cnt = DriverManager.getConnection(_URL, _ID, _PW);
		// } catch (Exception e) {
		// // TODO: handle exception
		// }
		return cnt;
	}

	public Connection getConnection(String url, String id, String pw) throws ClassNotFoundException, SQLException {
		Connection cnt = null;

		Class.forName(_DRIVER);
		cnt = DriverManager.getConnection(url, id, pw);

		return cnt;
	}

	public Statement getStatement(Connection cnt) {
		Statement st = null;
		// LoggableStatement stmt = new LoggableStatement(cnt,
		// BOARD_SEARCHLIST);
		try {
			st = cnt.createStatement();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return st;
	}

	public void CloseConnection(Connection cnt, Statement st) {
		CloseConnection(cnt, st, null);
	}

	public void CloseConnection(Connection cnt, Statement st, ResultSet rs) {
		try {
			if (rs != null)
				rs.close();
			if (st != null)
				st.close();
			if (cnt != null)
				cnt.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	public void CloseConnection(Connection cnt, PreparedStatement pst, ResultSet rs) {
		try {
			if (rs != null)
				rs.close();
			if (pst != null)
				pst.close();
			if (cnt != null)
				cnt.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	public void CloseConnection(Connection cnt, PreparedStatement pst) {
		CloseConnection(cnt, pst, null);
	}

	/*
	 * public Connection connection() throws ClassNotFoundException,
	 * SQLException { Connection cnt = null; // try { Class.forName(_DRIVER);
	 * cnt = DriverManager.getConnection(_URL, _ID, _PW); // } catch (Exception
	 * e) { // // TODO: handle exception // } return cnt; }
	 */

	public static void main(String[] args) {

	}
}
