<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>
        <title>Administrator Page</title>
        <style>
            table, td, th{
                border : 1 px solid black;
            }
            td, th{
                padding : 4px;
            }
            table{
                border-collapse: collapse;
            }
            .remove{
                border : 0px;
                padding: 0px;
            }
        </style>
    </head>
    <body>
        <h3>List of students who has registered : </h3>
        <%@ page import="java.sql.*" %>
        <form method="post" action="Delete">
            <table border="1">
                <tr><th>Name</th>
                    <th>Register No.</th>
                    <th>Gender</th>
                    <th>Department</th>
                    <th>Year</th>
                    <th>CGPA</th>
                    <th>Phone Number</th>
                </tr>
                <%
                try
                {
                    Class.forName("com.mysql.jdbc.Driver");
                    Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/sample", "root", "root");
                    Statement stmt=conn.createStatement();
                    ResultSet rs=stmt.executeQuery("select * from student");
                    while(rs.next())
                    {
                %>
                    <tr>
                    <td name="username"><%=rs.getString("name") %></td>
                    <td><%=rs.getString("regno") %></td>
                    <td><%=rs.getString("gender") %></td>
                    <td><%=rs.getString("department") %></td>
                    <td><%=rs.getString("year") %></td>
                    <td><%=rs.getString("cgpa") %></td>
                    <td><%=rs.getString("phone") %></td>
                    </tr>
                <%      
                    }
                %>
            </table>
            <%  rs.close();stmt.close();conn.close();
            }
            catch(Exception e){
                System.out.println("Exception : " + e.getMessage());
            }
            %>
        </form>
        <br>
        <h4><a href="notregistered.jsp">List of students who has not registered</a></h4>
    </body>
</html>
