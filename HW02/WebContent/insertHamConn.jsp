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
		String nameHam = request.getParameter("nameHam");
		String brandHam = request.getParameter("brandHam");
		int priceHam = Integer.parseInt(request.getParameter("priceHam"));
		double kcalHam = Double.parseDouble(request.getParameter("kcalHam"));
		
		HamDTO dto = new HamDTO(nameHam, brandHam, priceHam, kcalHam);
		HamDAO dao = new HamDAO();
		
		int res = dao.insertOne(dto);
		msg = res > 0 ? "저장 완료" : "저장 실패";
		
	%>
	<script type="text/javascript">
		alert("<%= msg %>");
		location.href = "/HW02/selectHamList.jsp";
	</script>
  </body>
</html>