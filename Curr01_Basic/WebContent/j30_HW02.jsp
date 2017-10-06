<%@page import="java.util.Calendar"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8"> <title>Yeob's Home</title>
    <style type="text/css">
    	.YY {
    		background-color: #D9D9D9;
    		font-family: "배달의민족 주아";
    		font-style: : bold;
    		font-size: 20px;
    		width: 155px;
    		height: 28px;
    	}
    	
    	.ZZ {
    		width: 460px;
    		height: 28px;
    	}
    </style>
  </head>
  <body>
	<%
		request.setCharacterEncoding("UTF-8");
	
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		String pw_Que = request.getParameter("pw_Que");
		String pw_Ans = request.getParameter("pw_Ans");
		String name = request.getParameter("name");
		String postnum = request.getParameter("postnum");
		String addr1 = request.getParameter("addr1");
		String addr2 = request.getParameter("addr2");
		String birthYear = request.getParameter("birthYear");
		String birthMonth = request.getParameter("birthMonth");
		String birthDay = request.getParameter("birthDay");
		String gender = request.getParameter("gender");
		String tel01 = request.getParameter("tel01");
		String tel02 = request.getParameter("tel02");
		String tel03 = request.getParameter("tel03");
		String phone = request.getParameter("phone01") 
					+ "-" + request.getParameter("phone02") 
					+ "-" + request.getParameter("phone03");
		String email01 = request.getParameter("email01");
		String email02 = request.getParameter("email02");
		String[] interest = request.getParameterValues("interest");
		String memo = request.getParameter("memo").replaceAll("\n", "<br>&nbsp;");
	%>
<form style="width: 1150px" action="">
	<fieldset>
	<legend style="font-size:80px">Info</legend>
		<table border="0" style="margin-left:180px; 
								margin-top:20px; 
								margin-bottom:40px; 
								width: 791px;" cellpadding="4">
			<tr>
				<td class="YY">&nbsp; 아이디</td>
				<td class="ZZ=">&nbsp; <%= id %></td>
			</tr>
			<tr>
				<td class="YY">&nbsp; 비밀번호</td>
				<td class="ZZ">&nbsp; <%= pw %></td>
			</tr>
			<tr>
				<td class="YY">&nbsp; 비밀번호 확인 질문</td>
				
				<td class="ZZ">&nbsp; <%= pw_Que %></td>
			</tr>
			<tr>
				<td class="YY">&nbsp; 비밀번호 확인 답변</td>
				<td class="ZZ">&nbsp; <%= pw_Ans %></td>
			</tr>
			<tr>
				<td class="YY">&nbsp; 이름</td>
				<td class="ZZ">&nbsp; <%= name %></td>

			</tr>
			<tr>
				<td class="YY">&nbsp; 주소</td>
				<td class="ZZ">&nbsp; (<%= postnum %>)<br>&nbsp;
										 <%= addr1 %><br>&nbsp;
										 <%= addr2 %>
				</td>
			</tr>
			<tr>
				<td class="YY">&nbsp; 생년월일</td>
				<td class="ZZ">&nbsp; <%= birthYear + "-" + birthMonth + "-" + birthDay %></td>
			</tr>
			<tr>
				<td class="YY">&nbsp; 성별</td>
				<td class="ZZ">&nbsp; <%= gender %></td>
			</tr>
			<tr>
				<td class="YY">&nbsp; 일반전화</td>
				<td class="ZZ">&nbsp; <%= tel01 + "-" + tel02 + "-" + tel03 %></td>

			</tr>
			<tr>
				<td class="YY">&nbsp; 휴대전화</td>
				<td class="ZZ">&nbsp; <%= phone %></td>
			</tr>
			<tr>
				<td class="YY">&nbsp; 이메일</td>
				<td class="ZZ">&nbsp; <%= email01 + "@" + email02 %></td>

			</tr>
			<tr>
				<td class="YY">&nbsp; 관심분야</td>
				<td style="width: 460px; height: 50px;">&nbsp; 
								<% for(String each : interest)
									{
								%>
										<%= each %>&nbsp;
								<%
									}
								%></td>
			</tr>
			<tr>
				<td class="YY" style="width: 155px; height: 166px;">&nbsp; 소개</td>
				<td style="width: 460px; height: 166px;">&nbsp;<%= memo %></td>

			</tr>
		</table>
		
	</fieldset>
</form>
	
  </body>
</html>