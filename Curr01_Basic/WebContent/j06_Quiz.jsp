<%@page import="javax.swing.JOptionPane"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8">
    <title>Insert title here</title>
  </head>
  <body>
    <%--
    	문제 : 학생 정보 관리 프로그램
    	1. 상세 항목 : 이름, 국어, 영어, 수학, 총점, 평균, 결과
    				(평균은 소수점수)
    	2. 결과 :
    		평균 85.5 이상이면 => ***는 **점으로 우등상 입니다.
    		평균 75.5 이상이면 => ***는 **점으로 장려상 입니다.
    		나머지는 메시지 없음.
    	3. 요구사항
    		각 점수는 JOptionPane으로 입력받음.
    		입력받은 모든 상세 정보도 출력해 주세요.
     --%>
     
    <%!
    	public int intJOP(String title) {
    		String in_Val = JOptionPane.showInputDialog(title);
    		return Integer.parseInt(in_Val);
    	}
    %>
    
    <%
    	String name;
    	int kor, eng, math, total;
    	double avg;
    	String result;
    	
    	name = JOptionPane.showInputDialog(null, "학생 이름을 입력하세요");
    	kor = intJOP("국어 점수 입력");
    	eng = intJOP("영어 점수 입력");
    	math = intJOP("수학 점수 입력");
    	total = kor + eng + math;
    	avg = total / 3.0;
    	
    	if(avg >= 85.5)
    	{
    		result = "우등상";
    	} else if(avg <85.5 && avg >=75.5) {
    		result = "장려상";
    	} else {
    		result = "";
    	}
    %>
    
    	이름 : <%= name %> <br>
    	국어점수 : <%= kor %> <br>
    	영어점수 : <%= eng %> <br>
    	수학점수 : <%= math %> <br>
    	총점 : <%= total %> <br>
    	평균 : <%= avg %> <br> <br>
    	결과 : <%= name %> 님은 <%= avg %> 점으로 <%= result %> 입니다.
    
  </body>
</html>