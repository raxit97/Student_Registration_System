<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>
        <title>Login</title>
    </head>
    <body><br><br><br><br>
    <center><h1>Login</h1></center>
    <br><br>
        <form action="Login" method="POST">
            <table align="center">
                <tr>
                    <th align="right">User Name or<br/> Register Number&nbsp;&nbsp;</th>
                    <td><input type="text" name="uname" style="width: 250px;" placeholder="Enter name or register number"></td>
                </tr>
                <tr><td><br></td></tr>
                <tr>
                    <th align="right" text-align="center" >Password </th>
                    <td><input type="password" name="passwd" style="width: 250px;" placeholder="Enter your password"></td>
                </tr>
                <tr><td><br></td></tr>
                <tr>
                    <td align="right"><a href="register.jsp" align="center" class="btn btn-primary">Register</a></td>
                    <td align="center"><input type="submit" align="center" value="Login" class="btn btn-primary"></td>
                </tr>
            </table>
        </form>
    </body>
</html>
