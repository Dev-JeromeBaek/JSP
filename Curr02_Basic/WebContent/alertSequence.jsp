<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%
    	String aa = "aa";
    %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8"><title>Insert title here</title>
	
	<script type="text/javascript">
		alert("AA : <%= aa %>");
	</script>

</head>
<body>

	<%
    	String bb1 = "bb1";
    %>
	<script type="text/javascript">
		alert("#.1 BB : bb1 = <%= bb1 %>");
		alert("#.1 BB : data = " + document.frm.data.value);
	</script>
	
	<form name="frm">
		<input type="text" name="data" value="<%= bb1 %>">
	</form>

	<script type="text/javascript">
		alert("#.2 BB : data = " + document.frm.data.value);
	</script>
	
</body>
	
	<%
    	String cc = "cc";
    %>
		
	<script type="text/javascript">
		alert("CC : <%= cc %>");
	</script>

</html>
