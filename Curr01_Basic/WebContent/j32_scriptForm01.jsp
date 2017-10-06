<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8"> <title>Java Script</title>
    <script type="text/javascript">
    
    	function useValue() {
    		
//     		ex... onclick=에서 함수를 쓰고 싶은 경우 예시
// 			alert("AA");
// 			alert("BB");
    		
//     		[1번] 방법
// 			document.frm;	// document.frm; : 이 문서(document)안에 name="frm"을 찾아라!!
// 			document.frm.frmData.value;

			var frm = document.frm;
			
			if(frm.frmData.value == "") {
				alert("값을 입력하세요");
				
// 				[id=""로 지정하기] 
// 				document.getElementById('aa').value = "";
// 	    		document.getElementById('aa').focus();

// 				[name=""으로 지정하기]
				frm.aa.value = "";
				frm.aa.focus();
				return; // 함수를 끝내버린다!!
			}
				
// 			[1번]방법을 간단하게!!
// 			var frm = document.frm;
// 			frm.frmData.value
			alert("현재 입력된 값 확인 : " + frm.frmData.value);
			frm.frmData.value = "원하는 값을 스크립트에서 입력하기";
// 			frm.frmData.value = : frm에 frmData에 값을 = 이후의 ~~로 저장해라.

// 			스크립트 에러 찾는 방법!!!!!!
			alert("에러");
			// 위의 alert를 줄마다 내리면서 실행시켜보고 이게 안뜨면 그 부분이 에러!!!
			// 크롬에서 f12누르면 개발자모드 소스보기!! 빨간줄 뜰거야!!
		}
    </script>
    
    <script type="text/javascript">
    	
    	function go01() {
    		var frm = document.frm;
    		frm.action = "/Curr01_Basic/j32_scriptForm02.jsp";
    		frm.submit();
    	}
    	
    	function go02() {
			var frm = document.frm;
			frm.action = "/Curr01_Basic/j32_scriptForm02.jsp";
			frm.method = "post";
			frm.submit();
		}
    	
    	function go03() {
			var frm = document.frm;
			frm.action = "/Curr01_Basic/j32_scriptForm02.jsp?param='파라미터값'";
			frm.submit();
		}
    	
    	function go04() {
			var frm = document.frm;
			frm.action = "/Curr01_Basic/j32_scriptForm02.jsp";
			frm.submit();
		}
    	
    </script>
    
  </head>
  <body>
	<h2>자바스크립트 function과 form의 이용 (전송페이지)</h2>
	
	<form name="frm">
	
		<input id="aa" type="text" name="frmData"> <hr>
		
		<input type="button" value="0. form의 값 쓰기/읽기"
				onclick="javascript:useValue()"> <%-- ;을 붙이는 경우 함수안에 명령을 실행하려할때!! --%>
<!-- 		<input type="button" value="ex" onclick="javascript:alert('AA'); alert('BB');"> -->
				
		<hr>
		
		<input type="button" value="1. 페이지 이동(get방식)"
				onclick="javascript:go01()">
				
		<hr>		
		
		<input type="button" value="2. 페이지 이동(post방식)"
				onclick="javascript:go02()">
				
		<hr>
		
		<input type="button" value="3. URL에 파라미터를 붙이는 경우"
				onclick="javascript:go03()">
				
		<hr>
		
		<input type="hidden" name="hidData" value="보내고 싶은 hidden타입 값">
		<input type="button" value="4. hidden값과 입력 파라미터 전송"
				onclick="javascript:go04()">
		
	</form>
  </body>
</html>