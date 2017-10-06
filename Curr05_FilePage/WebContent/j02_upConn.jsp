<%@page import="java.sql.PreparedStatement"%>
<%@page import="module.jdbcConnector"%>
<%@page import="java.sql.Connection"%>
<%@page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy"%>
<%@page import="com.oreilly.servlet.MultipartRequest"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8"> <title>Insert title here</title>
  </head>
  <body>
	
	<h2>파일 저장 페이지</h2>
	
	<%
// 		파일업로드 관련 클래스 : MultipartRequest
// 		-> cos.jar 파일 다운로드
// 			www.servlets.com -> com.Oreilly.Servlet 
// 			-> 다운로드 -> cos~.jar 파일 선택
		
// 		MultipartRequest의 생성자 인자값
// 		1. request
// 		2. 파일을 저장할 서버에서의 경로
// 			- 이클립스의 경우, 시스템적인 파일의 절대경로 필요
// 			- 실제 서버의 경우, 서버에 설정된 폴더의 경로를
// 				realPath() 메소드를 이용하여 바로 이용 가능
// 		3. 업로드를 허용할 파일 최대 크기
// 			- 예 : 30MB - 1024*1024*30
// 		4. request 정보의 인코딩 설정
// 			- 파일 이름 및 기타 파라미터 정보에 대한 처리
// 		5. 옵션 - ...
// 			같은 이름의 파일이 업로드되는 경우 자동으로 새이름을
// 			생성해주는 객체(DefaultFileRenamePolicy)
		
// 		이클립스 상의 저장 폴더 경로
		String upPath = "C:\\Users\\Yeob's\\Desktop\\eclipse\\JSP_Works\\Curr05_FilePage\\WebContent\\files";
				
// 		실제 서버에서는 application 객체가 제공하는
// 		getRealPath() 메소드를 이용하여 설정 경로를 자동으로 제공받아 사용함
		String realPath = application.getRealPath("/files");
		System.out.println("realPath : " + realPath);
		
		MultipartRequest mreq = 
				new MultipartRequest(
						request, 
						upPath, 
						1024*1024*30, 
						"UTF-8", 
						new DefaultFileRenamePolicy()
						);
		System.out.println("파일 저장 완료");
		
		String msg = null;
		try {
			
			Connection conn = jdbcConnector.getConnection();
			
			String sql = "insert into t_updown values(t_updown_seq.nextval, ?, ?, ?, ?)";
			PreparedStatement ppst = conn.prepareStatement(sql);
			String writer = mreq.getParameter("writer");
			String title = mreq.getParameter("title");
			String orgName = mreq.getOriginalFileName("upfile");
			String sysName = mreq.getFilesystemName("upfile");
			System.out.println("orgName : " + orgName + ", sysName : " + sysName);
			
			ppst.setString(1, writer);
			ppst.setString(2, title);
			ppst.setString(3, orgName);
			ppst.setString(4, sysName);
			
			int res = ppst.executeUpdate();
			
			msg = res > 0 ? "파일 정보 DB 저장 완료" : "DB 저장 실패";
			
			ppst.close();
			conn.close();
			
		} catch(Exception e) {
			e.printStackTrace();
		}
		
	%>
	<script type="text/javascript">
		alert("<%= msg %>");
		location.href="/Curr05_FilePage/j03_fileList.jsp";
	</script>
	
  </body>
</html>