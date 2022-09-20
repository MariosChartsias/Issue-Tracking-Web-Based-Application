
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no" />
<meta name="description" content="" />
<meta name="author" content="" />
<link rel="stylesheet" href="css/style2.css">
<title>Sign in</title>
</head>
<body>
<input type='hidden' id='status' value='<%=request.getAttribute("status")%>'>
<input type='hidden' id='name' value='<%=request.getAttribute("name")%>'>
	<section class="regbox"> 
		<h1 class="header">Sign in</h1>
		<form method="post" action="login">
		<table >
		  <tr>
		    <td><input type='textbox' name='name' placeholder='username' required></td>
		  </tr>
		  <tr>
		    <td><input type='password' name='pass' placeholder='password' required></td>
		  </tr>
		  <tr>
		  	<td><input type=submit name='submit' value='login'></td>
		  </tr>
		  <tr>
		  <td><br></td>
		  </tr>
		  <tr>
		  	<td><a href="registration.jsp">create an account</a></td>
		  </tr>
		</table>
		
		</form>
</section>
<script type="text/javascript">
var status=document.getElementById("status").value;
if(status=="failed"){
	alert("Wrong username or password");
}
</script>
</body>
</html>
