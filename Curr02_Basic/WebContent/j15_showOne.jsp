<%@page import="entity.Student"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8"> <title>Insert title here</title>
    <%
   		request.setCharacterEncoding("UTF-8");
		Student stu = (Student)request.getAttribute("stu");
	%>
    <script type="text/javascript">
    	function showList() {
    		var frm = document.showOneFrm;
    		frm.works.value = "selectList";
    		frm.view.value = "showAll";
    		frm.action = "/Curr02_Basic/con";
    		frm.method = "post";
    		frm.submit();
    	}
    	function modData() {
    		var frm = document.showOneFrm;
    		frm.works.value = "mod";
    		frm.view.value = "modInfo";
    		frm.num.value = "<%= stu.getNum() %>";
    		frm.action = "/Curr02_Basic/con";
    		frm.method = "post";
    		frm.submit();
    	}
    	function delData() {
    		var frm = document.showOnefrm;
    		var url = "/Curr02_Basic/j15_delInfo.jsp?num=<%= stu.getNum() %>";
    		var popName = "AreYouTeacher?";
    		var size = "width=500px; height=450px;";
    		window.open(url, popName, size);
    	}
    </script>
  </head>
  <body>
	
  	<form name="showOneFrm">
		<table border="1" style="text-align: center; width: 400px;" >
			<tr>
				<td>번 호</td>
				<td><%= stu.getNum() %>
			</tr>
			<tr>
				<td>이 름</td>
				<td><%= stu.getName() %>
			</tr>
			<tr>
				<td>국어점수</td>
				<td><%= stu.getKor() %>
			</tr>
			<tr>
				<td>영어점수</td>
				<td><%= stu.getEng() %>
			</tr>
			<tr>
				<td>수학점수</td>
				<td><%= stu.getMath() %>
			</tr>
			<tr>
				<td>총 점</td>
				<td><%= stu.getTotal() %>
			</tr>
			<tr>
				<td>평 균</td>
				<td><%= stu.getAvg() %></td>
			</tr>
			<tr>
				<td colspan="2">
					<input type="hidden" name="works">
					<input type="hidden" name="view">
					<input type="hidden" name="num">
					<input type="button" value="목록보기" onclick="showList()">
					<input type="button" value="수정하기" onclick="modData()">
					<input type="button" value="삭제하기" onclick="delData()">
				</td>
			</tr>
		</table>
	</form>
  </body>
</html>