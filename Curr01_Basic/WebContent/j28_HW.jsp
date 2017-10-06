<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@page import="java.util.Calendar"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<STYLE type="text/css">
	body { 
		width: 600px;
	}

	.a {
		font-size: 40px;
		font-family: "Rix토이그레이";
	}
	
	.b {
		font-size: 35px;
		font-family: "210 다락방";
	}
	
	a:link {
		text-decoration: none;
		color: #05AC36;
	}
	
	a:hover { 
 	 	/* a태그에 마우스 올렸을 때 생기는 밑줄 삭제 */
	 	text-decoration: none; 
	 	color: #05AC36; 
	}
	
	a:visited {
		text-decoration: none;
		color: #05AC36;
	}

/*

color : 영문색상명 / RGB색상명 (글씨색)
font-size : 절대크기인 pt/mm/cm/in, 상대크기인 px/%(기본100%)/em(배수)
font-family :  글씨체명
font-style : italic / normal (기울임꼴 여부)
font-weight : bold / normal (굵은글꼴 여부)
text-align : left / center / right (글자의 가로정렬)
text-decoration : underline / none (글자밑줄 여부)

a:link {}
→ a태그가 걸린 글자의 스타일을 위와 같은 스타일로 변화시킬 수 있습니다. 

a:hover {}
→ a태그가 걸린 글자에 마우스를 가져다 대면 위와 같은 스타일로 변화시킬 수 있습니다.

a:active {}
→ a태그가 걸린 글자를 클릭 시 위와 같은 스타일로 변화시킬 수 있습니다.

a:visited {}
→ 보통 하이퍼링크가 걸린 글자를 선택하고 나면 색이 보라색으로 바뀌는 걸 경험하신 적 있으신가요? 
	이미 방문한 사이트라면 그렇게 변하는 데 이 역시도 
	a:vistied를 이용하여 방문한 링크에 대한 스타일을 지정할 수 있습니다.

*/

</STYLE>

</head>
<body>
	<%--
		숙제 : 전체 달력 만들기
		- 이전달/다음달 선택 기능을 가진 달력
		- 이전달을 누르면, 전년도 달력까지 계속 나와야 함
		- table 이용
	--%>
	<%
		request.setCharacterEncoding("UTF-8");

		Calendar cal = Calendar.getInstance();

		int nowYear = cal.get(Calendar.YEAR);
		int nowMonth = cal.get(Calendar.MONTH) + 1;
		int nowDay = cal.get(Calendar.DAY_OF_MONTH);

// 		[a태그로 설정된 year, month]
		String strYear = request.getParameter("year");
		String strMonth = request.getParameter("month");

// 		[현재 2017년1월을 초기 화면에 셋팅]
		int year = nowYear;
		int month = nowMonth;
		
// 		[값이 있을때만 형변환하기]
		if (strYear != null) {
			year = Integer.parseInt(strYear);
		}
		if (strMonth != null) {
			month = Integer.parseInt(strMonth);
		}

// 		[전월 이동]
		int preYear = year;
		int preMonth = month - 1;
		if (preMonth < 1) {
			preYear = year - 1;
			preMonth = 12;
		}

// 		[다음달]
		int nextYear = year;
		int nextMonth = month + 1;
		if (nextMonth > 12) {
			nextYear = year + 1;
			nextMonth = 1;
		}

// 		[표시할 달력 세팅]
		cal.set(year, month - 1, 1);
		int startDay = 1;
		int endDay = cal.getActualMaximum(Calendar.DAY_OF_MONTH);

// 		[매년 해당월의 1일 체크]
		int week = cal.get(Calendar.DAY_OF_WEEK);
	%>
	<br>
	<table class="a" align="center" width="500" cellpadding="2" cellspacing="1">
		<tr>
			<td align="center">
				<a href="j28_HW.jsp?year=<%=preYear%>&month=<%=preMonth%>">◀</a> 
					<b>  <%=year%>년 &nbsp; <%=month%>월 </b> 
				<a href="j28_HW.jsp?year=<%=nextYear%>&month=<%=nextMonth%>">▶</a>
			</td>
		</tr>
	</table>

	<table class="b" align="center" width="500" cellpadding="0" cellspacing="1">
		<tr bgcolor="#e6e4e6" align="center">
			<td><font color="red">일</font></td>
			<td>월</td>
			<td>화</td>
			<td>수</td>
			<td>목</td>
			<td>금</td>
			<td><font color="blue">토</font></td>
		</tr>
		
		<%
// 			[줄바꿈 setting]
			int newLine = 0;
			out.print("<tr height='20'>");
			
//			[1일이 시작되기전 빈칸채우기]
			for (int i = 1; i < week; i++) {
				out.print("<td>&nbsp;</td>");
				newLine++;
			}

// 			[1일~마지막날]
			for (int i = startDay; i <= endDay; i++) {
				
// 				[일요일 빨간색 / 토요일 파란색 / 평일 검정]
				String fontColor = (newLine == 0) ? 
										"red" : (newLine == 6) ? 
												"blue" : "black";

// 				[오늘 날짜 알아보기쉽게?]
				String bgColor = (nowYear == year) && 
								(nowMonth == month) && 
								(nowDay == i) ? "#e6e6e6" : "#fff";

				out.print("<td align='center' bgcolor='"+bgColor+"'>"
							+ "<font color='" + fontColor + "'>" + i
							+ "</font></td>");
				newLine++;
				
//				[토요일다음은 새로운 줄을 생성 (단, 토요일이 마지막날이 아니라는 조건하에)]
				if (newLine == 7 && i != endDay) {
					out.print("</tr><tr height='20'>");
					newLine = 0;
				}
			}
			
//			[마지막 날 이후 남은 공간들을 빈칸으로 채움]
			while (newLine > 0 && newLine < 7) {
				out.print("<td>&nbsp;</td>");
				newLine++;
			}
			out.print("</tr>");
		%>
	</table>
</body>
</html>