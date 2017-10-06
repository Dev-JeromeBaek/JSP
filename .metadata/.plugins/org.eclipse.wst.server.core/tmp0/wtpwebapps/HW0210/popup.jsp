<%@page import="dto.stuDTO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="dto.teaDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8"> <title>Insert title here</title>
    
    <script type="text/javascript">
    	if() {
	    	location.href = "";
    	}
    </script>
    
    
  </head>
  <body>
	<%
		teaDTO dto = (teaDTO)session.getAttribute("tLogin");
	
// 		ArrayList<stuDTO> listc = (ArrayList<stuDTO>)request.getParameter("listc");
// 		ArrayList<stuDTO> listc2 = (ArrayList<stuDTO>) request.getParameter("listc2");
// 		ArrayList<stuDTO> listc3 = (ArrayList<stuDTO>) request.getParameter("listc3");
	%>
	
	<h2>[<%= dto.getTname() %>] 선생님 반의 학생 정보 입니다.</h2>
	
	<p align="center" style="text-align: center;">
		<%= dto.getThak() %>학년 <%= dto.getTban() %>
		반 총 인원 : <%-- [<%=  %>]--%> 명
	</p>
	<p align="center" style="text-align: center;">
		남학생 인원 : <%-- [<%=  %>]--%> 명
	</p>	
	<p align="center" style="text-align: center;">
		여학생 인원 : <%-- [<%=  %>]--%> 명
	</p>
	<br>
	<br>
	<br>
	<p align="center"><a href="/HW0210/holdCk.jsp">1분동안 보지 않기</a></p>
	
  </body>
</html>