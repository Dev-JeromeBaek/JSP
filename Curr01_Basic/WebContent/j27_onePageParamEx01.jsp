<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8"> <title>Insert title here</title>
  </head>
  <body>
  	
  	<%--
  		문제 : j27_onePageParamEx02.jsp 페이지 작성하기
  		=> 전체 정보 출력하세요. (table 이용)
  	--%>
  	
  	<%
  		int many = 1;
  		
  		if(request.getParameter("change") != null) {
	  		String change = request.getParameter("change");
	  		many = Integer.parseInt(change);
  		}
  		
  		if(many <= 1) {
  			many = 1;
  		}
  		
  	%>
  
	<h2>인사 정보 입력</h2>
	
	<form action="/Curr01_Basic/j27_onePageParamEx02.jsp" method="post">
		<table border="1" style="text-align: center;">
			<tr>
				<td colspan="2">
					<a href="?change=<%= many + 1 %>">인원 추가하기</a>&nbsp;&nbsp;
					<a href="?change=<%= many - 1 %>">인원 삭제하기</a>
				</td>
			</tr>
			<%
				for(int i=1; i<=many; i++)
				{
			%>
				<tr>
					<td><input type="text" name="name"></td>
					<td><input type="text" name="age"></td>
				</tr>
			<%
				}
			%>
			<tr>
				<td colspan="2"><input type="submit" value="전송하기"></td>
			</tr>
		</table>
	</form>
  </body>
</html>