<%@page import="com.servlet.dao.UserDao"%>  
<jsp:useBean id="u" class="com.servlet.bean.User"></jsp:useBean>  
<jsp:setProperty property="*" name="u"/>  
<%  
int i=UserDao.update(u);  
response.sendRedirect("viewuser.jsp");  
%>  