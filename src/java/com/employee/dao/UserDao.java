package com.employee.dao;

import com.employee.entities.user;
import java.sql.*;

public class UserDao {

    private Connection con;

    public UserDao(Connection con) {
        this.con = con;
    }

    //method to insert user to databse
    public boolean saveUser(user user) {
        boolean f = false;
        try {
            //inserting into database
            String Query = "insert into employee(name, email, mobile_no, city, gender, dob) values (?,?,?,?,?,?)";

            //user data-base
            PreparedStatement pstmt = this.con.prepareStatement(Query);
            pstmt.setString(1, user.getName());
            pstmt.setString(2, user.getEmail());
            pstmt.setString(3, user.getMobile_no());
            pstmt.setString(4, user.getCity());
            pstmt.setString(5, user.getGender());
            pstmt.setString(6, user.getDob());

            pstmt.executeUpdate();
            f = true;

        } catch (Exception e) {
            e.printStackTrace();
        }
        return f;
    }

    public boolean delete(int id) {
        boolean f = false;
        try {
            String query = "delete from employee where id =?";
            PreparedStatement pstmt = con.prepareStatement(query);
            pstmt.setInt(1, id);
            pstmt.executeUpdate();
            f = true;
        } 
        catch (Exception e) 
        {
            e.printStackTrace();
        }
        return f;
    }
    
    public user getemployeeId(int id)
    {
        user user = null;
        try
        {
           String query = "select * from employee where id=?";
           PreparedStatement pstmt = con.prepareStatement(query);
           pstmt.setInt(1, id);
           ResultSet rs = pstmt.executeQuery();
           if(rs.next())
           {
               //creating the object and again setting the values to the object
               user = new user();
               user.setId(rs.getInt("id"));
               user.setName(rs.getString("name"));
               user.setEmail(rs.getString("email"));
               user.setMobile_no(rs.getString("mobile_no"));
               user.setCity(rs.getString("city"));
               user.setGender(rs.getString("gender"));
               user.setDob(rs.getString("dob"));
               
               
           }
        }
        catch(Exception e)
        {
            e.printStackTrace();
        }
        
        return user;
    }
    
    public boolean updateEmployee(user emp)
    {
        boolean flag = false;
        try
        {
           String upquery = "update employee set name=? ,email=? ,mobile_no=? ,city=? ,gender=?, dob=?";
           PreparedStatement pstmt = con.prepareStatement(upquery);
           pstmt.setString(1,emp.getName());
           pstmt.setString(2,emp.getEmail());
           pstmt.setString(3,emp.getMobile_no());
           pstmt.setString(4,emp.getCity());
           pstmt.setString(5,emp.getGender());
           pstmt.setString(6,emp.getDob());
//           pstmt.setInt(7, emp.getId());
           
           
           pstmt.executeUpdate();
           flag = true;
           
        }
        catch(Exception e)
        {
            e.printStackTrace();
        }
        
        return flag;
    }
}
