<%@page import="java.io.FileInputStream"%>
<%@page import="java.io.InputStream"%>
<%@page import="dto.FileDTO"%>
<%@page import="java.net.URLEncoder"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8"> <title>Insert title here</title>
  </head>
  <body>
  
	<h2>다운로드 페이지</h2>
	
	<%
		String orgName = request.getParameter("org");
		String sysName = request.getParameter("sys");
		
		String encOrgName = URLEncoder.encode(orgName, "UTF-8");
		response.setHeader("Content-Disposition",
								"attachment;filename=" + encOrgName);
		
// 		숙제 :
// 		1. MS 익스플로러의 경우 인코딩 하는 방법 확인하기
// 		2. 파일 이름에 기호가 포함된 경우의 방법(제대로 나오게하는방법)
		
// 		파일을 읽는 스트림
		String upPath = new FileDTO().getUpPath();
		InputStream is = null;
		is = new FileInputStream(upPath + "\\" + sysName);
		
// 		브라우저로 파일을 보내는 스트림(ServletOutputStream)
// 		- 브라우저에 스트림이 도착 시 자동으로 다운로드 진행
// 		- 스트림 생성 전 out 객체를 clear() 하여 안정성 확보

		out.clear();
		out = pageContext.pushBody();
		ServletOutputStream sos = response.getOutputStream();
		
		int data = 0;
		while( (data = is.read()) != -1)
		{
			sos.write(data);
			sos.flush();
		}
		sos.close();
		is.close();
	%>
	
  </body>
</html>