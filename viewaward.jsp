<%-- 
    Document   : viewaward
    Created on : May 10, 2014, 10:11:31 PM
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
         <% 
                 String lname = request.getParameter("lname");                 
                 String fname = request.getParameter("fname");                 
                 String userid = request.getParameter("userid");
                 String deptno = request.getParameter("deptno");                

    %>
        <b>See the awards details:</b>
       <ul type = "square">        
        
        <li><a href = "./submittedawards.jsp?lname=<%=lname%>&fname=<%=fname%>&userid='<%=userid%>'&deptno=<%=deptno%>">Submitted awards</a>
        </li><br>
        <li><a href = "./receivedawards.jsp?lname=<%=lname%>&fname=<%=fname%>&userid='<%=userid%>'&deptno=<%=deptno%>">Received awards</a>
        </li><br>
        </ul><br>
    </body>
</html>
