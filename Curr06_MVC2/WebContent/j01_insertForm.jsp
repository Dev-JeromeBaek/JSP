<%@page import="dto.PeopleDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8"> <title>Insert title here</title>
    
    <%
    	String msg = (String)request.getAttribute("msg");
//     	PeopleDTO dto = new PeopleDTO();
//     	dto.setName((String)
//     	String infoPeo = "\n" + new PeopleDTO().getName() 
//     					+ "\n" + new PeopleDTO().getAge();
//     	msg += infoPeo;
    %>
    <script type="text/javascript">
<%--     	alert("<%= msg %>"); --%>
    	var scrMsg = "<%= msg %>";
    	if(scrMsg != "null") {
    		alert(scrMsg);
    	}
    </script>
    
  </head>
  <body>
  
  	<h2>인사 정보 입력</h2>
	
	<form action="/Curr06_MVC2/peo" method="post">
		<table border="1" style="text-align: center;">
			<tr>
				<td colspan="2">
					<a href="/Curr06_MVC2/peo?works=selectList">인사정보 목록</a>
				</td>
			</tr>
			<tr>
				<td>이 름</td>
				<td><input type="text" name="name"></td>
			</tr>
			<tr>
				<td>나 이</td>
				<td><input type="text" name="age"></td>
			</tr>
			<tr>
				<td colspan="2">
					<input type="submit" value="저장하기">
					<input type="hidden" name="works" 
							value="insertOne">
				</td>
			</tr>
		</table>
	</form>
  </body>
</html>