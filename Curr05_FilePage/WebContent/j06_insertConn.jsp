<%@page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy"%>
<%@page import="com.oreilly.servlet.MultipartRequest"%>
<%@page import="dao.hpDAO"%>
<%@page import="dto.hpDTO"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8"> <title>Insert title here</title>
  </head>
  <body>
	<%
		request.setCharacterEncoding("UTF-8");
		String msg = null;
		hpDAO dao = new hpDAO();
		
		MultipartRequest mreq = new MultipartRequest(
									request, 
									new hpDTO().getUpPath(), 
									1024*1024*30, 
									"UTF-8", 
									new DefaultFileRenamePolicy()
									);
		System.out.println("File UpLoad Comp");
		
		String name = mreq.getParameter("name");
		int price = Integer.parseInt(mreq.getParameter("price"));
		String contorigin = mreq.getParameter("contorigin");
		String orgName = mreq.getOriginalFileName("upfile");
		String sysName = mreq.getFilesystemName("upfile");
		String opt = mreq.getParameter("opt");
		String memo = mreq.getParameter("memo").replaceAll("\n", "<br>&nbsp;");
		hpDTO dto = new hpDTO(name, price, contorigin, orgName, sysName, opt, memo);
		int res = dao.insertOne(dto);
		msg = res > 0 ? "업로드 성공" : "업로드 실패";
	%>
	<script type="text/javascript">
		alert("<%= msg %>");
		if("<%= res %>" != 0)
		{
			location.href="/Curr05_FilePage/j06_selectFurnList.jsp";
		} else {
			location.href="/Curr05_FilePage/j06_home.jsp";
		}
	</script>
  </body>
</html>