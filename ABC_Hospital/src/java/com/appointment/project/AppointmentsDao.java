/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.appointment.project;

import java.sql.*;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;
/**
 *
 * @author User
 */
public class AppointmentsDao {
    Connection con;

    public AppointmentsDao(Connection con) {
        this.con = con;
    }
    
    //POST(add) appointments information to database
    public boolean addAppointment(appointments appointment){
        boolean test = false;
        
        try{
            String query =  "insert into appointment (name,age,gender,number,email,doctor,description,branch,date) values(?,?,?,?,?,?,?,?,?)";
            PreparedStatement pst = this.con.prepareStatement(query);
            pst.setString(1, appointment.getName());
            pst.setString(2, appointment.getAge());
            pst.setString(3, appointment.getGender());
            pst.setString(4, appointment.getNumber());
            pst.setString(5, appointment.getEmail());
            pst.setString(6, appointment.getDoctor());
            pst.setString(7, appointment.getDescription());
            pst.setString(8, appointment.getBranch());
            pst.setString(9, appointment.getDate());
            pst.executeUpdate();
            test= true;

        }catch(Exception e){
            e.printStackTrace();
        }
        return test;
    }
    
//    GET(retrieve) the appointment details from databse
    public List<appointments> getAllAppointments(){
        List<appointments> appointment = new ArrayList<>();
        
        try{
            
            String query = "select * from appointment";
            PreparedStatement pt = this.con.prepareStatement(query);
            ResultSet rs = pt.executeQuery();
            
            while(rs.next()){
                int id = rs.getInt("id");
                String name = rs.getString("name");
                String age = rs.getString("age");
                String gender = rs.getString("gender");
                String number = rs.getString("number");
                String email = rs.getString("email");
                String doctor = rs.getString("doctor");
                String description = rs.getString("description");
                String branch = rs.getString("branch");
                String date = rs.getString("date");
                
                appointments row = new appointments(id,name,age,gender,number,email,doctor,description,branch,date);
                appointment.add(row);
            }
            
        }catch(Exception e){
            e.printStackTrace();;
        }
        return appointment;
    }
    
    
//    PUT(edit) appointment information
    public boolean editAppointmentInfo(appointments appointment){
        boolean test = false;
        try{
            String query = "update appointment set name=?, age=?, gender=?, number=?, email=?, doctor=?, description=? ,branch=? ,date=? where id=?";
            PreparedStatement pt = this.con.prepareStatement(query);
            pt.setString(1, appointment.getName());
            pt.setString(2, appointment.getAge());
            pt.setString(3, appointment.getGender());
            pt.setString(4, appointment.getNumber());
            pt.setString(5, appointment.getEmail());
            pt.setString(6, appointment.getDoctor());
            pt.setString(7, appointment.getDescription()); 
            pt.setString(8, appointment.getBranch());
            pt.setString(9, appointment.getDate());
            pt.setInt(10, appointment.getId());
            
            pt.executeUpdate();
            test = true;
            
        }catch(Exception ex){
            ex.printStackTrace();;
        }
        return test;
        
        
    }
    
//    get single appointment information in edit page
    public appointments getSingleAppointment(int id){
        appointments app = null;
        
        try{
            String query = "select * from appointment where id=? ";
            
            PreparedStatement pt = this.con.prepareStatement(query);
            pt.setInt(1, id);
            ResultSet rs= pt.executeQuery();
            
            while(rs.next()){
                int aid = rs.getInt("id");
                String name = rs.getString("name");
                String age = rs.getString("age");
                String gender = rs.getString("gender");
                String number = rs.getString("number");
                String email = rs.getString("email");
                String doctor = rs.getString("doctor");
                String description = rs.getString("description");
                String branch = rs.getString("branch");
                String date = rs.getString("date");
                app = new appointments(aid,name,age,gender,number,email,doctor,description,branch,date);
            }
        }catch(Exception ex){
            ex.printStackTrace();;
        }
        return app;
    }
    
    
//    delete appointments from database
    
    
    public void deleteAppointment(int id){
        try{
            
           String query= "delete from appointment where id=?";
           PreparedStatement pt = this.con.prepareStatement(query);
           pt.setInt(1, id);
           pt.execute();
            
        }catch(Exception ex){
            ex.printStackTrace();;
        }
    }
}
