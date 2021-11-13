/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.appointment.project;

import java.sql.*;
/**
 *
 * @author User
 */
public class ConnectionDao {
    private static Connection con;

    public static Connection getCon() throws SQLException {
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            con=DriverManager.getConnection("jdbc:mysql://localhost:3306/abc_hospital","root","");
        }catch (Exception ex) {
            ex.printStackTrace();
        } 
        return con;
    }
}
