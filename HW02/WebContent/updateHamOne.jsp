<%@page import="dto.HamDTO"%>
<%@page import="dao.HamDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8"> <title>Insert title here</title>
    <style type="text/css">
    body {
		margin-top: 100px;
		margin-left: 100px;
		width: 70%;
	}
    </style>
    <script type="text/javascript">
    	function okUpdate() {
    		var frm = document.updateHamOneForm;
    		if(frm.nameHam.value == "")
    		{
    			alert("햄버거 이름을 입력하세요");
    			frm.nameHam.focus();
    		} else if(frm.brandHam.value == "") {
    			alert("브랜드 이름을 입력하세요");
    			frm.brandHam.focus();
    		} else if(frm.priceHam.value == "") {
    			alert("가격을 입력하세요");
    			frm.priceHam.focus();
    		} else if(frm.kcalHam.value == "") {
    			alert("칼로리를 입력하세요");
    			frm.kcalHam.focus();
    		} else {
	    		frm.action = "/HW02/updateHamConn.jsp";
	    		frm.method = "post";
	    		frm.submit();
    		}
    	}
    	
    	function cancelUpdate() {
    		alert("수정 취소");
    		var frm = document.updateHamOneForm;
    		frm.action = "/HW02/selectHamOne.jsp";
    		frm.method = "post";
    		frm.submit();
    	}
    </script>
  </head>
  <body>
	<%
		request.setCharacterEncoding("UTF-8");
		int num = Integer.parseInt(request.getParameter("num"));
		HamDAO dao = new HamDAO();
		HamDTO dto = dao.selectOne(num);
	%>
	
	<h2>햄버거 정보 수정</h2>

	<a href="/HW02/home.jsp">Home</a>
	<br><br>
	
	<form name="updateHamOneForm">
		<table>
			<tr>
				<td>번 호</td>
				<td><%= dto.getNum() %></td>
			</tr>
			<tr>
				<td>햄버거 이름</td>
				<td><input type="text" name="nameHam" 
						placeholder="<%= dto.getNameHam() %>">
				</td>
			</tr>
			<tr>
				<td>브랜드 이름</td>
				<td><input type="text" name="brandHam"
						placeholder="<%= dto.getBrandHam() %>">
				</td>
			</tr>
			<tr>
				<td>가 격(원)</td>
				<td><input type="text" name="priceHam"
						placeholder="<%= dto.getPriceHam() %>">
				</td>
			</tr>
			<tr>
				<td>칼로리(kcal)</td>
				<td><input type="text" name="kcalHam"
						placeholder="<%= dto.getKcalHam() %>">
				</td>
			</tr>
			<tr>
				<td colspan="2">
					<input type="hidden" name="num" value="<%= dto.getNum() %>">
					<input type="reset" value="다시쓰기">
					<input type="button" value="수정취소"
							onclick="cancelUpdate()">
					<input type="button" value="수정완료"
							onclick="okUpdate()">
				</td>
			</tr>
		</table>
	</form>
  </body>
</html>