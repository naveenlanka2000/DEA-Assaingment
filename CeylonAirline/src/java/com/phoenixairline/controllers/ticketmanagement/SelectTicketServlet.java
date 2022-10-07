package com.phoenixairline.controllers.ticketmanagement;

import com.phoenixairline.models.TicketAccess;
import java.io.IOException;
import java.util.List;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

public class SelectTicketServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        doPost(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        TicketAccess ticketAccess = new TicketAccess();
        //HttpSession session = request.getSession();
        int userId = 0; //session.getAttribute("user");

        HttpSession session = request.getSession();
        userId = (int) session.getAttribute("user_id");
        System.out.println("user id from session " + userId);

        List reservationValues = ticketAccess.selectTicket(userId);
        request.setAttribute("reservationResult", reservationValues);
        RequestDispatcher rd = request.getRequestDispatcher("userMyReservation.jsp");
        rd.forward(request, response);
    }

}
