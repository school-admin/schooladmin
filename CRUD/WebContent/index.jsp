<!DOCTYPE html>  
<html>  
<head>  
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">  
<title>JSP CRUD Example</title>  
</head>  
<body>  
<script>  
var request=new XMLHttpRequest();  
function searchInfo(){  
var name=document.vinform.name.value;
var url="searchuser.jsp?val="+name;  
  
try{  
request.onreadystatechange=function(){  
if(request.readyState==4){  
var val=request.responseText;  
document.getElementById('mylocation').innerHTML=val;
}  
}//end of function  
request.open("GET",url,true);  
request.send();  
}catch(e){alert("Unable to connect to server");}  
}  
</script>     
 
<form name="vinform">  
Search Users by Name:<input type="text" name="name" onkeyup="searchInfo()">  
</form>  
<br></br>
 
<span id="mylocation"></span>  
 
 
<a href="adduserform.jsp">Add User</a> 
<br> 
<a href="viewuser.jsp">View Users</a>  
  
</body>  
</html>  