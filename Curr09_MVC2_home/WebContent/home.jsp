<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8"> <title>Insert title here</title>
    <%
    	String msg = (String)request.getAttribute("msg");
    %>
    <script type="text/javascript">
    	var scrMsg = "<%= msg %>";
    	if(scrMsg != "null") {
    		alert(scrMsg);
    	}
    </script>
  </head>
  <body>
  <%
  	String mainView = "/mainHome.jsp";
  	String attrView = (String)request.getAttribute("mainView");
  	if(attrView != null) {
  		mainView = attrView;
  	}
//   include page의 경로는 URL을 통해 페이지를 호출하므로
//   	파일 경로에서 사용하는 이름에
//   	컨트롤러 서블릿의 이름이 등장해서는 안됨.
//   	서블릿이 peo인 경우(/프로젝트이름/peo/*),
//   	파일들을 가지는 폴더의 이름은 (/peo/파일이름.jsp)가
//   	되어서는 안됨.
  %>
	
	<table border="1" style="width: 100%; height: 1000px; text-align: center;">
		<tr style="height: 20%">
			<td colspan="2">
				<jsp:include page="/top.jsp"/>
			</td>
		</tr>
		<tr style="height: 65%">
			<td style="width: 20%">
				<jsp:include page="/left.jsp"/>
			</td>
			<td style="widows: 80%">
				<jsp:include page="<%= mainView %>"/>
			</td>
		</tr>
		<tr style="height: 15%">
			<td colspan="2">
				<jsp:include page="/bottom.jsp"/>
			</td>
		</tr>
	</table>
	
  </body>
</html>