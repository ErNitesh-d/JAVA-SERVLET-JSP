<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>LOgin</title>
  <style>
     .abc {
            
            background: lightgreen;
           /* position: absolute;*/
            top: 2in;
            height: 200px; /* Corrected typo in 'height' */
            width: 300px;
            left: 5in;
            border-style: solid;
        }
         
 
    </style>
</head>
<body>
<div class="abc" id="f1">
    <br>
    <form method="POST" action="Program9">
        <table>
            <tr>
                <td>User Name :</td>
                <td><input type="text" name="txtUsr"></td>
            </tr>
            <tr>
                <td>Password :</td>
                <td><input type="password" name="txtPwd"></td>
            </tr>
            <tr>
                <td colspan="2" align="center">
                    <input type="submit" value="Login">
                    <input type="reset" value="Reset">
                </td>
            </tr>
        </table>
    </form>
</div>
</body>
</html>
