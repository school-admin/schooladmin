<!DOCTYPE html>  
<html>  
<head>  
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">  
<title>Edit Form</title>  


<script> 
function Validation()                                    
{ 
	
    var name = document.forms["RegForm"]["name"]; 
    var password = document.forms["RegForm"]["password"];
    var email = document.forms["RegForm"]["email"];    
    var sex = document.forms["RegForm"]["gender"];  
    var country =  document.forms["RegForm"]["country"];  
    if (name.value=="") {
    	document.getElementById("demo").innerHTML = "this field is required value";
    	return false;
     } 
    else
    	document.getElementById("demo").innerHTML = ""; 
    
    	if (password.value=="") {
    		document.getElementById("demo1").innerHTML = "this field is required value";
        	return false;
        } 
    	
    	else
        	document.getElementById("demo1").innerHTML = ""; 
    	  
    return true; 
}</script> 

<style>
input[type=text], select {
  width: 100%;
  padding: 12px 20px;
  margin: 8px 0;
  display: inline-block;
  border: 1px solid #ccc;
  border-radius: 4px;
  box-sizing: border-box;
}

input[type=password], select {
  width: 100%;
  padding: 12px 20px;
  margin: 8px 0;
  display: inline-block;
  border: 1px solid #ccc;
  border-radius: 4px;
  box-sizing: border-box;
}

input[type=email],a, select {
  width: 100%;
  padding: 12px 20px;
  margin: 8px 0;
  display: inline-block;
  border: 1px solid #ccc;
  border-radius: 4px;
  box-sizing: border-box;
}

input[type=submit] {
  width: 100%;
  background-color: #4CAF50;
  color: white;
  padding: 14px 20px;
  margin: 8px 0;
  border: none;
  border-radius: 4px;
  cursor: pointer;
}

input[type=submit]:hover {
  background-color: #45a049;
}

div {
  border-radius: 5px;
  background-color: #f2f2f2;
  padding: 20px;
}
a {
background-color:gray;
font-family:Time New Roman;
color:pink;

}
</style>


</head>  
<body>  
<%@page import="beans.UserDao,beans.User"%>  
  
<%  
String id=request.getParameter("id");  
User u=UserDao.getRecordById(Integer.parseInt(id));  
%>  
  
<h1>Edit Form</h1>  
<div>
  <form name="RegForm" action="edituser.jsp" onsubmit="return Validation()" method="post">
    <input type="hidden" name="id" value="<%=u.getId() %>"/>
    
    
    <label for="fname">Name</label>
    <input type="text" id="fname" name="name" value="<%=u.getName() %>">
    <p id="demo" style="color:red"></p>

    <label for="pass">Password</label>
    <input type="password" id="pass" name="password" value="<%=u.getPassword() %>">
    <p id="demo1" style="color:red"></p>
    
    <label for="mail">Email</label>
    <input type="email" id="mail" name="email" value="<%=u.getEmail() %>">

    <label for="country">Country</label>
    <select id="country" name="country">
      <option value="India">India</option>
      <option value="canada">Canada</option>
      <option value="usa">USA</option>
      <option value="australia">Australia</option>
      <option value="chine">China</option>
      <option value="england">England</option>
    </select>
    
    <label for="gender">Gender</label>
    <input type="radio" id="gender" name="gender" value="MALE">MALE
    <input type="radio" id="gender" name="gender" value="FEMALE">FEMALE
    <input type="radio" id="gender" name="gender" value="OTHER">OTHER
  
    <input type="submit" value="Edit User">
  </form>
</div>
</body>
</html>