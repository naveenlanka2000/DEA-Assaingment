package com.phoenixairline.controllers;

import com.phoenixairline.models.SearchUsersAccess;
import java.io.IOException;
import java.util.List;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

public class SearchUsers_aServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String su = request.getParameter("search_user");
        String st = request.getParameter("search_type");

        SearchUsersAccess vuAccess = new SearchUsersAccess();

        List userlist = vuAccess.viewRow_admin(su, st);
        RequestDispatcher rd = request.getRequestDispatcher("admin.jsp");
        request.setAttribute("dc", userlist);
        rd.forward(request, response);
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
