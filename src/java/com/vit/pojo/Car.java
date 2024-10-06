/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.vit.pojo;

import java.util.Base64;

/**
 *
 * @author SREEJIT BAKSHI
 */
public class Car {
    private int id;
    private String model;
    private String regNum;
    private String color;
    private String fuel;
    private int kmDriven;       // Assuming kmDriven is an integer
    private String gear;
    private double price;       // Assuming price is a double
    private String userEmail; // Assuming you want to store the user's email
    private byte[] picture;
    
    // Constructor with all fields
    public Car(String model, String regNum, String color, String fuel, int kmDriven, String gear, double price, String userEmail, byte[] picture) {
        this.model = model;
        this.regNum = regNum;
        this.color = color;
        this.fuel = fuel;
        this.kmDriven = kmDriven;
        this.gear = gear;
        this.price = price;
        this.userEmail = userEmail;
        this.picture = picture;
    }

    public Car() {
        //throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
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

    public String getUserEmail() {
        return userEmail;
    }

    public void setUserEmail(String userEmail) {
        this.userEmail = userEmail;
    }
    
    public byte[] getPicture() {
        return picture;
    }

    public void setPicture(byte[] picture) {
        this.picture = picture;
    }
    
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getBase64Picture() {
        return picture != null ? Base64.getEncoder().encodeToString(picture) : null;
    }
}