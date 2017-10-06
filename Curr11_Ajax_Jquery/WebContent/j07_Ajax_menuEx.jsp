<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8"> <title>Insert title here</title>
  </head>
  <body>
	
	<table align="center">
		<tr>
			<td>
				<a onclick="getList('corp')">회사소개</a>
			</td>
			<td>
				<a onclick="getList('prod')">상품소개</a>
			</td>
		</tr>
		<tr>
			<td id="corpTd"></td>
			<td id="prodTd"></td>
		</tr>
	</table>
  </body>
	<script type="text/javascript">
	var httpRequest = null;
	
	function getXMLHttpRequest() {
		if(window.ActiveXObject) {
			try {
				return new ActiveXObject("Msxml12.XMLHTTP");
			} catch(e) {
				try {
					return new ActiveXObject("Microsoft.XMLHTTP");
				} catch(e1) {
					return null;
				}
			}
		} else if(window.XMLHttpRequest) {
			return new XMLHttpRequest();
		} else {
			return null;
		}
	}
	
	var target = null;
	
	function getList(sel) {
		target = sel;
		
		httpRequest = getXMLHttpRequest();
		httpRequest.onreadystatechange = callback;
// 		=> onreadystatechange 설정 시 
// 			callback함수에 인자값 적용 불가능
// 			(그래서 callback도 사용해야 할 target을 밖에서 선언함.)
		
		var targetURL = "/Curr11_Ajax_Jquery/j07_server_"
						+ target + "List.jsp";
		httpRequest.open("Get", targetURL, true);	// true : 비동기식
		httpRequest.setRequestHeader("Content-Type", "application/x-www-form-urlencoded");
		httpRequest.send(null);		// get방식이기때문에 null값으로 설정
	}
	
	function callback() {
		if(httpRequest.readyState == 4) {
			if(httpRequest.status == 200) {
				
				var menuList = httpRequest.responseText;
				var corpTd = document.getElementById("corpTd");
				var prodTd = document.getElementById("prodTd");
				
				if(target == "corp") {
					corpTd.innerHTML = menuList;	// 메뉴리스트를 띄워준다.
					prodTd.innerHTML = "";			// 상품정보가 띄워져있을 수 있으니 지워준다.
				} else if(target == "prod") {
					prodTd.innerHTML = menuList;
					corpTd.innerHTML = "";
				}
			} else {
				alert("*** 실패 : " + httpRequest.status);
			}
		}
	}
	
	</script>
</html>