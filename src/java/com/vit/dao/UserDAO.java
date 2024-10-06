/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.vit.dao;

import com.vit.pojo.User;
import java.sql.*;

/**
 *
 * @author SREEJIT BAKSHI
 */
public class UserDAO {
    public Connection con = null;
    public Statement stmt = null;
    
    public ResultSet rs=null;
    public PreparedStatement pStmt=null;
    
    public static UserDAO instance=null;
    
    public static synchronized UserDAO getInstance()
    {
        if (instance == null)
            instance = new UserDAO();
 
        return instance;
    }
    private UserDAO() {
        try{            
            Class.forName("org.postgresql.Driver");
            System.out.println("Connection Object--------->"+con);
            stmt=con.createStatement();
        }
        catch(Exception e){            
            e.printStackTrace();            
        }
    }
    
    public boolean executeInsert(User user){
        try{
            pStmt = con.prepareStatement("insert into \"user\" (\"userName\", \"emailId\", \"password\", \"city\", \"state\", \"phone\") values(?,?,?,?,?,?)");
            pStmt.setString(1,user.getUserName());
            pStmt.setString(2,user.getEmailId());
            pStmt.setString(3,user.getPassword());
            pStmt.setString(4,user.getCity());
            pStmt.setString(5,user.getState());
            pStmt.setString(6,user.getPhone());
            int rowCount= pStmt.executeUpdate();
            if(rowCount >0){
                return true;
            }
            
        }
        catch(SQLException e){
            e.printStackTrace();
        }
        return false;
    }
}