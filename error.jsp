<%-- 
    Document   : error
    Created on : May 8, 2014, 9:58:06 PM
    Author     : Ripal
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
     
<title>Login Error</title>

</head>

<body>

<center><p style="color:red">Sorry, your record is not available.</p></center>

<%

getServletContext().getRequestDispatcher("/index.jsp").include(request, 
response);

%>

</body>

</html>
