/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.Model;

/**
 *
 * @author IZZUL MUAZZAM
 * DATE: 2 JUN 2026
 */
public class Car {
    protected int carId;
    protected String brand;
    protected String model;
    protected double cylinder;
    protected double price;

    public Car() {}

    public Car(String brand, String model, double cylinder, double price) {
        super();
        this.brand = brand;
        this.model = model;
        this.cylinder = cylinder;
        this.price = price;
    }

    public Car(int carId, String brand, String model, double cylinder, double price) {
        super();
        this.carId = carId;
        this.brand = brand;
        this.model = model;
        this.cylinder = cylinder;
        this.price = price;
    }

    public int getCarId() { return carId; }
    public void setCarId(int carId) { this.carId = carId; }

    public String getBrand() { return brand; }
    public void setBrand(String brand) { this.brand = brand; }

    public String getModel() { return model; }
    public void setModel(String model) { this.model = model; }

    public double getCylinder() { return cylinder; }
    public void setCylinder(double cylinder) { this.cylinder = cylinder; }

    public double getPrice() { return price; }
    public void setPrice(double price) { this.price = price; }
    
}