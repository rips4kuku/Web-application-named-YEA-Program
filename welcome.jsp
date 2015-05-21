<%-- 
    Document   : welcome
    Created on : May 8, 2014, 9:56:31 PM
    Author     : Ripal
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
       

<title>Welcome</title>

</head>

<body>

<p>Welcome, <%=session.getAttribute("name")%></p>

<p><a href="logout.jsp">Logout</a>

</body>

</html>
