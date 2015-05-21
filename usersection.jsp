<%-- 
    Document   : adminsection
    Created on : May 8, 2014, 3:01:44 PM
    Author     : Ripal
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <script>
    var myVar=setInterval(function(){myTimer()},1000);

    function myTimer()
    {
    var d=new Date();
    var t=d.toLocaleTimeString();
    document.getElementById("demo").innerHTML=t;
    }
    </script>
<body bgcolor ="#FFA500">
     <% 
                 String lname = request.getParameter("lname");                 
                 String fname = request.getParameter("fname");                 
                 String userid = request.getParameter("userid");
                 String deptno = request.getParameter("deptno");
    %>
<div id="container">
<div id="demo"align ="center" style="margin-bottom:0"></div>
<div id="header" style="background-color:#FFA500;">
<h1 align ="center" style="margin-bottom:0;">YEA SYSTEM</h1></div>
<hr>
<div id="menu" style="background-color:#FFD700;height:540px;width:225px;float:left;">
<b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Menu</b><br>
<ul type = "square">
        <li><a href = "./vpg.jsp" target ="content">View Program Guidelines</a>
        </li><br>
        <li><a href = "./searchemployee?lname=<%=lname%>&fname=<%=fname%>&userid=<%=userid%>&deptno=<%=deptno%>" target ="content">Submit Award</a>
        </li><br>
        <li><a href = "./viewaward.jsp?userid=<%=userid%>" target ="content">View awards given and received</a>
        </li><br> 
         <li><a href = "./reports.jsp?lname=<%=lname%>&fname=<%=fname%>&userid=<%=userid%>&deptno=<%=deptno%>" target ="content" >Reports </a>
        </li><br>
        <li><a href = "./logout.jsp">Logout</a>
        </li><br>
        </ul><br>
</div>
<div id="content" style="background-color:#EEEEEE;height:540px;width:1097px;float:left;">
<iframe name="content" style="background-color:#EEEEEE;height:536px;width:1097px;"></iframe></div>
</iframe></div>

<div id="footer" style="background-color:purple;clear:both;text-align:center;">
Ripal-Naik @yeasystem.com</div>


</div>
 
</body>
</html>

