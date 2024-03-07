<%@page import="com.galphi.service.BookService"%>
<%@page import="com.galphi.service.BookCommentService"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>


<%
	request.setCharacterEncoding("UTF-8");
	
	
%>

<jsp:useBean id="co" class="com.galphi.vo.BookCommentVO">
	<jsp:setProperty property="*" name="co"/>
</jsp:useBean>
<%
	BookCommentService.getInstance().insertComment(co);
	request.setAttribute("ISBN", co.getISBN());
	
<<<<<<< HEAD
	float avg = Float.parseFloat(request.getParameter("avg"));
	 out.print(avg);
	BookService.getInstance().update(avg, co.getISBN());
	
	pageContext.forward("selectByISBN.jsp");
%>


=======
	pageContext.forward("selectByISBN.jsp");
%>
>>>>>>> da8d9c4cdaab8157e15e3ad7fcd41f927824dbf0
<%-- 11111 ${ISBN} <br/>
2222 ${co.ISBN}<br/>
333 ${co} --%>
</body>
</html>




