<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8"> <title>Insert title here</title>
    <script type="text/javascript">
    	alert("${ msg == null }");	// msg를 보내지 않은 상황
    	if("${ msg != null}") {	// msg가 있으면 띄우기
    		alert("${ msg }");
    	}
    </script>
  </head>
  <body>
  
	<h2>인사 정보 보기</h2>
	
	<table border="1" style="text-align: center;">
		<tr>
			<td>번 호</td>
			<td>이 름</td>
			<td>나 이</td>
		</tr>
		<c:choose>
			<c:when test="${ listc != null }"><%-- if --%>
				<c:forEach var="each" items="${ listc }">
					<tr>
						<td>${ each.num }</td><%-- num == getNum() --%>
						<td>${ each.name }</td><%-- 넘버는 getNum()과 같은것! --%>
						<td>${ each.age }</td>
					</tr>
				</c:forEach>
			</c:when>
			<c:otherwise><%-- else --%>
				<tr>
					<td colspan="3">
						정보가 없습니다.
					</td>
				</tr>
			</c:otherwise>
		</c:choose>
	</table>
	
  </body>
</html>