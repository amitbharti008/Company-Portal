
package com.qt.companyportal.model;


public class EmployeeModel {
    
    private int id;
    private String name;  //azher
    private String email;  // azher@g.com
    private String phone;  
    private int experience;
    private String designation;
    private String company;
    private String state;
    private String city;
    private String createdAt;
    private String modifiedAt;
    
    // create default constructor
    public EmployeeModel() {
    }
    
    
    // create param constructor

    public EmployeeModel(int id, String name, String email, String phone, int experience, String designation, String company, String state, String city, String createdAt, String modifiedAt) {
        this.id = id;
        this.name = name;
        this.email = email;
        this.phone = phone;
        this.experience = experience;
        this.designation = designation;
        this.company = company;
        this.state = state;
        this.city = city;
        this.createdAt = createdAt;
        this.modifiedAt = modifiedAt;
    }
    
    

    public String getCreatedAt() {
        return createdAt;
    }

    public void setCreatedAt(String createdAt) {
        this.createdAt = createdAt;
    }

    public String getModifiedAt() {
        return modifiedAt;
    }

    public void setModifiedAt(String modifiedAt) {
        this.modifiedAt = modifiedAt;
    }
    
    

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public int getExperience() {
        return experience;
    }

    public void setExperience(int experience) {
        this.experience = experience;
    }

    public String getDesignation() {
        return designation;
    }

    public void setDesignation(String designation) {
        this.designation = designation;
    }

    public String getCompany() {
        return company;
    }

    public void setCompany(String company) {
        this.company = company;
    }

    public String getState() {
        return state;
    }

    public void setState(String state) {
        this.state = state;
    }

    public String getCity() {
        return city;
    }

    public void setCity(String city) {
        this.city = city;
    }

 

   
    
    
    
}
