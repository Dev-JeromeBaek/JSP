package module;

import java.sql.Connection;
import java.sql.DriverManager;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

public class jdbcConnector {

	public static Connection getConnection() throws Exception {
		
		Context initContext = new InitialContext();
		DataSource dataSource = (DataSource)initContext.lookup("java:/comp/env/jdbc/oracle");
		
		Connection conn = dataSource.getConnection();
		System.out.println("Connection Comp");
		
		return conn;
	}
	
}// class END
