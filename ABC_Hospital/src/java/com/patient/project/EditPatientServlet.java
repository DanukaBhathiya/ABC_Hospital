/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.patient.project;

import com.appointment.project.ConnectionDao;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author User
 */
public class EditPatientServlet extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet EditPatientServlet</title>");            
            out.println("</head>");
            out.println("<body>");
            
            int pid = Integer.parseInt(request.getParameter("pid"));
            String pnumber = request.getParameter("pnumber");
            String name = request.getParameter("name");
            String age = request.getParameter("age");
            String gender = request.getParameter("gender");          
            String nic = request.getParameter("nic");
            String address = request.getParameter("address");
            String email = request.getParameter("email");
            String cnumber = request.getParameter("cnumber");          
            String blood = request.getParameter("blood");
            String description = request.getParameter("description");
            String branch = request.getParameter("branch");
            String ward = request.getParameter("ward");
            String entrydate = request.getParameter("entrydate");
            String dischargedate = request.getParameter("dischargedate");
            
            //patients patient = new patients(name,age,gender,number,email,doctor,description,branch,date);

            //Create a patient object and set those vlaue to book object
            patients patient = new patients();
            patient.setPnumber(pnumber);
            patient.setName(name);
            patient.setAge(age);
            patient.setGender(gender);
            patient.setNic(nic);
            patient.setAddress(address);
            patient.setEmail(email);
            patient.setCnumber(cnumber);
            patient.setBlood(blood);
            patient.setDescription(description);
            patient.setBranch(branch);
            patient.setWard(ward);
            patient.setEntrydate(entrydate);
            patient.setDischargedate(dischargedate);
            patient.setId(pid);

            //create new PatientsDao object
            try {
                PatientsDao adao = new PatientsDao(ConnectionDao.getCon());
                if (adao.editPatientInfo(patient)) {
                    response.sendRedirect("patient.jsp");
                } else {
                    out.print("Error");
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
            
            out.println("</body>");
            out.println("</html>");
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
