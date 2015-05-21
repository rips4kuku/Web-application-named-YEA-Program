<%-- 
    Document   : index
    Created on : May 8, 2014, 9:28:03 PM
    Author     : Ripal
--%>

<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.SQLException"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login</title>
     <script>
    var myVar=setInterval(function(){myTimer()},1000);

    function myTimer()
    {
    var d=new Date();
    var t=d.toLocaleTimeString();
    document.getElementById("demo").innerHTML=t;
    }
    
function validate()
{
	
	var userid = document.getElementById("userid");
	var password = document.getElementById("password");
	
	if(userid.value=="")
	{
		//Check for empty field
		userid.focus();
		alert("Please Enter Username\n");
		return false;
        }
	if(password.value=="")
	{
		//Check for empty field
		password.focus();
		alert("Please Enter Password\n");
		return false;
	}
	
	return true;
}
    </script>
    </head>
    <body bgcolor="#FFA500">
       
 <form method="post" action="login.jsp" onsubmit="return validate()">
<div id="demo"align ="center" style="margin-bottom:0"></div>
<div id="header" style="background-color:#FFA500;">
<h1 align ="center" style="margin-bottom:0;">YEA SYSTEM</h1></div>
<hr>
<br>
<br>
<br>
<br>
<br>
<table border="0" align="center">
<tbody bgcolor ="#EEEEEE">
<tr>

<td>Enter Your UserId :</td>

<td><input type="text" id ="userid" name="userid" autofocus/></td>

</tr>

<tr>

<td>Enter Your Password :</td>

<td><input type="password" id="password" name="password"/></td>

</tr>

<tr>

<td>Select UserType :</td>

<td><select name="usertype">

<option value=" ">select</option>

<option value=employee>employee</option>

<option value=admin>admin</option>

<option value=manager>manager</option>

</select>

</td>

</tr>

<tr>
<td><input type="submit" value="Login"/><input type="reset" value="Reset"/></td>
<td><a href = "mailto:dsteflik@yeasystem.com">Forgot Passoword?</a></td>

<tbody>
</table>

</form>
</fieldset>
</body>
</html>
