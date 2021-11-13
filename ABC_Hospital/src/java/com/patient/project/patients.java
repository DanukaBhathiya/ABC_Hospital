/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.patient.project;

/**
 *
 * @author User
 */
public class patients {
    int id;
    String pnumber;
    String name;
    String age;
    String gender;
    String nic;
    String address;
    String email;
    String cnumber;
    String blood;
    String description;
    String branch;
    String ward;
    String entrydate;
    String dischargedate;

    public patients() {
    }

    public patients(int id, String pnumber, String name, String age, String gender, String nic, String address, String email, String cnumber, String blood, String description, String branch, String ward, String entrydate, String dischargedate) {
        this.id = id;
        this.pnumber = pnumber;
        this.name = name;
        this.age = age;
        this.gender = gender;
        this.nic = nic;
        this.address = address;
        this.email = email;
        this.cnumber = cnumber;
        this.blood = blood;
        this.description = description;
        this.branch = branch;
        this.ward = ward;
        this.entrydate = entrydate;
        this.dischargedate = dischargedate;
    }

    public patients(String pnumber, String name, String age, String gender, String nic, String address, String email, String cnumber, String blood, String description, String branch, String ward, String entrydate, String dischargedate) {
        this.pnumber = pnumber;
        this.name = name;
        this.age = age;
        this.gender = gender;
        this.nic = nic;
        this.address = address;
        this.email = email;
        this.cnumber = cnumber;
        this.blood = blood;
        this.description = description;
        this.branch = branch;
        this.ward = ward;
        this.entrydate = entrydate;
        this.dischargedate = dischargedate;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getPnumber() {
        return pnumber;
    }

    public void setPnumber(String pnumber) {
        this.pnumber = pnumber;
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

    public String getNic() {
        return nic;
    }

    public void setNic(String nic) {
        this.nic = nic;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getCnumber() {
        return cnumber;
    }

    public void setCnumber(String cnumber) {
        this.cnumber = cnumber;
    }

    public String getBlood() {
        return blood;
    }

    public void setBlood(String blood) {
        this.blood = blood;
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
    
    public String getWard() {
        return ward;
    }

    public void setWard(String ward) {
        this.ward = ward;
    }

    public String getEntrydate() {
        return entrydate;
    }

    public void setEntrydate(String entrydate) {
        this.entrydate = entrydate;
    }

    public String getDischargedate() {
        return dischargedate;
    }

    public void setDischargedate(String dischargedate) {
        this.dischargedate = dischargedate;
    }

    @Override
    public String toString() {
        return "patients{" + "id=" + id + ", pnumber=" + pnumber + ", name=" + name + ", age=" + age + ", gender=" + gender + ", nic=" + nic + ", address=" + address + ", email=" + email + ", cnumber=" + cnumber + ", blood=" + blood + ", description=" + description + ", branch=" + branch + ", ward=" + ward + ", entrydate=" + entrydate + ", dischargedate=" + dischargedate + '}';
    }
    
    
}
