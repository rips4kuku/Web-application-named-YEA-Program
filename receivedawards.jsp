<%-- 
    Document   : submittedawards
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
<script>
function validate()
{
  if(document.getElementById('radio').checked) {
      
      return true;
  }  
  else
  {
   alert("please click the radio button\n");   
   return false;
  }

}
</script>
<body>
<b>Awards Received after manager's approval:</b>
<br>
<table border ="1">
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
    <td><b>Decision</b></td>
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

    Statement ps = con.createStatement();
    
     String lname = request.getParameter("lname");                 
     String fname = request.getParameter("fname");                 
     String userid = request.getParameter("userid");
     String deptno = request.getParameter("deptno");
//     out.println(userid);
//      out.println(lname);
//     out.println(userid);
//     out.println(deptno);
//     out.println(fname);
    
    //working: String sql="select RLastName, RFirstName, RUserId, RDepartNo, REmail, Tarea from Awards where SUserId='kvaughan'";
     
     String sql="select SLastName, SFirstName, SUserId, SDepartNo, RLastName, RFirstName, RUserId, RDepartNo, REmail, Tarea from Awards where RUserId="+userid;//not working
   // PreparedStatement ps = con.prepareStatement("select RLastName, RFirstName, RUserId, RDepartNo, REmail, Tarea from Awards where SUserId=?");
   // ps.setString(1,uid);
     
    ResultSet rs = ps.executeQuery(sql);
    
        while(rs.next())
        { 
            String SLastName = rs.getString("sLastName");
            String SFirstName = rs.getString("SFirstName");
            String SUserId = rs.getString("SUserId");
            String SDepartNo = rs.getString("SDepartNo");            
            String RLastName = rs.getString("RLastName");
            String RFirstName = rs.getString("RFirstName");
            String RUserId = rs.getString("RUserId");
            String RDepartNo = rs.getString("RDepartNo");
            String REmail = rs.getString("REmail");
            String Tarea = rs.getString("Tarea");


            //out.println(RLastName);
         %>
            <tr>    
            <td><%=SLastName %></td>
            <td><%=SFirstName %></td>
            <td><%=SUserId %></td>
            <td><%=SDepartNo %></td>
            <td><%=RLastName %></td>
            <td><%=RFirstName %></td>
            <td><%=RUserId %></td>
            <td><%=RDepartNo %></td>
            <td><%=REmail %></td>
            <td><%=Tarea %></td>   
            <td>approved</td>            
            </tr>
        <%
        }

     rs.close();

     ps.close(); 

     con.close();
}

catch(SQLException sqe)

{

out.println(sqe);

} 


%>
</table>
<br>               
</body>
</html> 