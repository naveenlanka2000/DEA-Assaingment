package com.phoenixairline.controllers;

import com.phoenixairline.models.AdminDCAccess;
import java.io.IOException;
import java.util.List;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

public class AdminDCServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        AdminDCAccess adc = new AdminDCAccess();

        List mtlist = adc.getMonitorTable();
        request.setAttribute("monitor_table", mtlist);

        List atlist = adc.getApproveTable();
        request.setAttribute("approve_table", atlist);

        RequestDispatcher rd = request.getRequestDispatcher("admin.jsp");
        rd.forward(request, response);

    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }
}
