<%-- 
    Document   : adminlink
    Created on : May 13, 2014, 12:38:58 PM
    Author     : Ripal
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
         <body>
         <% 
                 String lname = request.getParameter("lname");                 
                 String fname = request.getParameter("fname");                 
                 String userid = request.getParameter("userid");
                 String deptno = request.getParameter("deptno");                

    %>
        <b>Choose the operation:</b>
       <ul type = "square">        
        
        <li><a href = "./delete.jsp?lname=<%=lname%>&fname=<%=fname%>&userid='<%=userid%>'&deptno=<%=deptno%>">Delete Entry</a>
        </li><br>
        <li><a href = "./update.jsp?lname=<%=lname%>&fname=<%=fname%>&userid='<%=userid%>'&deptno=<%=deptno%>">Update Entry</a>
        </li><br>
        </ul><br>
    </body>
    </body>
</html>
