/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.vit.pojo;

/**
 *
 * @author SREEJIT BAKSHI
 */
public class Car {
    private String model;
    private String regNum;
    private String color;
    private String fuel;
    private int kmDriven;       // Assuming kmDriven is an integer
    private String gear;
    private double price;       // Assuming price is a double
    private int userId;         // Foreign key to associate with the user

    // Constructor with all fields
    public Car(String model, String regNum, String color, String fuel, int kmDriven, String gear, double price, int userId) {
        this.model = model;
        this.regNum = regNum;
        this.color = color;
        this.fuel = fuel;
        this.kmDriven = kmDriven;
        this.gear = gear;
        this.price = price;
        this.userId = userId;
    }

    public Car() {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    public String getModel() {
        return model;
    }

    public void setModel(String model) {
        this.model = model;
    }

    public String getRegNum() {
        return regNum;
    }

    public void setRegNum(String regNum) {
        this.regNum = regNum;
    }

    public String getColor() {
        return color;
    }

    public void setColor(String color) {
        this.color = color;
    }

    public String getFuel() {
        return fuel;
    }

    public void setFuel(String fuel) {
        this.fuel = fuel;
    }

    public int getKmDriven() {
        return kmDriven;
    }

    public void setKmDriven(int kmDriven) {
        this.kmDriven = kmDriven;
    }

    public String getGear() {
        return gear;
    }

    public void setGear(String gear) {
        this.gear = gear;
    }

    public double getPrice() {
        return price;
    }

    public void setPrice(double price) {
        this.price = price;
    }

    public int getUserId() {
        return userId;
    }

    public void setUserId(int userId) {
        this.userId = userId;
    }
}