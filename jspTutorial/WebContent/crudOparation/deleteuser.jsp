<%@page import="beans.UserDao"%>  
<jsp:useBean id="u" class="beans.User"></jsp:useBean>  
<jsp:setProperty property="*" name="u"/>  
<%  
UserDao.delete(u);  
response.sendRedirect("viewusers.jsp");  
%>  