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
     <script>
    var myVar=setInterval(function(){myTimer()},1000);

    function myTimer()
    {
    var d=new Date();
    var t=d.toLocaleTimeString();
    document.getElementById("demo").innerHTML=t;
    }
    </script>
    </head>
    <body bgcolor="#FFA500">     
    <form method="post" action="login.jsp">
    <div id="demo"align ="center" style="margin-bottom:0"></div>
    <div id="header" style="background-color:#FFA500;">
    <h1 align ="center" style="margin-bottom:0;">YEA SYSTEM</h1></div>
    <hr>
    <br>
    <br>
    <br>
    <br>
    <br>

<% session.invalidate(); %>

<p align ="center"><b>You have been successfully logout!!</b></p>
<p align ="center">Click here to <a href="index.jsp">Login</a>

</body>

</html>
