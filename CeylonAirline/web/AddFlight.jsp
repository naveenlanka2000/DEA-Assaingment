<%-- 
    Document   : AddFlight
    Created on : May 19, 2022, 6:14:34 PM
    Author     : dell
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Add Flight Details</title>
    </head>
    <body>
        <h1>Add Flight Details</h1>
        <div>
            <form method="post" action="<%=request.getContextPath()%>/AddFlightInfoServlet">
                Flight id <input type="hidden" name="flight_Id" value="1"/><br>
                Aircraft Id <input type="text" name="aircraft_id">
                Takeoff_airport  <input type="text" name="takeoff_airport"/><br>
                Takeoff Time  <input type="text" name="takeoff_time"/><br>
                Takeoff Date  <input type="text" name="takeoff_date"/><br>
                Landing airport  <input type="text" name="landing_airport"/><br>
                Landing Time  <input type="text" name="landing_time"/><br>
                Landing Date  <input type="text" name="landing_date"/><br>
                Gate No <input type="text" name="gate"/><br>
                Cost for Flight <input type="text" name="cost">
                <input type="submit" name="Add Flight"/>
                <input type="reset" name="Cancel"/>
            </form>
        </div>
    </body>
</html>
