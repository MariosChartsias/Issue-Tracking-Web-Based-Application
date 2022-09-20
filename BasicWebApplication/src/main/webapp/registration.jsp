

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no" />
<meta name="description" content="" />
<meta name="author" content="" />
<link rel="stylesheet" href="css/style2.css">
<title>Sign up</title>
</head>
<body>
<input type='hidden' id='status' value='<%=request.getAttribute("status")%>'>
	<section class="regbox"> 
		<h1 class="header">Sign up</h1>
		<form method="post" action="register">
		<table >
		  <tr>
		    <td><input type='textbox' name='name' placeholder='username' required></td>
		  </tr>
		  <tr>
		    <td><input type='password' name='pass' placeholder='password' required></td>
		  </tr>
		  <tr>
		    <td><input type='password' placeholder='re-type password' required></td>
		  </tr>
		  <tr>
		    <td><input type='email' name='email'placeholder='email' required></td>
		  </tr>
		  <tr>
		  	<td><input type=submit name='submit' value='submit' required></td>
		  </tr>
		  <tr>
		  <td><br></td>
		  </tr>
		  <tr>
		  	<td><a href="login.jsp">I'am already member</a></td>
		  </tr>
		</table>
		
		</form>
</section>
<script type="text/javascript">
var status=document.getElementById("status").value;
if(status="success"){
	alert("success registration!");
}else{
	alert("Sorry, registration was not completed");
}else{
	
}
</script>
</body>
</html>
