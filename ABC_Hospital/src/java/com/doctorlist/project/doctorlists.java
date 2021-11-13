/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.doctorlist.project;

/**
 *
 * @author User
 */
public class doctorlists {
    int id;
    String doctor;
    String specialization;
    String branch;
    String date;
    String time;

    public doctorlists() {
    }

    public doctorlists(int id, String doctor, String specialization, String branch, String date, String time) {
        this.id = id;
        this.doctor = doctor;
        this.specialization = specialization;
        this.branch = branch;
        this.date = date;
        this.time = time;
    }

    public doctorlists(String doctor, String specialization, String branch, String date, String time) {
        this.doctor = doctor;
        this.specialization = specialization;
        this.branch = branch;
        this.date = date;
        this.time = time;
    }


    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getDoctor() {
        return doctor;
    }

    public void setDoctor(String doctor) {
        this.doctor = doctor;
    }

    public String getSpecialization() {
        return specialization;
    }

    public void setSpecialization(String specialization) {
        this.specialization = specialization;
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
    
    public String getTime() {
        return time;
    }

    public void setTime(String time) {
        this.time = time;
    }

    @Override
    public String toString() {
        return "doctorlists{" + "id=" + id + ", doctor=" + doctor + ", specialization=" + specialization + ", branch=" + branch + ", date=" + date + ", time=" + time + '}';
    }
}
