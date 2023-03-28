package com.employee.entities;

public class user 
{
    private int id;
    private String name;
    private String email;
    private String mobile_no;
    private String city;
    private String gender;
    private String dob;

    public user() 
    {
        
    }

    public user(int id, String name, String email, String mobile_no, String city, String gender, String dob) {
        this.id = id;
        this.name = name;
        this.email = email;
        this.mobile_no = mobile_no;
        this.city = city;
        this.gender = gender;
        this.dob = dob;
    }

    public user(String name, String email, String mobile_no, String city, String gender, String dob) {
        this.name = name;
        this.email = email;
        this.mobile_no = mobile_no;
        this.city = city;
        this.gender = gender;
        this.dob = dob;
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

    public String getMobile_no() {
        return mobile_no;
    }

    public void setMobile_no(String mobile_no) {
        this.mobile_no = mobile_no;
    }

    public String getCity() {
        return city;
    }

    public void setCity(String city) {
        this.city = city;
    }

    public String getGender() {
        return gender;
    }

    public void setGender(String gender) {
        this.gender = gender;
    }

    public String getDob() {
        return dob;
    }

    public void setDob(String dob) {
        this.dob = dob;
    }
 
    
}
