<%@page import="sun.rmi.transport.proxy.HttpReceiveSocket"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8"> <title>Quiz 출력페이지</title>
  </head>
  <body>
	<%!
		String names[], results[];
		int kors[], engs[], maths[], totals[];
		double avgs[];
	%>
	
	<h2>학생 정보 관리 프로그램 (출력 페이지)</h2>
	
	<table border="1" style="text-align: center;">
		<tr>
			<td>이 름</td>
			<td>국어점수</td>
			<td>영어점수</td>
			<td>수학점수</td>
			<td>총 점</td>
			<td>평 균</td>
			<td>합격여부</td>
		</tr>
		
		<%
			request.setCharacterEncoding("UTF-8");
			
			names = request.getParameterValues("name");
			String[] kor = request.getParameterValues("kor");
			String[] eng = request.getParameterValues("eng");
			String[] math = request.getParameterValues("math");
			
			kors = new int[names.length];
			engs = new int[names.length];
			maths = new int[names.length];
			totals = new int[names.length];
			avgs = new double[names.length];
			results = new String[names.length];
			
// 			for(int i=0; i<names.length; i++)
// 			{
// 				if(names[i].equals("") || kor[i].equals("") || eng[i].equals("") || math[i].equals(""))
// 				{
// 					if(names[i].equals(""))
// 					{
// 						names[i] = "";
// 						kors[i] = 0;
// 						engs[i] = 0;
// 						maths[i] = 0;
// 						totals[i] = 0;
// 						avgs[i] = 0;
// 						results[i] = "입력이 없습니다.";
						
// 					}
// 					if(kor[i].equals(""))
// 					{
// 						kors[i] = 0;
// 					}
// 					if(eng[i].equals(""))
// 					{
// 						engs[i] = 0;
// 					}
// 					if(math[i].equals(""))
// 					{
// 						maths[i] = 0;
// 					}
// 				}
// 				if(names[i].equals(""))
// 				{
// 					names[i] = "";
// 					kors[i] = 0;
// 					engs[i] = 0;
// 					maths[i] = 0;
// 					totals[i] = 0;
// 					avgs[i] = 0;
// 					results[i] = "입력이 없습니다.";
					
// 				} else if(kor[i].equals("")) {
// 					kors[i] = 0;
// 					engs[i] = Integer.parseInt(eng[i]);
// 					maths[i] = Integer.parseInt(math[i]);
// 					totals[i] = kors[i] + engs[i] + maths[i];
// 					avgs[i] = totals[i] / 3.0;
// 					if(avgs[i] >= 85.5)
// 					{
// 						results[i] = "합격입니다.";
// 					} else {
// 						results[i] = "불합격입니다.";
// 					}
// 				} else if(eng[i].equals("")) {
// 					engs[i] = 0;
// 					kors[i] = Integer.parseInt(kor[i]);
// 					maths[i] = Integer.parseInt(math[i]);
// 					totals[i] = kors[i] + engs[i] + maths[i];
// 					avgs[i] = totals[i] / 3.0;
					
// 					if(avgs[i] >= 85.5)
// 					{
// 						results[i] = "합격입니다.";
// 					} else {
// 						results[i] = "불합격입니다.";
// 					}
// 				} else if(math[i].equals("")) {
// 					maths[i] = 0;
// 					kors[i] = Integer.parseInt(kor[i]);
// 					engs[i] = Integer.parseInt(eng[i]);
// 					totals[i] = kors[i] + engs[i] + maths[i];
// 					avgs[i] = totals[i] / 3.0;
					
// 					if(avgs[i] >= 85.5)
// 					{
// 						results[i] = "합격입니다.";
// 					} else {
// 						results[i] = "불합격입니다.";
// 					}
					
// 				} else {
					
// 					kors[i] = Integer.parseInt(kor[i]);
// 					engs[i] = Integer.parseInt(eng[i]);
// 					maths[i] = Integer.parseInt(math[i]);
// 					totals[i] = kors[i] + engs[i] + maths[i];
// 					avgs[i] = totals[i] / 3.0;
					
// 					if(avgs[i] >= 85.5)
// 					{
// 						results[i] = "합격입니다.";
// 					} else {
// 						results[i] = "불합격입니다.";
// 					}
// 				}
// 			}

			for(int i=0; i<names.length; i++)
			{
				kors[i] = Integer.parseInt(kor[i]);
				engs[i] = Integer.parseInt(eng[i]);
				maths[i] = Integer.parseInt(math[i]);
				totals[i] = kors[i] + engs[i] + maths[i];
				avgs[i] = totals[i] / 3.0;
				
				if(avgs[i] >= 85.5)
				{
					results[i] = "합격입니다.";
				} else {
					results[i] = "불합격입니다.";
				}
 		%>
			<tr>
				<td><%= names[i] %></td>
				<td><%= kors[i] %></td>
				<td><%= engs[i] %></td>
				<td><%= maths[i] %></td>
				<td><%= totals[i] %></td>
				<td><%= avgs[i] %></td>
				<td><%= results[i] %></td>
			</tr>
		<%
			}
 		%>
	</table>
	
  </body>
</html>