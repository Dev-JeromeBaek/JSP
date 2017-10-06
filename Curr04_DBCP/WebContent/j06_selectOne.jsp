<%@page import="dao.peopleDAO"%>
<%@page import="dto.PeopleDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8"> <title>Insert title here</title>
    <script type="text/javascript">
    	function goPage(pageName, num)
    	{
    		var frm = document.selectOneForm;
    		if(num != null)
    		{
    			frm.num.value = num;
    		}
    		frm.action = "/Curr04_DBCP/" + pageName + ".jsp";
    		frm.method = "post";
    		frm.submit();
    	}
    </script>
  </head>
  <body>
	<%
		request.setCharacterEncoding("UTF-8");
		int num = Integer.parseInt(request.getParameter("num"));
		peopleDAO dao = new peopleDAO();
		PeopleDTO dto = dao.selectOne(num);
	%>
	
	<h2>인사 정보 상세 보기</h2>
	
	<form name="selectOneForm">
		<table border="1" style="text-align: center;">
			<tr>
				<td>번 호</td>
				<td><%= dto.getNum() %></td>
			</tr>
			<tr>
				<td>이 름</td>
				<td><%= dto.getName() %></td>
			</tr>
			<tr>
				<td>나 이</td>
				<td><%= dto.getAge() %></td>
			</tr>
			<tr>
				<td colspan="2">
					<input type="hidden" name="num">
					<input type="button" value="목록보기"
							onclick="goPage('j05_selectList', null)">
					<input type="button" value="수정하기"
							onclick="goPage('j07_modifyOne', <%= dto.getNum() %>)">
					<input type="button" value="삭제하기"
							onclick="goPage('j08_deleteOne', <%= dto.getNum() %>)">
				</td>
			</tr>
		</table>
	</form>
	
  </body>
</html>