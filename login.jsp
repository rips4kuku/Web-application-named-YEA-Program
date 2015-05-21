<%-- 
    Document   : login
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

<%! String userdbName;

String userdbPsw;

String dbUsertype;

String dbtype;

String dbManagertype;

String userdbLname;

String userdbFname;

String userdbDeptno;


%>

<%

Connection con= null;

PreparedStatement ps = null;

ResultSet rs = null;



String driverName = "com.mysql.jdbc.Driver";

String url = "jdbc:mysql://bigyellowcat.cs.binghamton.edu/naik";

String user = "naik";

String dbpsw = "naik3010";



String sql = "select * from login where userid=? and password=? and usertype=?";



String userid = request.getParameter("userid");

String password = request.getParameter("password");

String usertype = request.getParameter("usertype");




if((!(userid==null || userid.equals("")) && !(password==null || password.equals(""))) && !usertype.equals("select"))

{

     try
     {

        Class.forName(driverName);

        con = DriverManager.getConnection(url, user, dbpsw);

        ps = con.prepareStatement(sql);

        ps.setString(1, userid);

        ps.setString(2, password);

        ps.setString(3, usertype);

        rs = ps.executeQuery();

        if(rs.next())

        { 

        userdbName = rs.getString("userid");

        userdbPsw = rs.getString("password");

        userdbLname = rs.getString("lname");

        userdbFname = rs.getString("fname");

        userdbDeptno = rs.getString("deptno");


        dbUsertype = "admin";

        dbtype = "employee";

        dbManagertype = "manager";

            if(userid.equals(userdbName) && password.equals(userdbPsw) && usertype.equals(dbUsertype))

            {

            session.setAttribute("userid",userdbName);

            session.setAttribute("usertype", dbUsertype); 

            response.sendRedirect("adminsection.jsp?lname="+userdbLname+"&fname="+userdbFname+"&userid="+userdbName+"&deptno="+userdbDeptno); 

            } 


            else if(userid.equals(userdbName) && password.equals(userdbPsw) && usertype.equals(dbtype))

            {

            session.setAttribute("userid",userdbName);

            session.setAttribute("usertype",dbtype); 

            response.sendRedirect("usersection.jsp?lname="+userdbLname+"&fname="+userdbFname+"&userid="+userdbName+"&deptno="+userdbDeptno); 

            } 

            else if(userid.equals(userdbName) && password.equals(userdbPsw) && usertype.equals(dbManagertype))

            {

            session.setAttribute("userid",userdbName);

            session.setAttribute("usertype",dbManagertype); 

            response.sendRedirect("managersection.jsp?lname="+userdbLname+"&fname="+userdbFname+"&userid="+userdbName+"&deptno="+userdbDeptno); 

            } 

    }

    else

    response.sendRedirect("error.jsp");

    rs.close();

    ps.close(); 

}

catch(SQLException sqe)

{

out.println(sqe);

} 

}

else

{

%>

<center><p style="color:red">Error In Login</p></center>

<% 

getServletContext().getRequestDispatcher("/index.jsp").include(request,response);

}

%>

</body>

</html>
