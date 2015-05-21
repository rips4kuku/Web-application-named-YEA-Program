
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
 String slname = request.getParameter("slname");
 String sfname = request.getParameter("sfname");
 String suserid = request.getParameter("suserid");
 String sdeptno = request.getParameter("sdepartno");
 String rlname = request.getParameter("rlname");                 
 String rfname = request.getParameter("rfname");
 String ruserid = request.getParameter("ruserid");                 
 String rdeptno = request.getParameter("rdepartno");
 String remail = request.getParameter("remail");                 
 String area = request.getParameter("area");
 
String driverName = "com.mysql.jdbc.Driver";

String url = "jdbc:mysql://bigyellowcat.cs.binghamton.edu/naik";

String user = "naik";

String dbpsw = "naik3010";

                //out.println(userid);

try
{

    Class.forName(driverName);

    Connection con = DriverManager.getConnection(url, user, dbpsw);

    Statement p = con.createStatement();
    
    
     //out.println(userid);

   // String sql = "UPDATE Awards SET SLastName=?,SFirstName=?,SDepartNo=?,RLastName=?,RFirstName=?,RUserID=?,RDepartNo=?,REmail=?,Tarea=? WHERE SUserId=?";
    String sql="UPDATE Awards" + " SET SLastName = '"+slname+"',SFirstName = '"+sfname+"',SDepartNo = '"+sdeptno+"',RLastName = '"+rlname+"',RFirstName = '"+rfname+"',RUserid = '"+ruserid+"',RDepartNo = '"+rdeptno+"',REmail = '"+remail+"',Tarea = '"+area+"' " + " WHERE SUserId = '"+suserid+"'";
    
    //PreparedStatement p = con.prepareStatement(sql);
   
        p.executeUpdate(sql);

    
    out.println("<script>");
    out.println("alert('Record is succesfully Updated')");
    out.println("window.location.href = 'update.jsp'");
    out.println("</script>"); 
    
     //stmt.close(); 
     p.close();
     con.close();
}

catch(SQLException sqe)

{

out.println(sqe);

} 

%>
</body>
</html> 
