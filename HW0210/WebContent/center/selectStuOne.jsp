<%@page import="dto.stuDTO"%>
<%@page import="dto.teaDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8"> <title>Insert title here</title>
    <script type="text/javascript">
    	function selectStuOneFunc(pageName) {
    		var ff = document.selectStuOneForm;
    		ff.action = "/HW0210/a/" + pageName;
    		ff.method = "post";
    		ff.submit();
    	}
    </script>
  </head>
  <body>
	<%
		if(session.getAttribute("tLogin") != null)
		{
			teaDTO dto = (teaDTO) session.getAttribute("tLogin");
			stuDTO sdto = (stuDTO) request.getAttribute("sdto");
	%>
	<form name="selectStuOneForm">
	<fieldset style="width: 500px;">
	<legend style="font-size: 50px;">학생정보 상세보기</legend>
		<p>
		<% String picName = sdto.getSysName().substring(
							sdto.getSysName().lastIndexOf("."));
			if(picName.equalsIgnoreCase(".jpg") 
					|| picName.equalsIgnoreCase(".png")
					|| picName.equalsIgnoreCase(".gif")
					|| picName.equalsIgnoreCase(".bmp"))
			{
				out.print("<img alt='Loading...'"
						+ "src='/HW0210/stuPic/"
						+ sdto.getSysName() + "'"
						+ "style='width: 200px;" 
						+ " height: 150px;'></a>");
			} else {
				out.print("그림 파일이 아닙니다.");
			}
		%>
		</p>
		<table style="text-align: center; width: 400px;" border="1">
			<tr>
				<td>번 호</td>
				<td><%= sdto.getSnum() %></td>
			</tr>
			<tr>
				<td>이 름</td>
				<td><%= sdto.getSname() %></td>
			</tr>
			<tr>
				<td>성 별</td>
				<td><%= sdto.getSgender() %></td>
			</tr>
			<tr>
				<td>학년 / 반</td>
				<td><%= sdto.getShak() %>학년 / 
				<%= sdto.getSban() %>반</td>
			</tr>
			<tr>
				<td>국어점수</td>
				<td><%= sdto.getKor() %></td>
			</tr>
			<tr>
				<td>영어점수</td>
				<td><%= sdto.getEng() %></td>
			</tr>
			<tr>
				<td>수학점수</td>
				<td><%= sdto.getMath() %></td>
			</tr>
			<tr>
				<td>총 점</td>
				<td><%= sdto.getTotal() %></td>
			</tr>
			<tr>
				<td>평 균</td>
				<td><%= sdto.getAvg() %></td>
			</tr>
		</table>
		<p>
			<input type="button" value="학생 정보 수정"
					onclick="selectStuOneFunc('stuMod1')">
			<input type="button" value="학생 정보 삭제"
				onclick="selectStuOneFunc('checkTeacherPassword')">
			<input type="hidden" 
			name="snum" value="<%= sdto.getSnum() %>">
			<input type="hidden" 
			name="sname" value="<%= sdto.getSname() %>">
		</p>
	</fieldset>
	</form>
	<%
		} else {
			out.print("<h3>로그인 후 이용 가능합니다.</h3>");
		}
	%>
  </body>
</html>