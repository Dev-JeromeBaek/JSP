<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8"> <title>Insert title here</title>
  </head>
  <body>
  	<%
  		Object rcv1 = session.getAttribute("mmm");
  		Object rcv2 = session.getAttribute("nnn");
  		Object rcv3 = session.getAttribute("listc");
  		String data1 = "정보 없음";
  		int data2 = 0;
  		ArrayList<String> listc = null;
  		if(rcv1 != null) {
  			data1 = ((String)rcv1);
  		}
  		if(rcv2 != null) {
  			data2 = (int)rcv2;
  		}
  		if(rcv3 != null) {
  			listc = (ArrayList)rcv3;
  		}
  	%>
  
	<h2>세션의 정보 확인</h2>
	data1 = <%= data1 %> <br>
	data2 = <%= data2 %> <br>
	listc = <%= listc %>
  </body>
</html>