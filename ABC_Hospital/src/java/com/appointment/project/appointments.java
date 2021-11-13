/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.appointment.project;

/**
 *
 * @author User
 */
public class appointments {
    int id;
    String name;
    String age;
    String gender;
    String number;
    String email;
    String doctor;
    String description;
    String branch;
    String date;

    public appointments() {
    }

    public appointments(int id, String name, String age, String gender, String number, String email, String doctor, String description, String branch, String date) {
        this.id = id;
        this.name = name;
        this.age = age;
        this.gender = gender;
        this.number = number;
        this.email = email;
        this.doctor = doctor;
        this.description = description;
        this.branch = branch;
        this.date = date;
    }

    public appointments(String name, String age, String gender, String number, String email, String doctor, String description, String branch, String date) {
        this.name = name;
        this.age = age;
        this.gender = gender;
        this.number = number;
        this.email = email;
        this.doctor = doctor;
        this.description = description;
        this.branch = branch;
        this.date = date;
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

    public String getAge() {
        return age;
    }

    public void setAge(String age) {
        this.age = age;
    }

    public String getGender() {
        return gender;
    }

    public void setGender(String gender) {
        this.gender = gender;
    }

    public String getNumber() {
        return number;
    }

    public void setNumber(String number) {
        this.number = number;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getDoctor() {
        return doctor;
    }

    public void setDoctor(String doctor) {
        this.doctor = doctor;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getBranch() {
        return branch;
    }

    public void setBranch(String branch) {
        this.branch = branch;
    }

    public String getDate() {
        return date;
    }

    public void setDate(String date) {
        this.date = date;
    }

    @Override
    public String toString() {
        return "appointments{" + "id=" + id + ", name=" + name + ", age=" + age + ", gender=" + gender + ", number=" + number + ", email=" + email + ", doctor=" + doctor + ", description=" + description + ", branch=" + branch + ", date=" + date + '}';
    }
}
