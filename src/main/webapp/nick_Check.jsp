<%@ page import="com.galphi.account.AccountService" %>
<%@ page import="com.galphi.account.AccountVO" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
    request.setCharacterEncoding("UTF-8");
%>

<jsp:useBean id="ao" class="com.galphi.account.AccountVO">
    <jsp:setProperty property="nickname" name="ao"/>
</jsp:useBean>


<%
    int nick_cnt = AccountService.getInstance().nickCheck(ao.getNickname());
    if (nick_cnt > 0)
    {
        response.getWriter().println("<script>" +
                "alert('이미 사용중인 닉네임입니다.'); " +
                "history.go(-1)" +
                "</script>");
    }
    else
    {
        response.getWriter().println("<script>" +
                "alert('사용 가능한 닉네임입니다.'); " +
                "history.go(-1);" +
                "</script>");
    }
%>
</body>
</html>
