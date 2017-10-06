<%@page import="dto.stuDTO"%>
<%@page import="dto.teaDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8"> <title>Insert title here</title>
    <%
 	   stuDTO sdto = (stuDTO)request.getAttribute("sdto");
    %>
    <script type="text/javascript">
    function stuMod1Func(pageName) {
    	var ff = document.stuMod1Form;
    	if(ff.kor.value == "") ff.kor.value = "<%= sdto.getKor() %>";
    	if(ff.eng.value == "") ff.eng.value = "<%= sdto.getEng() %>";
    	if(ff.math.value == "") ff.math.value = "<%= sdto.getMath() %>";
    	if(ff.upfile.value == "") {
    		ff.orgname.value = "<%= sdto.getOrgName() %>";
    		ff.sysname.value = "<%= sdto.getSysName() %>";
    	}
    	ff.action = "/HW0210/a/" + pageName;
    	ff.method = "post";
    	ff.submit();
    }
    </script>
  </head>
  <body>
	<%
		if(session.getAttribute("tLogin") != null) {
			teaDTO dto = (teaDTO)session.getAttribute("tLogin");
			
	%>
	<form name="stuMod1Form" enctype="multipart/form-data">
	<fieldset style="width: 500px;">
	<legend style="font-size: 50px;">
		[<%= sdto.getSname() %>] 학생 정보 수정
	</legend>	
		<p>
			<%
				String picName = sdto.getSysName().substring(
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
		
		<table border="1" style="text-align: center;">
			<tr>
				<td>이 름</td>
				<td><%= sdto.getSname() %></td>
			</tr>
			<tr>
				<td>국어점수</td>
				<td>
					<input type="text" name="kor"
							placeholder="<%= sdto.getKor() %>">
				</td>
			</tr>
			<tr>
				<td>영어점수</td>
				<td>
					<input type="text" name="eng"
							placeholder="<%= sdto.getEng() %>">
				</td>
			</tr>
			<tr>
				<td>수학점수</td>
				<td>
					<input type="text" name="math"
							placeholder="<%= sdto.getMath() %>">
				</td>
			</tr>
			<tr>
				<td>생년월일</td>
				<td>
					<input type="date" name="sbirth" 
							value="<%= sdto.getSbirth() %>">
				</td>
			</tr>
			<tr>
				<td>사 진</td>
				<td>
					<input type="file" name="upfile">
				</td>
			</tr>
		</table>
		<p>
			<input type="button" value="수정취소"
					onclick="stuMod1Func('cancelMod')">
			<input type="button" value="수정저장"
					onclick="stuMod1Func('stuMod2')">
			<input type="hidden" name="snum" 
					value="<%= sdto.getSnum() %>">
			<input type="hidden" name="orgname">
			<input type="hidden" name="sysname">
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