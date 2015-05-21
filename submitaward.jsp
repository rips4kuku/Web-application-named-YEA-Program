<%-- 
    Document   : submitaward
    Created on : May 8, 2014, 9:43:04 PM
    Author     : Ripal
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.SQLException"%>
<html>

<head>

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<title>Login</title>

</head>

<body>

<%

Connection con= null;

PreparedStatement ps = null;


String driverName = "com.mysql.jdbc.Driver";

String url = "jdbc:mysql://bigyellowcat.cs.binghamton.edu/naik";

String user = "naik";

String dbpsw = "naik3010";

// String lname = request.getParameter("lname");                 
// String fname = request.getParameter("fname");                 
// String uid = request.getParameter("userid");
// String deptno = request.getParameter("deptno");
// out.println(lname);
// out.println(uid);
// out.println(deptno);
// out.println(fname);


String sql = "INSERT INTO Awards" + "(SLastName, SFirstName, SUserId, SDepartNo, RLastName, RFirstName, RUserId, RDepartNo, REmail, Tarea) "
 + "VALUES" + "(?,?,?,?,?,?,?,?,?,?)"; 

String SLastName = request.getParameter("slname");

//out.println(SLastName);

String SFirstName = request.getParameter("sfname");

//out.println(SFirstName);

String SUserId = request.getParameter("suserid");

String SDepartNo = request.getParameter("sdepartno");

String RLastName = request.getParameter("rlname");

String RFirstName = request.getParameter("rfname");

String RUserId = request.getParameter("ruserid");

String RDepartNo = request.getParameter("rdepartno");

String REmail = request.getParameter("remail");

String Tarea = request.getParameter("area");

if(
    
     (
        (
           ( 
                (
                   (
                      (
                         (
                            (
                                  !(SLastName.equals(null) || SLastName.equals("")) && !(SFirstName.equals(null) || SFirstName.equals(""))
                            ) 
                                  && !(SUserId.equals(null)|| SUserId.equals(""))
                         )    
                                  && !(SDepartNo.equals(null)|| SDepartNo.equals(""))
                      )        
                                  && !(RLastName.equals(null)|| RLastName.equals(""))
                   )        
                                  && !(RFirstName.equals(null)|| RFirstName.equals(""))
                )              
                                  && !(RUserId.equals(null)|| RUserId.equals(""))
            )
                                 && !(RDepartNo.equals(null)|| RDepartNo.equals(""))                   
         )
                              && !(REmail.equals(null)|| REmail.equals("")) 
      ) 
                              && !(Tarea.equals(null)|| Tarea.equals("")) 
   )  
                                                  
{

    try
    {

        Class.forName(driverName);

        con = DriverManager.getConnection(url, user, dbpsw);

        ps = con.prepareStatement(sql);

        
        ps.setString(1, SLastName);
        
        ps.setString(2, SFirstName);

        ps.setString(3, SUserId);

        ps.setString(4, SDepartNo);
        
        ps.setString(5, RLastName);
        
        ps.setString(6, RFirstName);

        ps.setString(7, RUserId);

        ps.setString(8, RDepartNo);

        ps.setString(9, REmail);
        
        ps.setString(10, Tarea);

        ps.executeUpdate();
        
        //out.println("<script>");
        //out.println("alert('Award is succesfully submitted')");
         //out.println("window.location.href = 'thanks.jsp'");
        response.sendRedirect("thanks.jsp?lname="+SLastName+"&fname="+SFirstName+"&userid="+SUserId+"&deptno="+SDepartNo);
       //out.println("</script>");
      
        ps.close(); 
    }

    
    catch(SQLException sqe)

    {

    out.println(sqe);

    } 

}

else

{
 out.println("<script>");
        out.println("window.alert('Award is not submmited!!Try again!!')");
        out.println("window.location.href = './submitaward'");
        out.println("</script>");
        }

%>

</body>

</html>
