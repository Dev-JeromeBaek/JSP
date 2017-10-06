<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ page import="entity.People" %>
<%@ page import="java.util.ArrayList" %>

<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8"> <title>Attribute</title>
  </head>
  <body>
	<h2>setAttribute 및 forward : 중간 페이지</h2>
	
	attribute와 forward는 짝꿍!
	attribute값은 forward로만 값 전달이 가능하다!!!!!!!!!!!!!!!!!!!!
	꼭 기억할 것!!
	1번페이지에서 a태그로 전달하기 때문에 1번페이지에서 attribute를 사용한다고 해서 객체가 넘어가지 않는다!!
	무조건 attribute는 forward와 함께!!
	
	<%
// 		1. 일반자료형
		String data = "가나다";
		int n = 100;
		
		request.setAttribute("data", data);
		request.setAttribute("n", n);
		
// 		2. 클래스의 객체
		People peo = new People("둘리", 10);
		request.setAttribute("peo", peo);
		
// 		3. 컬렉션
		ArrayList<People> listc = new ArrayList();
		listc.add(new People("도우너", 20));
		listc.add(new People("희동이", 30));
		listc.add(new People("고길동", 40));
		request.setAttribute("listc", listc);
		
	%>
	
	<jsp:forward page="/j11_attribute03.jsp"></jsp:forward>
	
	
  </body>
</html>