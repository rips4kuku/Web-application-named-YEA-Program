
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
 String suserid = request.getParameter("suserid");
 String sdeptno = request.getParameter("sdepartno");
 String ruserid = request.getParameter("ruserid");                 
 String rdeptno = request.getParameter("rdepartno");
// out.println(suserid);
// out.println(sdeptno);                
// out.println(ruserid);
// out.println(rdeptno);

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

    String sql ="DELETE FROM Awards"+" WHERE SUserID='"+ suserid +"' and RUserId='"+ ruserid +"' and SDepartNo='"+ sdeptno +"' and RDepartNo="+ rdeptno;

    stmt.executeUpdate(sql);;
    
    out.println("<script>");
    out.println("alert('Record is succesfully deleted')");
    out.println("window.location.href = 'delete.jsp'");
    out.println("</script>"); 
    
     stmt.close(); 

     con.close();
}

catch(SQLException sqe)

{

out.println(sqe);

} 

%>
</body>
</html> 
