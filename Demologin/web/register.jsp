<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>
        <title>Register here</title>
    </head>
    <body>
        <br>
    <center><h1>Register</h1></center>
    <br>
    <form action="Register" method="POST">
        <table align="center">
            <tr>
                <th>Student Name : </th>
                <td><input type="text" id="name" name="uname" pattern="[A-Za-z. ]+" title="Enter a valid name" placeholder="Abc Xyz" style="width: 300px;"></td>
            </tr>
            <tr><td><br></td></tr>
            <tr>
                <th>Register Number : </th>
                <td><input type="text" id="regno" name="regno" pattern="[0-9]{1,12}" title="Register Number should be only in digits" placeholder="Enter your register number" style="width: 300px;"></td>
            </tr>
            <tr><td><br></td></tr>
            <tr>
                <th>Gender : </th>
                <td><input type="radio" name="gender" value="M">&nbsp;Male &nbsp;&nbsp;
                    <input type="radio" name="gender" value="F">&nbsp;Female</td>
            </tr>
            <tr><td><br></td></tr>
            <tr>
                <th>CGPA : </th>
                <td><input type="number" id="cgpa" step="0.01" name="cgpa" placeholder="Enter your CGPA" style="width: 300px;"></td>
            </tr>
            <tr><td><br></td></tr>
            <tr>
                <th>Password : </th>
                <td><input type="password" id="pass" name="passwd" pattern=".{6,}" title="Password must be atleast 6 characters long" placeholder="Enter your password" style="width: 300px;"></td>
            </tr>
            <tr><td><br></td></tr>
            <tr>
                <th>Confirm Password : </th>
                <td><input type="password" id="cpass" name="cpasswd" pattern=".{6,}" title="Password must be atleast 6 characters long" placeholder="Type your password again" style="width: 300px;"></td>
            </tr>
            <tr><td><br></td></tr>
            <tr>
                <th>Phone Number : </th>
                <td><input type="text" id="phno" name="phno" pattern="[0-9]{10}" title="Phone number should be in 10 digits" placeholder="10 digit phone number" style="width: 300px;"></td>
            </tr>
            <tr><td><br></td></tr>
            <tr>
                <th>Department : </th>
                <td>
                    <select  name="department" style="width: 300px;">
                        <option value="IT">Information Technology</option>
                        <option value="CSE">Computer Science</option>
                        <option value="ECE">Electronics and Communication</option>
                        <option value="EEE">Electrical and Electronics</option>
                        <option value="MECH">Mechanical</option>
                    </select>
                </td>
            </tr>
            <tr><td><br></td></tr>
            <tr>
                <th>Year : </th>
                <td><select name="year" style="width: 300px;">
                        <option value="first">First</option>
                        <option value="second">Second</option>
                        <option value="third">Third</option>
                        <option value="fourth">Fourth</option>
                    </select></td>
            </tr>
            <tr><td><br></td></tr>
            <tr>
                <td colspan="2" align="center"><input id="register" type="submit" value="Register" class="btn btn-primary"></td>
            </tr>
            <tr><td></td></tr>
            <tr><td><p style="position: relative; color:red; left: 50%" id="para"></p></td></tr>
        </table>
    </form>
</body>
</html>