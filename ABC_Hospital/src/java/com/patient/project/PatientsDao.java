/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.patient.project;

import java.sql.*;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;
/**
 *
 * @author User
 */
public class PatientsDao {
    Connection con;

    public PatientsDao(Connection con) {
        this.con = con;
    }
    
    //POST(add) patients information to database
    public boolean addPatient(patients patient){
        boolean test = false;
        
        try{
            String query =  "insert into patient (pnumber,name,age,gender,nic,address,email,cnumber,blood,description,branch,ward,entrydate,dischargedate) values(?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
            PreparedStatement pst = this.con.prepareStatement(query);
            pst.setString(1, patient.getPnumber());
            pst.setString(2, patient.getName());
            pst.setString(3, patient.getAge());
            pst.setString(4, patient.getGender());
            pst.setString(5, patient.getNic());
            pst.setString(6, patient.getAddress());
            pst.setString(7, patient.getEmail());
            pst.setString(8, patient.getCnumber());
            pst.setString(9, patient.getBlood());
            pst.setString(10, patient.getDescription());
            pst.setString(11, patient.getBranch());
            pst.setString(12, patient.getWard());
            pst.setString(13, patient.getEntrydate());
            pst.setString(14, patient.getDischargedate());
            pst.executeUpdate();
            test= true;

        }catch(Exception e){
            e.printStackTrace();
        }
        return test;
    }
    
//    GET(retrieve) the patient details from databse
    public List<patients> getAllPatients(){
        List<patients> patient = new ArrayList<>();
        
        try{
            
            String query = "select * from patient";
            PreparedStatement pt = this.con.prepareStatement(query);
            ResultSet rs = pt.executeQuery();
            
            while(rs.next()){
                int id = rs.getInt("id");
                String pnumber = rs.getString("pnumber");
                String name = rs.getString("name");
                String age = rs.getString("age");
                String gender = rs.getString("gender");
                String nic = rs.getString("nic");
                String address = rs.getString("address");
                String email = rs.getString("email");
                String cnumber = rs.getString("cnumber");
                String blood = rs.getString("blood");
                String description = rs.getString("description");
                String branch = rs.getString("branch");
                String ward = rs.getString("ward");
                String entrydate = rs.getString("entrydate");
                String dischargedate = rs.getString("dischargedate");
                
                patients row = new patients(id,pnumber,name,age,gender,nic,address,email,cnumber,blood,description,branch,ward,entrydate,dischargedate);
                patient.add(row);
            }
            
        }catch(Exception e){
            e.printStackTrace();;
        }
        return patient;
    }
    
    
//    PUT(edit) patient information
    public boolean editPatientInfo(patients patient){
        boolean test = false;
        try{
            String query = "update patient set pnumber=?, name=?, age=?, gender=?, nic=?, address=?, email=?, cnumber=?, blood=?, description=?, branch=?, ward=?, entrydate=?, dischargedate=? where id=?";
            PreparedStatement pt = this.con.prepareStatement(query);
            pt.setString(1, patient.getPnumber());
            pt.setString(2, patient.getName());
            pt.setString(3, patient.getAge());
            pt.setString(4, patient.getGender());
            pt.setString(5, patient.getNic());
            pt.setString(6, patient.getAddress());
            pt.setString(7, patient.getEmail());
            pt.setString(8, patient.getCnumber());
            pt.setString(9, patient.getBlood());
            pt.setString(10, patient.getDescription());
            pt.setString(11, patient.getBranch());
            pt.setString(12, patient.getWard());
            pt.setString(13, patient.getEntrydate());
            pt.setString(14, patient.getDischargedate());
            pt.setInt(15, patient.getId());
            
            pt.executeUpdate();
            test = true;
            
        }catch(Exception ex){
            ex.printStackTrace();;
        }
        return test;
        
        
    }
    
//    get single patient information in edit page
    public patients getSinglePatient(int id){
        patients app = null;
        
        try{
            String query = "select * from patient where id=? ";
            
            PreparedStatement pt = this.con.prepareStatement(query);
            pt.setInt(1, id);
            ResultSet rs= pt.executeQuery();
            
            while(rs.next()){
                int pid = rs.getInt("id");
                String pnumber = rs.getString("pnumber");
                String name = rs.getString("name");
                String age = rs.getString("age");
                String gender = rs.getString("gender");
                String nic = rs.getString("nic");
                String address = rs.getString("address");
                String email = rs.getString("email");
                String cnumber = rs.getString("cnumber");
                String blood = rs.getString("blood");
                String description = rs.getString("description");
                String branch = rs.getString("branch");
                String ward = rs.getString("ward");
                String entrydate = rs.getString("entrydate");
                String dischargedate = rs.getString("dischargedate");
                app = new patients(pid,pnumber,name,age,gender,nic,address,email,cnumber,blood,description,branch,ward,entrydate,dischargedate);
            }
        }catch(Exception ex){
            ex.printStackTrace();;
        }
        return app;
    }
    
    
//    delete patients from database
    
    
    public void deletePatient(int id){
        try{
            
           String query= "delete from patient where id=?";
           PreparedStatement pt = this.con.prepareStatement(query);
           pt.setInt(1, id);
           pt.execute();
            
        }catch(Exception ex){
            ex.printStackTrace();;
        }
    }
}
