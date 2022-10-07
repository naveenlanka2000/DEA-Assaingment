package com.phoenixairline.controllers.ticketmanagement;

import com.phoenixairline.models.Ticket;
import com.phoenixairline.models.TicketAccess;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

public class CreateTicketServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
   
        int ticketId = 1;
        int flightId = Integer.parseInt(request.getParameter("flightId"));
        System.out.println(flightId);
        
        //get flight details to form
        List selectedValues = new ArrayList();
        TicketAccess ticketaccess = new TicketAccess();
        selectedValues = ticketaccess.getSelectedData(flightId);
        request.setAttribute("selectedResult", selectedValues);
        RequestDispatcher rd = request.getRequestDispatcher("AllFlightDetails.jsp");
        rd.forward(request, response);
        
        
        String classId = request.getParameter("class");
        int seatId = Integer.parseInt(request.getParameter("seatNumber"));
        int seats = Integer.parseInt(request.getParameter("seats"));//check with db date type
        float price = Float.parseFloat(request.getParameter("flightPrice"));
        switch (classId) {
            case "101":
                price = (float) (price * 1.9)*seats;
                break;
            case "102":
                price = (float) (price * 1.5)*seats;
                break;
            default:
                price = price*seats;
                break;
        }

        HttpSession session = request.getSession();
        int userId = (int) session.getAttribute("user_id");
        System.out.println("user id from session " + userId);
        
        System.out.println("before send");
        Ticket ticketBean = new Ticket(ticketId,price,userId,flightId,seatId,classId);
        TicketAccess ticketAccess = new TicketAccess();

        System.out.println("After send");
        String result = ticketAccess.createTicket(ticketBean);
        PrintWriter out = response.getWriter();
        out.println(result);
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
