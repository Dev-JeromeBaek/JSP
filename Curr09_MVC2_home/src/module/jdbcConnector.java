package module;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

public class jdbcConnector {

	public static Connection getConnection() throws Exception {
		
		Context initContext = new InitialContext();
		DataSource dataSource = (DataSource)initContext.lookup("java:/comp/env/jdbc/oracle");
		
		Connection conn = dataSource.getConnection();
		conn.setAutoCommit(false);	// 원래 autoCommit되어있는데 이제 직접해줘야함..;
		
		System.out.println("Connection Comp");
		
		return conn;
	}
	
	public static void closeConnection(Connection conn) {
		try {
			if(conn != null && !conn.isClosed()) conn.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	public static void closeAll(PreparedStatement ppst, ResultSet rs) {
		try {
			if(rs != null && !rs.isClosed()) rs.close();
			if(ppst != null && !ppst.isClosed()) ppst.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
}// class END
