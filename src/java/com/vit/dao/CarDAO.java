/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.vit.dao;

import com.vit.pojo.Car;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author SREEJIT BAKSHI
 */
public class CarDAO {
  public Connection con = null;
    public Statement stmt = null;
    
    public ResultSet rs=null;
    public PreparedStatement pStmt=null;
    
    public static CarDAO instance=null;
    
    public static synchronized CarDAO getInstance()
    {
        if (instance == null)
            instance = new CarDAO();
 
        return instance;
    }
    public CarDAO() {
        try{            
            Class.forName("org.postgresql.Driver");
            con = DriverManager.getConnection("jdbc:postgresql://pg-3e2bc955-rakeshmeher.i.aivencloud.com:17051/CarAppDB?ssl=require&user=avnadmin&password=AVNS_vD-_piUR0bgJFpyhNQo");
            System.out.println("Connection Object--------->"+con);
            stmt=con.createStatement();
        }
        catch(Exception e){            
            e.printStackTrace();            
        }
    }
    
    public boolean executeInsert(Car car){
        try{
            pStmt = con.prepareStatement("insert into \"cars\" (model, regnum, color, fuel, km_driven, gear, price, useremail, picture) VALUES (?,?,?,?,?,?,?,?,?)");
            pStmt.setString(1, car.getModel());
            pStmt.setString(2, car.getRegNum());
            pStmt.setString(3, car.getColor());
            pStmt.setString(4, car.getFuel());
            pStmt.setInt(5, car.getKmDriven());
            pStmt.setString(6, car.getGear());
            pStmt.setDouble(7, car.getPrice());
            pStmt.setString(8, car.getUserEmail());
            pStmt.setBytes(9, car.getPicture());
            int rowCount = pStmt.executeUpdate();
            if(rowCount >0){
                return true;
            }
            
        }
        catch(SQLException e){
            e.printStackTrace();
        }
        return false;
    }
    
    public List<Car> getCarsByUserEmail(String userEmail) {
        List<Car> carList = new ArrayList<>();
        try {
            pStmt = con.prepareStatement("SELECT * FROM \"cars\" WHERE useremail = ?");
            pStmt.setString(1, userEmail);
            rs = pStmt.executeQuery();
            while (rs.next()) {
                Car car = new Car();
                car.setId(rs.getInt("carid"));
                car.setModel(rs.getString("model"));
                car.setRegNum(rs.getString("regnum"));
                car.setColor(rs.getString("color"));
                car.setFuel(rs.getString("fuel"));
                car.setKmDriven(rs.getInt("km_driven"));
                car.setGear(rs.getString("gear"));
                car.setPrice(rs.getDouble("price"));
                car.setUserEmail(rs.getString("useremail"));
                car.setPicture(rs.getBytes("picture"));
                carList.add(car);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return carList;
    }
    
    public List<Car> getCars() {
        List<Car> carList = new ArrayList<>();
        try {
            pStmt = con.prepareStatement("SELECT * FROM \"cars\"");
            rs = pStmt.executeQuery();
            while (rs.next()) {
                Car car = new Car();
                car.setId(rs.getInt("carid"));
                car.setModel(rs.getString("model"));
                car.setRegNum(rs.getString("regnum"));
                car.setColor(rs.getString("color"));
                car.setFuel(rs.getString("fuel"));
                car.setKmDriven(rs.getInt("km_driven"));
                car.setGear(rs.getString("gear"));
                car.setPrice(rs.getDouble("price"));
                car.setUserEmail(rs.getString("useremail"));
                car.setPicture(rs.getBytes("picture"));
                carList.add(car);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return carList;
    }
    
    public List<Car> getCarsbyModel(String model) {
        List<Car> carList = new ArrayList<>();
        try {
            pStmt = con.prepareStatement("SELECT * FROM \"cars\" WHERE model ilike ?");
            pStmt.setString(1, "%"+model+"%");
            rs = pStmt.executeQuery();
            while (rs.next()) {
                Car car = new Car();
                car.setId(rs.getInt("carid"));
                car.setModel(rs.getString("model"));
                car.setRegNum(rs.getString("regnum"));
                car.setColor(rs.getString("color"));
                car.setFuel(rs.getString("fuel"));
                car.setKmDriven(rs.getInt("km_driven"));
                car.setGear(rs.getString("gear"));
                car.setPrice(rs.getDouble("price"));
                car.setUserEmail(rs.getString("useremail"));
                car.setPicture(rs.getBytes("picture"));
                carList.add(car);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return carList;
    }
    
    public Car getCarById(String id) {
        Car car = null;
        try {
            pStmt = con.prepareStatement("SELECT * FROM \"cars\" WHERE carid = ?");
            pStmt.setInt(1, Integer.parseInt(id));
            rs = pStmt.executeQuery();

            if (rs.next()) { 
                car = new Car();
                car.setId(rs.getInt("carid"));
                car.setModel(rs.getString("model"));
                car.setRegNum(rs.getString("regnum"));
                car.setColor(rs.getString("color"));
                car.setFuel(rs.getString("fuel"));
                car.setKmDriven(rs.getInt("km_driven"));
                car.setGear(rs.getString("gear"));
                car.setPrice(rs.getDouble("price"));
                car.setUserEmail(rs.getString("useremail"));
                car.setPicture(rs.getBytes("picture"));
            }
        } catch (SQLException e) {
            e.printStackTrace(); 
        }
        return car; 
    }
    
    private String getQueryWithParameters(PreparedStatement pstmt, String... params) {
        String sql = pstmt.toString(); 
        for (String param : params) {
            sql = sql.replaceFirst("\\?", "'" + param + "'"); 
        }
        return sql;
    }
}