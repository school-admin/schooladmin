<%@ page import="java.sql.*" %> 
<%@page import="com.servlet.dao.UserDao,com.servlet.bean.*,java.util.*"%>  
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>  
 

<% 


String name=request.getParameter("val");  
if(name==null||name.trim().equals("")){  
out.print("<p>Please enter name!</p>");  
}else{  
try{  
Class.forName("org.h2.Driver");  
Connection con=DriverManager.getConnection("jdbc:h2:~/test","sa","");  
PreparedStatement ps=con.prepareStatement("select * from register where name like '"+name+"%'");  
ResultSet rs=ps.executeQuery();  
  
if(!rs.isBeforeFirst()) {      
 out.println("<p>No Record Found!</p>");   
}else{  
out.print("<table border='1' cellpadding='2' width='100%'>");  
out.print("<tr><th>Id</th><th>Name</th><th>Password</th><th>Email</th><th>Gender</th><th>Country</th></tr>");  
while(rs.next()){
	

out.print("<tr><td>"+rs.getInt(1)+"</td><td>"+rs.getString(2)+"</td><td>"+rs.getString(3)+"</td><td>"+rs.getString(4)+"</td><td>"+rs.getString(5)+"</td><td>"+rs.getString(6)+"</td></tr>");    

}  
out.print("</table>");  
}//end of else for rs.isBeforeFirst  
con.close();  
}catch(Exception e){out.print(e);}  
}//end of else  
%>  