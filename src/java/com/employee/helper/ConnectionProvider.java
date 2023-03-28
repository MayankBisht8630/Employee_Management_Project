package com.employee.helper;
import java.sql.*;

public class ConnectionProvider {

    private static Connection con;

    public static Connection getConnection() 
    {
        try {
            if (con == null) 
            {
                //load driver class
                Class.forName("com.mysql.cj.jdbc.Driver");
                con = DriverManager.getConnection("jdbc:mysql://localhost:3306/usermgmt","root","Mayank@12"); 
            }
        } 
        catch (Exception e) 
        {
            e.printStackTrace();
        }
        return con;
    }
}
