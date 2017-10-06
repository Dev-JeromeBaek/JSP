<%@page import="entity.People"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8">
    <title>Quiz12_컬렉션&테이블</title>
    
  </head>
  <body>
    <%--
    	문제 : 인사 정보 4개를 가진 컬렉션을 작성한 후
    		   이름과 나이를 테이블을 이용하여 출력하세요.
    --%>
    
    <% 
    	ArrayList<People> listc = new ArrayList();
    	listc.add(new People("둘리", 10));
    	listc.add(new People("도우너", 20));
    	listc.add(new People("또치", 30));
    	listc.add(new People("희동이", 40));
    %>
    <h2>테이블 & 컬렉션 콜라보레이션</h2>
    <table border="2">
    	<tr>
    		<td align="center">이름</td>
    		<td align="center">나이</td>
    	</tr>
    <%
    	for(People each : listc)
    	{
    		
    %>
    	<tr>
    		<td><%= each.getName() %></td>
    		<td><%= each.getAge() %></td>
    	</tr>
    <%
    	}
    %>
    </table>
  </body>
</html>