<%@page import="java.sql.Connection"%>
<%@page import="javax.sql.DataSource"%>
<%@page import="javax.naming.InitialContext"%>
<%@page import="javax.naming.Context"%>
<%@page import="dto.PeopleDTO"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8"> <title>Insert title here</title>
  </head>
  <body>
	<%--
		커넥션 풀 - 서버에서 이미 만들어 놓은 커넥션을 빌려쓴 후 다시 반납하는 개념.
					커넥션을통해 접속자 수를 제한할 수 도 있음.
		
		DBCP(Data Base Connection Pool) - 커넥션을 담아놓은 수영장
		- 사용 이유 : 
			JDBC 사용 시 매번 Driver 로딩.. ->
			커넥션 객체 확보 -> 작업.. -> 종료
			
		- DBCP는 미리 Connection 객체 생성 후 pool에 보관 (부하를 줄이는 효과)
		- JNDI(Java Naming and D..라는 기술을 사용) 처리가 적용됨 (위치 : java.naming 패키지)
		
		필요 조건 및 방법
		1. commons dbcp 라이브러리 필요 (서버에서 만들어서 제공하는 라이브러리!!)
			http://commons.apache.org/proper/commons-dbcp/download_dbcp.cgi
			또는 tomcat-dbcp 라이브러리
			- tomcat 폴더 -> lib폴더
		
		2. 서버의 context.xml에서 설정 필요
			<Resource
    		name="jdbc/oracle"
    		auth="Container"
    		type="javax.sql.DataSource"
    		driverClassName="oracle.jdbc.driver.OracleDriver"
    		url="jdbc:oracle:thin:@192.168.121.1:1521:xe"
    		username = "aabb"
    		password = "aabb"
    	/>
    	
    	3. 프로젝트의 web.xml에 추가되는 내용
    		<!-- DBCP 설정 -->
  			<resource-ref>
				<description>Connection</description>
				<res-ref-name>jdbc/oracle</res-ref-name>
				<res-type>javax.sql.DataSource</res-type>
				<res-auth>Container</res-auth>
			</resource-ref>
	--%>
	
	<%
		ArrayList<PeopleDTO> listc = null;
	
		try {
// 			"java:comp/env"
// 				=> JNDI 서비스를 이용하기 위한 기본 이름
			
// 			작성법 1
// 			Context 파일로부터 획득하는 객체들을 불러오기위한 
// 			Context initContext = new InitialContext();
// 			Context envContext = (Context)initContext.lookup("java:/comp/env");
// 			DataSource dataSource = (DataSource)envContext.lookup("jdbc/oracle");
// 																// ↑↑ 커넥션의 이름
// 			Connection conn = dataSource.getConnection();
// 			System.out.println("Connection Comp");
	
// 			conn.close();	// 닫는게 아니고 반환!!!
			
// 			작성법2
			Context initContext = new InitialContext();
			DataSource dataSource = (DataSource)initContext.lookup("java:/comp/env/jdbc/oracle");
			Connection conn = dataSource.getConnection();
			System.out.println("Connection Comp");
			
			conn.close();
			
			
		} catch(Exception e) {
			e.printStackTrace();
		}
	%>
	
	
	<h2>인사 정보 보기</h2>
	
  </body>
</html>