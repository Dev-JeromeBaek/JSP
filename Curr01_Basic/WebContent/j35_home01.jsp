<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8"> <title>JavaScript PopUp</title>
    <script type="text/javascript">
    	var url = "/Curr01_Basic/j35_popView01.jsp";		// 팝업창의 URL을 지정!
    	var popname = "popView01";	// 팝업창의 이름을 지정!
//     	=> name은 시스템 이 사용중인 이름이므로 함수이름으로 사용 불가능
    	var size = "width=300, height=450";		// 팝업창의 사이즈 지정!(사이즈 지정 안하면 페이지가 하나 뜬다..)
    	window.open(url, popname, size);
//     	window.open : 명령을 통해 PopUp창을 띄운다!!
    </script>
  </head>
  <body>
	<h2>팝업 이용하기 - home01</h2>
	
	
  </body>
</html>