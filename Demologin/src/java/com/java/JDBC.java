package com.java;

import java.sql.*;

public class JDBC {
    
    //public static void main(String args[]){   delete("Ram Kumar");   }
    
    public static String checkNameOrReg(String name_or_reg){
        boolean status1 = false, status2 = false;
        String result = null;
        try{
            Class.forName("com.mysql.jdbc.Driver");  
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/sample","root","root");  
            Statement st = con.createStatement();
            ResultSet rs1 = st.executeQuery("select * from student where name='"+name_or_reg+"' or regno='"+name_or_reg+"' ");
            status1 = rs1.next();
            if(status1 == true){
                return rs1.getString(1);
            }
        }catch(Exception ex){
            System.out.println("Exception : "+ex.getMessage());   
        }
        return result;
    }
    
    public static void delete(String username){
        int status = 0;
        try{
            Class.forName("com.mysql.jdbc.Driver");  
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/sample","root","root");  
            Statement st = con.createStatement();
            status = st.executeUpdate("delete from student where name='"+username+"' ");
            System.out.println(status);
            con.close();
        }catch(Exception ex){
            System.out.println("Exception : "+ex.getMessage());   
        }
    }
    
    public static boolean validate(String name_or_reg, String password){
        boolean status = false;
        try{
            Class.forName("com.mysql.jdbc.Driver");  
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/sample","root","root");  
            Statement st = con.createStatement();
            ResultSet rs = st.executeQuery("select * from student where (name='"+name_or_reg+"' or regno='"+name_or_reg+"') and password='"+password+"' ");
            status = rs.next();
            System.out.println(status);
            con.close();
        }catch(Exception ex){
            System.out.println("Exception : "+ex.getMessage());   
        }
        return status;
    }
    
    public static int insert(String username, String password, String cgpa, String gender, String department, String year, String phno, String regno){
        
        int rs = 0;
        try{
            Class.forName("com.mysql.jdbc.Driver");  
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/sample","root","root");  
            Statement st = con.createStatement();
            rs = st.executeUpdate("insert into student values('"+username+"','"+password+"','"+cgpa+"','"+gender+"','"+department+"','"+year+"','"+phno+"','"+regno+"')");
            System.out.println(rs);
            con.close();
        }catch(Exception ex){
            System.out.println("Exception : "+ex.getMessage());   
        }
        return rs;
    }
    
}
