<<<<<<< HEAD
<%@page import="com.galphi.vo.BookCommentList"%>
=======
<<<<<<< HEAD
<%@page import="com.galphi.vo.BookCommentList"%>
=======
<<<<<<< HEAD
<%@page import="com.galphi.vo.BookCommentList"%>
=======
>>>>>>> d311b44d6b8af0cac4c7a401729a503d1c3a66ed
>>>>>>> f34125b482ab24be1ad5cd5c862fccfbecfc4195
>>>>>>> fd92efd3becf44ca9bb499b4130591e9b8cf2adf
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
	
	
<<<<<<< HEAD
	
=======
<<<<<<< HEAD
	
=======
<<<<<<< HEAD
	
=======
>>>>>>> d311b44d6b8af0cac4c7a401729a503d1c3a66ed
>>>>>>> f34125b482ab24be1ad5cd5c862fccfbecfc4195
>>>>>>> fd92efd3becf44ca9bb499b4130591e9b8cf2adf
%>

<jsp:useBean id="co" class="com.galphi.vo.BookCommentVO">
	<jsp:setProperty property="*" name="co"/>
</jsp:useBean>

<%
	BookCommentService.getInstance().insertComment(co);
	request.setAttribute("ISBN", co.getISBN());
	
<<<<<<< HEAD
=======
<<<<<<< HEAD
=======
<<<<<<< HEAD
>>>>>>> f34125b482ab24be1ad5cd5c862fccfbecfc4195
>>>>>>> fd92efd3becf44ca9bb499b4130591e9b8cf2adf
	float avg = Float.parseFloat(request.getParameter("avg"));
	// out.print(avg);
	int size = Integer.parseInt(request.getParameter("size"));
	// out.print(size);
	float score = co.getScore();
	// out.print(score);
	avg = (avg * size + score) / (size + 1);
	// out.print(avg);
	
<<<<<<< HEAD
=======
<<<<<<< HEAD
=======
=======
<<<<<<< HEAD
	float avg = Float.parseFloat(request.getParameter("avg"));
	 out.print(avg);
>>>>>>> d311b44d6b8af0cac4c7a401729a503d1c3a66ed
>>>>>>> f34125b482ab24be1ad5cd5c862fccfbecfc4195
>>>>>>> fd92efd3becf44ca9bb499b4130591e9b8cf2adf
	BookService.getInstance().update(avg, co.getISBN());
	
	pageContext.forward("selectByISBN.jsp");
%>


<<<<<<< HEAD
=======
<<<<<<< HEAD
=======
<<<<<<< HEAD
>>>>>>> f34125b482ab24be1ad5cd5c862fccfbecfc4195
>>>>>>> fd92efd3becf44ca9bb499b4130591e9b8cf2adf
<%-- 11111 ${ISBN} <br/>
2222 ${co.ISBN}<br/>
333 ${co} --%>

<<<<<<< HEAD
=======
<<<<<<< HEAD
=======
=======
=======
	pageContext.forward("selectByISBN.jsp");
%>
>>>>>>> da8d9c4cdaab8157e15e3ad7fcd41f927824dbf0
<%-- 11111 ${ISBN} <br/>
2222 ${co.ISBN}<br/>
333 ${co} --%>
>>>>>>> d311b44d6b8af0cac4c7a401729a503d1c3a66ed
>>>>>>> f34125b482ab24be1ad5cd5c862fccfbecfc4195
>>>>>>> fd92efd3becf44ca9bb499b4130591e9b8cf2adf
</body>
</html>




