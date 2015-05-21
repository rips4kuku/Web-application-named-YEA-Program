
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.*"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.SQLException"%>



<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<script>
function validatation()
{
	
	var suid = document.getElementById("suserid");
	var sdeptno = document.getElementById("sdepartno");
        var ruid = document.getElementById("ruserid");
        var rdeptno = document.getElementById("rdepartno");
	
	if(suid.value=="")
	{
		//Check for empty field
		suid.focus();
		alert("Please Enter SUserId\n");
		return false;
        }
	if(sdeptno.value=="")
	{
		//Check for empty field
		sdeptno.focus();
		alert("Please Enter SDeptartNo\n");
		return false;
	}
	if(ruid.value=="")
	{
		//Check for empty field
		ruid.focus();
		alert("Please Enter RUserId\n");
		return false;
        }
	if(rdeptno.value=="")
	{
		//Check for empty field
		rdeptno.focus();
		alert("Please Enter RDeptartNo\n");
		return false;
	}
	return true;
}
</script>
</head>

<body>  
<%
 String lname = request.getParameter("lname");                 
 String fname = request.getParameter("fname");                
 String userid = request.getParameter("userid");
 String deptno = request.getParameter("deptno");
%>
<b>Update Entry:</b>
<br>
<form method ="post" action="updateentry.jsp" onsubmit="return validation();">

<table border="1">
<tr>
    <td>SLast Name</td>
    <td><input type="text" name="slname" id="slname"></td>   
</tr>
<tr>
    <td>SFirst Name</td>
    <td><input type="text" name="sfname" id="sfname"></td>   
</tr>
<tr>    
    <td>SUserId</td>
    <td><input type="text" name="suserid" id="suserid"></td>   
</tr>
<tr>
    <td>SDepartment No</td> 
    <td><input type="text" name="sdepartno" id="sdepartno"></td>   
</tr>    
<tr>
    <td>RLast Name</td>
    <td><input type="text" name="rlname" id="rlname"></td>   
</tr>
<tr>
    <td>RFirst Name</td>
    <td><input type="text" name="rfname" id="rfname"></td>   
</tr>    
<tr>
    <td>RUserId</td>
    <td><input type="text" name="ruserid" id="ruserid"></td>   
</tr>
<tr>
    <td>RDepartment No</td>    
    <td><input type="text" name="rdepartno" id="rdepartno"></td>   
</tr>
<tr> 
    <td>REmail</td>
    <td><input type="text" name="remail" id="remail"></td>   
</tr>
<tr>
    <td>Award Description</td>
    <td><input type="area" maxlength="250" name="area" id="area"></td>  
 </tr>
<tr>
<td><input type="submit" name="Submit" value="Update"></td>
<td><input type="reset" name="reset" value="Reset"></td>
</tr>
</table>
</form>
</body>
</html> 
