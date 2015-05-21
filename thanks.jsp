<%-- 
    Document   : index
    Created on : May 8, 2014, 9:28:03 PM
    Author     : Ripal
--%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Logout</title>
    
    </head>
    <body bgcolor="#EEEEEE">    
     <%
     String lname = request.getParameter("lname");                 
     String fname = request.getParameter("fname");                 
     String userid = request.getParameter("userid");
     String deptno = request.getParameter("deptno");
//     out.println(lname);
//     out.println(userid);
//     out.println(deptno);
//     out.println(fname);
%>
    
<p align ="center"><b>Thank you for Submitting an Award!!</b></p>
<p align ="center">Click here to <a href = "./searchemployee?lname=<%=lname%>&fname=<%=fname%>&userid=<%=userid%>&deptno=<%=deptno%>">submit more awards</a>
 
</body>

</html>
