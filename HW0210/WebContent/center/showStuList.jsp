<%@page import="dto.PageDTO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="dto.stuDTO"%>
<%@page import="dto.teaDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8"> <title>Insert title here</title>
    <script type="text/javascript">
    function showStuListFunc() {
    	var ff = document.showStuListForm;
    	if(ff.hak.value == "xx" && ff.ban.value == "xx") {
    		alert("보고싶은 학년을 선택하세요.");
    		ff.action = "/HW0210/a/showStuList";
    		ff.method = "post";
    		ff.submit();
    	} else if(ff.hak.value == "xx" && ff.ban.value != "xx") {
    		alert("보고싶은 학년을 선택하세요.");
    		ff.action = "/HW0210/a/showStuList";
    		ff.method = "post";
    		ff.submit();
    	} else if(ff.hak.value != "xx" && ff.ban.value == "xx") {
	    	ff.action = "/HW0210/a/searchhak";
	   		ff.method = "post";
	   		ff.submit();
    	} else if(ff.hak.value != "xx" && ff.ban.value != "xx") {
    		ff.action = "/HW0210/a/selhaknban";
    		ff.method = "post";
    		ff.submit();
    	}
    }
    </script>
  </head>
  <body>
	<%
	
		if(session.getAttribute("tLogin") != null) {
			teaDTO dto = (teaDTO)session.getAttribute("tLogin");
			PageDTO pdto = null;
			if(request.getAttribute("pdto") != null) {
				pdto = (PageDTO) request.getAttribute("pdto");
			}
			
			ArrayList<stuDTO> listc = 
				(ArrayList<stuDTO>)request.getAttribute("listc");
	%>
	<form name="showStuListForm">
	<fieldset style="width: 700px;">
	<legend style="font-size: 50px;">학생 정보 전체 조회</legend>
		<p align="right">
			학년 선택
			<select name="hak">
				<option value="xx">----</option>
				<option value="1">1학년</option>
				<option value="2">2학년</option>
				<option value="3">3학년</option>
			</select>&nbsp;&nbsp;
			반 선택
			<select name="ban">
				<option value="xx">----</option>
				<% for(int i=1; i<=10; i++) { %>
				<option value="<%= i %>"><%= i %>반</option>
				<% } %>
			</select>
			<input type="image" src="/HW0210/imges/ss1.png"
					onclick="showStuListFunc()">
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</p>
			
		<table border="1" style="text-align: center;">
			<tr>
				<td>번 호</td>
				<td>이 름</td>
				<td>성 별</td>
				<td>학년 / 반</td>
				<td>생년월일</td>
				<td>사 진</td>
			</tr>
			<%
			if(listc != null)
			{
				for(stuDTO each : listc)
				{
			%>
				<tr>
					<td><%= each.getSnum() %></td>
					<td>
		<a href="/HW0210/a/selectStuOne?snum=<%= each.getSnum() %>">
							<%= each.getSname() %>
						</a>
					</td>
					<td><%= each.getSgender() %></td>
		<td><%= each.getShak() %>학년 / <%= each.getSban() %>반</td>
					<td><%= each.getSbirth() %></td>
					<td><%
			String picName = 
				each.getSysName().substring(
						each.getSysName().lastIndexOf("."));
			if(picName.equalsIgnoreCase(".jpg") 
					|| picName.equalsIgnoreCase(".png")
					|| picName.equalsIgnoreCase(".gif")
					|| picName.equalsIgnoreCase(".bmp"))
			{
				out.print("<a href='/HW0210/a/selectStuOne?" 
						+ "snum=" + each.getSnum() + "'>");
				out.print("<img alt='Loading...'"
						+ "src='/HW0210/stuPic/"
						+ each.getSysName() + "'"
						+ "style='width: 200px;" 
						+ " height: 150px;'></a>");
				} else {
				out.print("그림 파일이 아닙니다.");
			}
			%>
					</td>
				</tr>
			<%
					}
				}
			%>
		</table>
		<p >
		<%
			if(pdto != null) {
				
// 				if(pdto.getShowPageNumberBegin() != 1)
// 				{
				if(pdto.getNowPage() != 1) 
				{
		%>
				<a href="/HW0210/a/showStuList?nowPage=<%= pdto.getNowPage()-1 %>">◀</a>&nbsp;
		<%
				}
				for(int i=pdto.getShowPageNumberBegin(); i<=pdto.getShowPageNumberEnd(); i++)
				{
					if(pdto.getNowPage() == i)
					{
		%>
					[<%= i %>]&nbsp;
		<%
					} else {
		%>
					<a href="/HW0210/a/showStuList?nowPage=<%= i %>">[<%= i %>]</a>&nbsp;
		<%
					}
				}
// 				if(pdto.getShowPageNumberEnd() != pdto.getEndPage())
// 				{
				if(pdto.getNowPage() != pdto.getEndPage())
				{
		%>
				<a href="/HW0210/a/showStuList?nowPage=<%= pdto.getNowPage()+1 %>">▶</a>
		<%
				}
			}
		%>
		</p>
	</fieldset>
	</form>
	<%
		} else {
	%>
		<h3>로그인 후 이용 가능합니다.</h3>
	<%
		}
	%>
  </body>
</html>