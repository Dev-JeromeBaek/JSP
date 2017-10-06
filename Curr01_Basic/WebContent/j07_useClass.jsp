<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
	<%@ page import="entity.People" %>
    
<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8">
    <title>클래스 이용하기</title>
  </head>
  <body>
  
    <h2>인사 정보</h2>
    
    <% // 스크립트릿
      People peo = new People("둘리", 10);
    
    %>
    
    peo : <%= peo.getName() %>, <%= peo.getAge() %> <br>
    
    <%
//     	친구 2명 정보를 객체를 이용하여 저장, 출력하세요
	People peo1 = new People("집밥", 20);
    People peo2 = new People("백백", 30);

    %>
    
    peo1 : <%= peo1.getName() %>, <%= peo.getAge() %> <br>
    peo2 : <%= peo2.getName() %>, <%= peo.getAge() %> <br>
    
    
    
  </body>
</html>