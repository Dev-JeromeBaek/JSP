<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
<%@page import="java.util.Calendar"%>
<%@page import="exClass.ex002_CalendarJAVA" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8"> <title>Calendar 사용하기</title>
  </head>
  <body>
	<h2>Calendar 사용법 익혀두기</h2>
		
	<%
		Calendar cal = Calendar.getInstance();
	%>
	
		<hr>
		현재 년 : <%= cal.get(Calendar.YEAR) %> <br><br>
		현재 월 : <%= cal.get(Calendar.MONTH+1) %> <br><br>
		현재 일 : <%= cal.get(Calendar.DATE) %> <br><br>
		현재 요일 : <%= cal.get(Calendar.DAY_OF_WEEK) %> <br>
		day_of_month? : <%= cal.get(Calendar.DAY_OF_MONTH) %> <br>
		그 달의 마지막날 : <%= cal.getActualMaximum(Calendar.DAY_OF_MONTH) %>
		(숫자로 제공 (일1/월2/화3/수4/목/5/금6/토7)) <br><br>
		오전/오후 : <%= cal.get(Calendar.AM_PM)%> <br>
		(숫자로 제공 am = 0 / pm = 1) <br><br>
		시간(12시 기준) : <%= cal.get(Calendar.HOUR) %> <br><br>
		분 : <%= cal.get(Calendar.MINUTE) %> <br><br>
		초 : <%= cal.get(Calendar.SECOND) %> <br><br>
		
		
		
  </body>
</html>