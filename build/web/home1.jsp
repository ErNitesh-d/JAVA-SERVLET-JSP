<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <title>HOME</title>
    <style>
        .abc {
            background: lightgreen;
           /* position: absolute;*/
            top: 2in;
            height: 300px;
            width: 400px;
            left: 5in;
            border-style: solid;
            padding: 10px; /* Added padding for better spacing */
        }
       
    </style>
</head>
<body>
    <div class="abc" id="f1">
        <h1><font color="black">Welcome <%= session.getAttribute("sFName") %> ...!</font></h1>
        <table border="5" cellpadding="5">
            <tr>
                <td>Name :</td>
                <td>
                   <h3> <%= session.getAttribute("sFName") %> &nbsp;
                    <%= session.getAttribute("sMName") %> &nbsp;
                    <%= session.getAttribute("sLName") %></h3> From Dept of MCA 
                </td>
            </tr>
            <tr>
                <td>Date of Birth :</td>
                <td><%= session.getAttribute("sDOB") %></td>
            </tr>
            <tr>
                <td>Address :</td>
                <td><%= session.getAttribute("sAddress") %></td>
            </tr>
            
            
        </table>
        <% session.invalidate(); %>

        <div style="text-align: center;">
            <a href="Prog9.jsp">Logout</a>
            <br>
        </div>

        <br>
    </div>
</body>
</html>
