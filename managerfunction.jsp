<%-- 
    Document   : managerfunction
    Created on : May 11, 2014, 12:29:33 AM
    Author     : Ripal
--%>



<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.*"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.SQLException"%>



<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
    
<%
 String lname = request.getParameter("lname");                 
 String fname = request.getParameter("fname");                
 String userid = request.getParameter("userid");
 String deptno = request.getParameter("deptno");
%>
<b>Select Award Winner:</b>
<br>
<form method="post" action="approved.jsp" onsubmit="return validate();">
<table border="1">
<tr>
    <td><b>SLast Name</b></td>
    <td><b>SFirst Name</b></td>
    <td><b>SUserId</b></td>
    <td><b>SDepartment No</b></td>
    <td><b>RLast Name</b></td>
    <td><b>RFirst Name</b></td>
    <td><b>RUserId</b></td>
    <td><b>RDepartment No</b></td>
    <td><b>REmail</b></td>
    <td><b>Award Description</b></td>
    <td><b>Select</b></td>
 <tr>
<%


String driverName = "com.mysql.jdbc.Driver";

String url = "jdbc:mysql://bigyellowcat.cs.binghamton.edu/naik";

String user = "naik";

String dbpsw = "naik3010";

                //out.println(userid);

try
{

    Class.forName(driverName);

    Connection con = DriverManager.getConnection(url, user, dbpsw);

    Statement stmt = con.createStatement();
    
    
     //out.println(userid);

    String query = "select SLastName, SFirstName, SUserId, SDepartNo, RLastName, RFirstName, RUserId, RDepartNo, REmail, Tarea from Awards where RDepartNo="+deptno;

    ResultSet rs = stmt.executeQuery(query);

        while(rs.next())

        { 
            String SLastName = rs.getString("SLastName");
            String SFirstName = rs.getString("SFirstName");
            String SUserId = rs.getString("SUserId");
            String SDepartNo = rs.getString("SDepartNo");
            
            String RLastName = rs.getString("RLastName");
            String RFirstName = rs.getString("RFirstName");
            String RUserId = rs.getString("RUserId");
            String RDepartNo = rs.getString("RDepartNo");
            String REmail = rs.getString("REmail");
            String Tarea = rs.getString("Tarea");
            out.println("<input type=\"hidden\"  name=\"slname\" value = "+SLastName+" />");
            out.println("<input type=\"hidden\"  name=\"sfname\" value = "+SLastName+" />");                  
            out.println("<input type=\"hidden\"  name=\"suserid\" value = "+SUserId+" />");                  
            out.println("<input type=\"hidden\"  name=\"sdepartno\" value = "+SDepartNo+" />");    
            out.println("<input type=\"hidden\"  name=\"rlname\" value = "+RLastName+" />");   
            out.println("<input type=\"hidden\"  name=\"rfname\" value = "+RFirstName+" />"); 
            out.println("<input type=\"hidden\"  name=\"ruserid\" value = "+RUserId+" />"); 
            out.println("<input type=\"hidden\"  name=\"rdepartno\" value = "+RDepartNo+" />");
            out.println("<input type=\"hidden\"  name=\"remail\" value = "+REmail+" />");                  
            out.println("<input type=\"hidden\"  maxlength=\"250\" name=\"area\" value = "+Tarea+" />");                  
            //out.println("<input type=\"radio\" name=\"radio\" value="+userid+">");
            //out.println(RLastName);
         %>
            <tr>
            <td name="slname" value=<%=SLastName %>><%=SLastName %></td>
            <td name="sfname"><%=SFirstName %></td>
            <td name="suderid"><%=SUserId %></td>
            <td name="sdepartno"><%=SDepartNo %></td>
            <td name="rlname"><%=RLastName %></td>
            <td name="rfname"><%=RFirstName %></td>
            <td name="ruserid"><%=RUserId %></td>
            <td name="rdepartno"><%=RDepartNo %></td>
            <td name="remail"><%=REmail %></td>
            <td name="area"><%=Tarea %></td>
            <td><input type="radio" name="radio" id="radio" value=""></td>
            </tr>
        <%
        }
         
     rs.close();

     stmt.close();      

     con.close();
}

catch(SQLException sqe)

{

out.println(sqe);

} 


%>
</table>
<br>
<center><input type="submit" name="Submit" value="Approve Awards"></center>
</form>
</body>
</html> 