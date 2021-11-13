/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.doctorlist.project;

import java.sql.*;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;
/**
 *
 * @author User
 */
public class DoctorlistsDao {
    Connection con;

    public DoctorlistsDao(Connection con) {
        this.con = con;
    }
    
    //POST(add) doctorlists information to database
    public boolean addDoctorlist(doctorlists doctorlist){
        boolean test = false;
        
        try{
            String query =  "insert into doctorlist (doctor,specialization,branch,date,time) values(?,?,?,?,?)";
            PreparedStatement pst = this.con.prepareStatement(query);
            pst.setString(1, doctorlist.getDoctor());
            pst.setString(2, doctorlist.getSpecialization());
            pst.setString(3, doctorlist.getBranch());
            pst.setString(4, doctorlist.getDate());
            pst.setString(5, doctorlist.getTime());
            pst.executeUpdate();
            test= true;

        }catch(Exception e){
            e.printStackTrace();
        }
        return test;
    }
    
//    GET(retrieve) the doctorlist details from databse
    public List<doctorlists> getAllDoctorlists(){
        List<doctorlists> doctorlist = new ArrayList<>();
        
        try{
            
            String query = "select * from doctorlist";
            PreparedStatement pt = this.con.prepareStatement(query);
            ResultSet rs = pt.executeQuery();
            
            while(rs.next()){
                int id = rs.getInt("id");
                String doctor = rs.getString("doctor");
                String specialization = rs.getString("specialization");
                String branch = rs.getString("branch");
                String date = rs.getString("date");
                String time = rs.getString("time");
                
                doctorlists row = new doctorlists(id,doctor,specialization,branch,date,time);
                doctorlist.add(row);
            }
            
        }catch(Exception e){
            e.printStackTrace();;
        }
        return doctorlist;
    }
    
    
//    PUT(edit) doctorlist information
    public boolean editDoctorlistInfo(doctorlists doctorlist){
        boolean test = false;
        try{
            String query = "update doctorlist set doctor=?, specialization=? ,branch=? ,date=? ,time=? where id=?";
            PreparedStatement pt = this.con.prepareStatement(query);
            pt.setString(1, doctorlist.getDoctor());
            pt.setString(2, doctorlist.getSpecialization()); 
            pt.setString(3, doctorlist.getBranch());
            pt.setString(4, doctorlist.getDate());
            pt.setString(5, doctorlist.getTime());
            pt.setInt(6, doctorlist.getId());
            
            pt.executeUpdate();
            test = true;
            
        }catch(Exception ex){
            ex.printStackTrace();;
        }
        return test;
        
        
    }
    
//    get single doctorlist information in edit page
    public doctorlists getSingleDoctorlist(int id){
        doctorlists app = null;
        
        try{
            String query = "select * from doctorlist where id=? ";
            
            PreparedStatement pt = this.con.prepareStatement(query);
            pt.setInt(1, id);
            ResultSet rs= pt.executeQuery();
            
            while(rs.next()){
                int dlid = rs.getInt("id");
                String doctor = rs.getString("doctor");
                String specialization = rs.getString("specialization");
                String branch = rs.getString("branch");
                String date = rs.getString("date");
                String time = rs.getString("time");
                app = new doctorlists(dlid,doctor,specialization,branch,date,time);
            }
        }catch(Exception ex){
            ex.printStackTrace();;
        }
        return app;
    }
    
    
//    delete doctorlists from database
    
    
    public void deleteDoctorlist(int id){
        try{
            
           String query= "delete from doctorlist where id=?";
           PreparedStatement pt = this.con.prepareStatement(query);
           pt.setInt(1, id);
           pt.execute();
            
        }catch(Exception ex){
            ex.printStackTrace();;
        }
    }
}
