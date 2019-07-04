<!DOCTYPE html>  
<html>  
<head>  
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1"> 
<link rel="stylesheet" type="text/css" href="style.css">
<title>JSP CRUD Example</title>  
</head>  
<body>  


<center><h1><b>Employee Detail</b></h1></center>  
<a href="javascript:void(0);" onclick="document.getElementById('id01').style.display='block'" style="width:auto;">Add User</a><br/><br/>  
<a href="javascript:void(0);" onclick="document.getElementById('id01').style.display='block'" style="width:auto;" >View Users</a> 
<div class="bg"></div> 


<!-- model form -->
<div id="id01" class="modal">
  
  <form class="modal-content animate" action="/jspTutorial/AdminLogin" method="post">
    <div class="imgcontainer">
      <span onclick="document.getElementById('id01').style.display='none'" class="close" title="Close Modal">&times;</span>
      <img src="img_avatar3.png" alt="Avatar" class="avatar">
    </div>

    <div class="container">
      <label for="uname"><b>Username</b></label>
      <input type="text" placeholder="Enter Username" name="uname" required>

      <label for="psw"><b>Password</b></label>
      <input type="password" placeholder="Enter Password" name="psw" required>
        
      <button type="submit">Login</button>
    </div>

    <div class="container" style="background-color:#f1f1f1">
      <button type="button" onclick="document.getElementById('id01').style.display='none'" class="cancelbtn">Cancel</button>
      </div>
      
  </form>
</div>



<script>
// Get the modal
var modal = document.getElementById('id01');

// When the user clicks anywhere outside of the modal, close it
window.onclick = function(event) {
    if (event.target == modal) {
        modal.style.display = "none";
    }
}
</script>


</body>  
</html> 