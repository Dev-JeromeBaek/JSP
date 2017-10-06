package modual;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

public class jdbcConnector {
	
	public static Connection getConnection() throws Exception {
		
		Context initContext = new InitialContext();
		DataSource dataSource = (DataSource) initContext.lookup("java:/comp/env/jdbc/oracle");
		Connection conn = dataSource.getConnection();
//		conn.setAutoCommit(false);
		return conn;
	}
	
	public static void closeConn(Connection conn) {
		try {
			if(conn != null && !conn.isClosed()) {
				conn.close();
//				System.out.println("conn close");
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	public static void closeOthers(PreparedStatement ppst, ResultSet rs) {
		try {
			if(rs != null && !rs.isClosed()) { 
				rs.close();
//				System.out.println("rs close");
			}
			if(ppst != null && !ppst.isClosed()) {
				ppst.close();
//				System.out.println("ppst close");
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
}// jdbcConnector END
