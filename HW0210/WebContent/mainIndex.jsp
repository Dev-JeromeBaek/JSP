<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
    a:link {
		text-decoration: none;
		color: #DF171E;
	}
	a:hover { 
	 	text-decoration: none; 
	 	font-size: xx-large;
		font-family: "배달의민족 주아";
	 	color: #DF171E;
	}
	a:visited {
		text-decoration: none;
		color: #DF171E;
	}
	a:active {
		font-size: xx-large;
		font-family: "Rix토이그레이";
		color: #24A048;
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
		String centerView = cenFolder + "/centerIndex.jsp";
		String atRcvCenterView = 
				(String)request.getAttribute("centerView");
		if(atRcvCenterView != null) centerView = 
				cenFolder + atRcvCenterView;
		
		String topFolder = "/top";
		String topView = topFolder + "/topIndex.jsp";
		String atRcvTopView = 
				(String)request.getAttribute("topView");
		if(atRcvTopView != null) topView = 
				topFolder + atRcvTopView;

		String leftFolder = "/left";
		String leftView = leftFolder + "/leftIndex.jsp";
		String atRcvLeftView = 
				(String)request.getAttribute("leftView");
		if(atRcvLeftView != null) leftView = 
				leftFolder + atRcvLeftView;
	%>
	<table border="1" <%-- align="center" --%> 
		style="text-align: center; width: 100%; height: 950px;">
		<tr class="top" style="height: 20%">
			<td colspan="2">
				<jsp:include page="<%= topView %>"/>
			</td>
		</tr>
		<tr style="height: 70%">
			<td class="left" style="width: 20%">
				<jsp:include page="<%= leftView %>"/>
			</td>
			<td class="center" style="width: 80%" align="center">
				<%-- <div style="overflow: auto; margin-top:200px; height: 650px;" align="center"> --%>
				<jsp:include page="<%= centerView %>"/>
				<%-- </div> --%>
			</td>
		</tr>
		<tr style="height: 10%">
			<td class="bottom" colspan="2">
				<jsp:include page="/bottom/bottomIndex.jsp"/>
			</td>
		</tr>
	</table>
  </body>
</html>