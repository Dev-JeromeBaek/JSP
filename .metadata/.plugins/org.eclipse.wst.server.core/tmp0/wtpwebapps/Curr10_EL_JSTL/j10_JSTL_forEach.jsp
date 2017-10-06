<%@page import="java.util.HashMap"%>
<%@page import="dto.PeopleDTO"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8"> <title>Insert title here</title>
  </head>
  <body>
	
	<h2>1 ~ 10 출력하기(for-Each)</h2>
	step="1" : 1씩증가.. 항상 0보다 커야함!! <br>
	<c:forEach var="i" begin="0" end="10" step="1" >
		${ i } ->
	</c:forEach>
	<hr>
	
	<h2>10 ~ 0 출력하기</h2>
	<c:set var="i" value="10"/>
	<c:forEach var="k" begin="0" end="10" step="1">
		${ i - k } ->
	</c:forEach>
	<hr>
	
	<h2>String[] 이용</h2>
	<%
		String[] data = {"AAA", "BBB", "CCC"};
		request.setAttribute("data", data);
	%>
	<c:forEach var="each" items="${ data }">
		${ each } ->
	</c:forEach>
	<hr>
	
	<h2>배열에 대해 인덱스 이용하기</h2>
	<c:forEach varStatus="i" items="${ data }">
		${ i.index } ----> ${ data[i.index] } <br>
	</c:forEach>
	<hr>
	
	<h2>ArrayList 이용</h2>
	<%
		ArrayList<Integer> listc = new ArrayList();
		listc.add(111);
		listc.add(222);
		listc.add(333);
		listc.add(444);
		request.setAttribute("listc", listc);
	%>
	<c:forEach var="each" items="${ listc }">
		${ each } -> 
	</c:forEach>
	<hr>
	
	<h2>ArrayList - 객체 이용</h2>
	<%
		ArrayList<PeopleDTO> listc2 = new ArrayList();
		listc2.add(new PeopleDTO("둘리", 10));
		listc2.add(new PeopleDTO("마이콜", 20));
		listc2.add(new PeopleDTO("또치", 30));
		listc2.add(new PeopleDTO("도우너", 40));
		request.setAttribute("listc2", listc2);
	%>
	<c:forEach var="each" items="${ listc2 }">
		이름 : ${ each.name }, 나이 : ${ each.age } <br>
	</c:forEach>
	<hr>
	
	<h2>Map</h2>
	<%
		HashMap<Integer, Integer> mapc = new HashMap();
		mapc.put(1, 1111);
		mapc.put(2, 2222);
		mapc.put(3, 3333);
		mapc.put(4, 4444);
		request.setAttribute("mapc", mapc);
	%>
	<c:forEach var="each" items="${ mapc }">
		key : ${ each.key }, value : ${ each.value } <br>
	</c:forEach>
	
  </body>
</html>