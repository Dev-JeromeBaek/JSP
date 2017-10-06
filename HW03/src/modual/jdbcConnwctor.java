package modual;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

public class jdbcConnwctor {
	
	public static Connection getConnection() throws Exception {
		
		Context initContext = new InitialContext();
		DataSource dataSource = (DataSource)initContext.lookup("java:/comp/env/jdbc/oracle");
		
		Connection conn = dataSource.getConnection();
		conn.setAutoCommit(false);
		
		return conn;
	}
	
	public static void closeConnection(Connection conn) {
		try {
			if(conn != null && !conn.isClosed()) conn.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	public static void closeOthers(PreparedStatement ppst, ResultSet rs) {
		try {
			if(rs != null && !rs.isClosed()) rs.close();
			if(ppst != null && !ppst.isClosed()) ppst.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
}
