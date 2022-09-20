<%@page    
		    import="java.sql.*" 
			import="java.time.format.DateTimeFormatter"
			import="java.time.LocalDateTime"
			

%>
<%
DateTimeFormatter dtf = DateTimeFormatter.ofPattern("yyyy/MM/dd HH:mm:ss");  
LocalDateTime now = LocalDateTime.now();
if(session.getAttribute("name")==null){
response.sendRedirect("login.jsp");}
int x=0;

Statement st;
String query=(String)session.getAttribute("orderSQL");

%> 

<%System.out.println((String)session.getAttribute("orderSQL")); 
   %>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
<meta name="description" content="" />
<meta name="author" content="" />
<link rel="stylesheet" href="css/style1.css">
<title>Issue Tracking</title>
</head>
<body>
	<section class="container"> 
		<h1 class="header">Issue Tracker App</h1><h3 class="user"><%=session.getAttribute("name")%><a href="logout"><button class="log" name="logout" onclick=>Logout</button></a></h3>
		<table class="info;">
			<tbody>
				<tr class="info">
					<th>Issue:&nbsp</th>
					<th><input type='button' value='Back' name='back' id='back' style="display:none;" onclick="back1()"></th>
					<th><input type='button' value='Add' name='add' id='add' style="visibility: visible;"></th>
					<th><input type='button' value='Edit' name='edit' id='edit' ></th>
					<th><input type='button' value='Delete' name='delete' id='delete'></th>
					<th><input type='button' value='submit' name='sumbit' id='submit' style="display:none;" onclick="check()"></th>
				</tr>
			</tbody>
		</table>
		<br>
		<form id='form' action='addissues' method='post'>
		<table class='res' width="100%" border="0" cellspacing="0" cellpadding="0">
			<tbody class=firstbody>
			  <tr class="headoftable">
			    <th><div class='titleoforder' id='titleid' name='orderid' type='submit' onclick='order(1)'>Id&nbsp;</div></th>
			    <th><div class='titleoforder' id='titletitle' name='ordertitle' type='submit' onclick='order(2)'>Title&nbsp;</div></th>
			    <th><div class='titleoforder' id='titlestatus' name='orderstatus' type='submit' onclick='order(3)'>Status&nbsp;</div></th>
			    <th><div class='titleoforder' id='titletype' name='ordetype' type='submit' onclick='order(4)'>Type&nbsp;</div></th>
			    <th><div class='titleoforder' id='titledescreption' name='orderdescription' type='submit' onclick='order(5)'>Description&nbsp;</div></th>
			    <th><div class='titleoforder' id='titleassigned' name='orderassigned' type='submit' onclick='order(6)'>Assigned to&nbsp;</div></th>
			    <th><div class='titleoforder' id='titlecreation' name='ordercreation' type='submit' onclick='order(7)'>Creation Date&nbsp;</div></th>
			    <th><div class='titleoforder' id='titleusermaker' name='orderuser' type='submit' onclick='order(8)'>User-maker&nbsp;</div></th>
			    <th><div class='titleoforder' id='titlelastuser' name='ordelastuser' type='submit' onclick='order(9)'>Last user-editor&nbsp;</div></th>
			    <th><div class='titleoforder' id='titleprocessed' name='orderprocessed' type='submit' onclick='order(10)'>Processed date&nbsp;</div></th>
			  </tr>
			  </tbody>
		   <tbody class="secondtbody">
			   <tr>
				   <td><input class="text" id="new1" type='text' name='id' readonly></td>
				   <td><input class="text" id="new2" type='text' name='title' readonly></td>
				   <td><select class="text" id="new3" type='text' name='status' style="max-width:4cm; height:21px; width: 150px;" disabled><option></option><option>New</option><option>In progress</option><option>Resolved</option><option>Confirmed</option><option>Reopen</option><option>Needs feedback</option></select></td>
				   <td><select class="text" id="new4" type='text' name='type' style="max-width:4cm;height:21px; width: 150px;" disabled><option></option><option>Defect</option><option>Bug</option><option>Feature</option><option>Defect</option>Bug</select></td>
				   <td><input class="text" id="new5" type='text' name='description' readonly></td>
				   <td><input class="text" id="new6" type='text' name='assign' readonly></td>
				   <td><input class="text" id="new7" type='text' name='date' readonly></td>
				   <td><input class="text" id="new8" type='text' name='usermaker' readonly></td>
				   <td><input class="text" id="new9" type='text' name='edituser' readonly ></td>
				   <td><input class="text" id="new10" type='text' name='editdate' readonly ></td>
			   </tr>
		   </tbody>
		  <input type='submit' value='submit2' name='sumbit2' id='submit2' style="display:none;">
		  <tbody class="secondtbody" id='results'>
		  <input type='text' hidden name='selectholder' id='selectorder'>
		  
<% 

  try{	 
	  	 	  	 
	  	 
		 Class.forName("com.mysql.cj.jdbc.Driver");
		 Connection con= DriverManager.getConnection("jdbc:mysql://localhost:3306/simpledb", "root", "123456"); 
		 st = con.createStatement();
		 ResultSet rs = st.executeQuery(query);
		  while(rs.next()){
		  		x++;
		  		int y=1;				
		  %>
		  <tr id='tr<%=x%>' onclick="copy('<%=x%>')">
		    <td id='res<%=x%><%=y++%>'><%=rs.getInt(1)%></td>
		    <td id='res<%=x%><%=y++%>'><b><%=rs.getString(2)%></b></td>
		    <td id='res<%=x%><%=y++%>'><%=rs.getString(3)%></td>
		    <td id='res<%=x%><%=y++%>'><%=rs.getString(4)%></td>
		    <td id='res<%=x%><%=y++%>'><%=rs.getString(5)%></td>
		    <td id='res<%=x%><%=y++%>'><%=rs.getString(6)%></td>
		    <td id='res<%=x%><%=y++%>'><%=rs.getDate(7)%></td>
		    <td id='res<%=x%><%=y++%>'><%=rs.getString(8)%></td>
		    <td id='res<%=x%><%=y++%>'><%=rs.getString(10)%></td>
		    <td id='res<%=x%><%=y++%>'><%=rs.getTimestamp(11)%></td>
		   </tr>
		    <%
			}
		    %>
			<input class='text' id='row' type='text' name='row' hidden value='<%=x%>'>
			<%
  			}
			catch (Exception e) {
			e.printStackTrace();
			}
			%>
		 <input class='text' id='datetime' type='text' name='datetime' hidden value='<%= dtf.format(now) %>'>
		 <input class='text' id='usermake' type='text' name='usersession' hidden value='<%=session.getAttribute("name")%>'>
		 <script src="js/js1.js"></script>
		 <script src="http://code.jquery.com/jquery-2.0.0.min.js" async></script>
		 </tbody>
		</table>
		</form>
		
		
</section>

</body>
</html>
