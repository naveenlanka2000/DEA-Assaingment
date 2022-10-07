package com.phoenixairline.controllers.FlightControllers;

import com.phoenixairline.models.Flight;
import com.phoenixairline.models.FlightAccess;
import java.io.IOException;
import java.util.List;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

public class SearchFlightInfoServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String takeoff_date = request.getParameter("takeoff_date");
        String takeoff_airport = request.getParameter("takeoff_airport");
        String landing_airport = request.getParameter("landing_airport");
        System.out.println(takeoff_date);

        Flight flightBean = new Flight(takeoff_date, landing_airport, takeoff_airport);

        FlightAccess flightAccess = new FlightAccess();
        List SearchFlightDetails = flightAccess.searchData(flightBean);
        request.setAttribute("result", SearchFlightDetails);
        RequestDispatcher rd = request.getRequestDispatcher("flightsManagement.jsp");
        rd.forward(request, response);
    }

}
