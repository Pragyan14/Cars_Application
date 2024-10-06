/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.vit.dao;

import com.vit.pojo.User;
import java.sql.*;
import java.util.ArrayList;

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
            con = DriverManager.getConnection("jdbc:postgresql://localhost:5432/postgres","postgres", "12345");
            System.out.println("Connection Object--------->"+con);
            stmt=con.createStatement();
        }
        catch(Exception e){            
            e.printStackTrace();            
        }
    }
    
    public ArrayList executeSearch(String searchString){
        ArrayList userList = new ArrayList();
        try{
            System.out.println("SEARCH"+searchString);
            rs= stmt.executeQuery("select * from \"userdata\" "
                    + "where uname like'%"+searchString+"%'");
            while(rs.next()){
                User user = new User(
                    rs.getString(1), rs.getString(2), rs.getString(4),rs.getString(5),
                    rs.getInt(3));
                userList.add(user);
            }         
            
        }
        catch(Exception e){
            e.printStackTrace();
        }
        return userList;
    }
    
    public boolean executeInsert(User user){
        try{
            pStmt = con.prepareStatement("insert into \"userdata\" values(?,?,?,?,?)");
            pStmt.setString(1,user.getUserId());
            pStmt.setString(2,user.getUserName());
            pStmt.setString(4,user.getEmailId());
            pStmt.setString(5,user.getPassword());
            pStmt.setInt(3,user.getAge());
            int rowCount= pStmt.executeUpdate();
            if(rowCount >0){
                return true;
            }
            
        }
        catch(Exception e){
            e.printStackTrace();
        }
        return false;
    }
}