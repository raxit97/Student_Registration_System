<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Not Registered</title>
        <style>
            table,td,th{
                border : 1 px solid black;
            }
            td, th{
                padding : 4px;
            }
            table{
                border-collapse: collapse;
            }
        </style>
    </head>
    <body>
    <%@ page import="java.sql.*" %>
    <center>
        <h3>Students who have not registered</h3>
        <table border="1">
            <tr>
                <th>Name</th>
                <th>Register Number</th>
            </tr>
            <%
                try
                {
                    Object username = session.getAttribute("name");
                    Class.forName("com.mysql.jdbc.Driver");
                    Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/sample", "root", "root");
                    Statement stmt=conn.createStatement();
                    ResultSet rs=stmt.executeQuery("SELECT name,regno FROM StudentList WHERE NOT EXISTS (SELECT name FROM student WHERE student.regno = StudentList.regno)");
                    while(rs.next())
                    {
            %>
            <tr>
                <td><%=rs.getString("name")%></td>
                <td><%=rs.getString("regno")%></td>
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
    </center>
    </body>
</html>
