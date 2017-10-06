<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8"> <title>Insert title here</title>
    
    <script type="text/javascript">
    
//     	[팝업창 닫기]
    	function popClose() {	// 함수 이름을 close로 이름 설정 불가능
			self.close();
		}
    	
//     	[팝업화면 이동]
    	function popMove() {
			location.href = "/Curr01_Basic/j35_popView02.jsp";
		}
    	
//     	[메인 페이지 이동시킨 후 팝업창 닫기]
    	function openerMove() {
			opener.location.href = "/Curr01_Basic/j35_home02.jsp";
			self.close();
		}
    	
    </script>
    
  </head>
  <body>
	<h2>popView01 화면</h2>
	
	<input type="button" value="닫기" 
			onclick="javascript:popClose()">
	<input type="button" value="팝업화면 이동"
			onclick="javascript:popMove()">
	<input type="button" value="부모화면 이동"
			onclick="javascript:openerMove()">
	
  </body>
</html>