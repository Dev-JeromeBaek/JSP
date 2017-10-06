<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%--     <%@ page errorPage="/errorPage.jsp" %> --%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8"> <title>Insert title here</title>
    <style type="text/css">
    .top {
    	border-color: yellow;
    }
    .left {
    	border-color: blue;
    }
    .center {
    	border-color: red;
    }
    .bottom {
    	border-color: orange;
    }
    </style>
    <%
    	String msg = (String) request.getAttribute("msg");
    %>
    <script type="text/javascript">
    	var atRcvMsg = "<%= msg %>";
    	if(atRcvMsg != "null") {
    		alert(atRcvMsg);
    	}
    </script>
  </head>
  <body>
	<%
		String cenFolder = "/center";
		String centerView = cenFolder + "/centerIndexPage.jsp";
		String atRcvCenterView = (String)request.getAttribute("centerView");
		if(atRcvCenterView != null) centerView = cenFolder + atRcvCenterView;
	%>
	<table border="1" align="center" 
		style="text-align: center; width: 100%; height: 940px;">
		<tr style="height: 25%">
			<td class="top" colspan="2">
				<jsp:include page="/top/top.jsp"/>
			</td>
		</tr>
		<tr style="height: 65%">
			<td class="left" style="width: 15%">
				<jsp:include page="/left/left.jsp"/>
			</td>
			<td class="center" style="width: 85%">
				<jsp:include page="<%= centerView %>"/>
			</td>
		</tr>
		<tr style="height: 10%">
			<td class="bottom" colspan="2">
				<jsp:include page="/bottom/bottom.jsp"/>
			</td>
		</tr>
	</table>
  </body>
</html>