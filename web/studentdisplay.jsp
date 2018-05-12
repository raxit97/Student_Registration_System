<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Your Details</title>
    </head>
    <body>
    <%@ page import="java.sql.*" %>
    <center>
        <h1>Your details</h1>
        <table>
            <%
                try
                {
                    Object username = session.getAttribute("name");
                    Class.forName("com.mysql.jdbc.Driver");
                    Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/sample", "root", "root");
                    Statement stmt=conn.createStatement();
                    ResultSet rs=stmt.executeQuery("select * from student where name='"+username+"' ");
                    rs.next();
                %>
                <tr>
                    <th>Name : </th>
                    <td><%=rs.getString("name") %></td>
                </tr>
                <tr>
                    <th>Register Number : </th>
                    <td><%=rs.getString("regno") %></td>
                </tr>
                <tr>
                    <th>Gender : </th>
                    <td><%=rs.getString("gender") %></td>
                </tr>
                <tr>
                    <th>Department : </th>
                    <td><%=rs.getString("department") %></td>
                </tr>
                <tr>
                    <th>Year : </th>
                    <td><%=rs.getString("year") %></td>
                </tr>
                <tr>
                    <th>CGPA : </th>
                    <td><%=rs.getString("cgpa") %></td>
                </tr>
                <tr>
                    <th>Phone Number : </th>
                    <td><%=rs.getString("phone") %></td>
                </tr>
                    </tr>
            </table>
            <%  rs.close();stmt.close();conn.close();
            }
            catch(Exception e){
                System.out.println("Exception : " + e.getMessage());
            }
            %>
        </table>
    </center>
    </body>
</html>
