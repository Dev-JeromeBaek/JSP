package module;
import java.sql.Connection;
import java.sql.DriverManager;

public class jdbcConnector {
									// throws Exception : JSP에서 try catch했으니까 예외를 그쪽으로 던져준다.
	public static Connection getConnector() throws Exception {
		
		String driverName = "oracle.jdbc.driver.OracleDriver";
		String url = "jdbc:oracle:thin:@192.168.121.1:1521:xe";
		String user = "aabb";
		String password = "aabb";
		
		Class.forName(driverName);
		System.out.println("1. Driver Load Comp");
		
		Connection conn = DriverManager.getConnection(url, user, password);
		System.out.println("2. Connection Comp");
		
		return conn;
	}
	
	
}// class END
