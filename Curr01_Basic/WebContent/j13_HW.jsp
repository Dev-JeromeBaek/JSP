<%@page import="java.util.Calendar"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8">
    <title>Insert title here</title>
    <style type="text/css">
    body {
		width: 70%;
	}
    </style>
  </head>
  <body>
    <%-- 
    	1년 전체 달력을 테이블을 이용하여 작성
    	- Calender 이용
    --%>
    <%
    	request.setCharacterEncoding("UTF-8");
    
    	Calendar cal = Calendar.getInstance();
    	
    	cal.set(Calendar.YEAR, 2017);
    	
    	int year = cal.get(Calendar.YEAR);
    	int lastMonth = cal.getActualMaximum(Calendar.MONTH);
    	for(int mmm=0; mmm<=lastMonth; mmm++)
    	{
    		cal.set(Calendar.MONTH, mmm, 1);
    		int week = cal.get(Calendar.DAY_OF_WEEK);
	    	int endDay = cal.getActualMaximum(Calendar.DAY_OF_MONTH);
	    	
    %>
			<table align="center" width="500" 
					cellpadding="2" cellspacing="1">
				<tr>
				<br>
    			<hr>
    			<br>
					<td align="center" style="font-size: 20px;">
						<b> &nbsp; <%= year %>년 &nbsp;&nbsp; 
							<%= mmm+1 %>월
						</b> 
					</td>
				</tr>
			</table>
			<table border="1" align="center" width="500" 
					cellpadding="5" cellspacing="3">
				<tr>
					<td bgcolor="#e6e4e6" align="center">
						<font color="red">일</font>
					</td>
					<td bgcolor="#e6e4e6" align="center">월</td>
					<td bgcolor="#e6e4e6" align="center">화</td>
					<td bgcolor="#e6e4e6" align="center">수</td>
					<td bgcolor="#e6e4e6" align="center">목</td>
					<td bgcolor="#e6e4e6" align="center">금</td>
					<td bgcolor="#e6e4e6" align="center">
						<font color="blue">토</font>
					</td>
				</tr>
	<%
//				[줄바꿈 setting]
				int newLine = 0;
				out.print("<tr height='20'>");
				
// 				[1일이 시작되기전 빈칸채우기]
				for(int i=1; i<week; i++)
				{
					out.print("<td>&nbsp;</td>");
					newLine++;
				}

				
				
				for(int i=1; i<=endDay; i++)
				{
					out.print("<td align='center'>" + i + "</td>");
					newLine++;
					
// 					[토요일다음은 새로운 줄을 생성 (단, 토요일이 마지막날이 아니라는 조건하에)]
					if(newLine==7 && i != endDay)
					{
						out.print("</tr><tr height='20'>");
						newLine = 0;
					}
				}
				
// 				[마지막 날 이후 남은 공간들을 빈칸으로 채움]
				while(newLine>0 && newLine<7)
				{
					out.print("<td>&nbsp;</td>");
					newLine++;
				}
				out.print("</tr>");
    	}
	%>
		</table>
  </body>
</html>