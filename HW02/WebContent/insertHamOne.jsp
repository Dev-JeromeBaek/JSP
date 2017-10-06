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
    	function okInsert() {
    		var frm = document.insertHamOneForm;
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
	    		frm.action = "/HW02/insertHamConn.jsp";
	    		frm.method = "post";
	    		frm.submit();
    		}
    	}
    	
    	function cancelInsert() {
    		alert("입력 취소");
    		var frm = document.insertHamOneForm;
    		frm.action = "/HW02/home.jsp";
    		frm.method = "post";
    		frm.submit();
    	}
    </script>
  </head>
  <body>
	
	<h2>햄버거 정보 입력</h2>

	<a href="/HW02/home.jsp">Home</a>
	<br><br>
	<form name="insertHamOneForm">
		<table border="1" style="text-align: center;">
			<tr>
				<td>햄버거 이름</td>
				<td><input type="text" name="nameHam" 
						placeholder="햄버거 이름 입력"></td>
			</tr>
			<tr>
				<td>브랜드 이름</td>
				<td><input type="text" name="brandHam" 
						placeholder="브랜드 이름 입력"></td>
			</tr>
			<tr>
				<td>가격 입력</td>
				<td><input type="text" name="priceHam" 
						placeholder="햄버거 가격 입력"></td>
			</tr>
			<tr>
				<td>칼로리 입력</td>
				<td><input type="text" name="kcalHam" 
						placeholder="햄버거 칼로리 입력"></td>
			</tr>
			<tr>
				<td colspan="2">
					<input type="reset" value="다시쓰기">
					<input type="button" value="입력취소"
							onclick="cancelInsert()">
					<input type="button" value="입력완료"
							onclick="okInsert()">
				</td>
			</tr>
		</table>
	</form>
  </body>
</html>