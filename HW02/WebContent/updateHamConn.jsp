<%@page import="dao.HamDAO"%>
<%@page import="dto.HamDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8"> <title>Insert title here</title>
  </head>
  <body>
	<%
		String msg = null;
		request.setCharacterEncoding("UTF-8");
		int num = Integer.parseInt(request.getParameter("num"));
		String nameHam = request.getParameter("nameHam");
		String brandHam = request.getParameter("brandHam");
		int priceHam = Integer.parseInt(request.getParameter("priceHam"));
		double kcalHam = Double.parseDouble(request.getParameter("kcalHam"));
		
		HamDTO dto = new HamDTO();
		dto.setNum(num);
		dto.setNameHam(nameHam);
		dto.setBrandHam(brandHam);
		dto.setPriceHam(priceHam);
		dto.setKcalHam(kcalHam);
		
		HamDAO dao = new HamDAO();
		int res = dao.updateOne(dto);
		msg = res > 0 ? "수정 완료" : "수정 실패";
	%>
	<script type="text/javascript">
		alert("<%= msg %>");
		location.href = "/HW02/selectHamOne.jsp?num=<%= dto.getNum() %>";
	</script>
	
	<%-- 
	<form name="updateConnForm" action="/HW02/selectHamOne.jsp" method="post" onsubmit="return true">
		<input type="hidden" name="msg" value="<%= msg %>">
	</form>
	<script type="text/javascript">
		function go() {
			alert("<%= msg %>");
			return true;
		}
	</script>
	--%>
  </body>
</html>