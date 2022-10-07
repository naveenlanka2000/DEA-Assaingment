package com.phoenixairline.controllers.FlightControllers;

import com.phoenixairline.models.Flight;
import com.phoenixairline.models.FlightAccess;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

public class DeleteFlightInfoServlet extends HttpServlet {

    private static final long serialVersionUID = 1L;

    public DeleteFlightInfoServlet() {
        super();
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {
        response.setContentType("text/html");
        String FlightId = request.getParameter("flightId");

        Flight flightBean = new Flight(FlightId);
        FlightAccess flightAccess = new FlightAccess();

        String result = flightAccess.DeleteFlightDetails(flightBean);
        PrintWriter out = response.getWriter();
        out.println(result);

    }

}
