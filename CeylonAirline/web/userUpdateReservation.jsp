<%-- 
    Document   : userUpdateReservation
    Created on : May 21, 2022, 10:02:40 AM
    Author     : Heshan Kalhara
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Update My Reservation</title>
    </head>
    <body>
        <h1>Fill Below Reservation form to update your Reservations</h1>
        <form action="UpdateTicketServlet" method="POST">
            <table border="1">
                <tbody>
                    <tr>
                        <td>Reservation Id</td>
                        <td><input type="text" name="reservationId" value="" required/></td>
                    </tr>
                    <tr>
                        <td>Passport Number</td>
                        <td><input type="text" name="passportNumber" value=""/></td>
                    </tr>
                    <tr>
                        <td>Booking Date</td>
                        <td><input type="text" name="date" value="" /></td>
                    </tr>
                    <tr>
                        <td>Class Type</td>
                        <td><select name="class">
                                <option value="business">Business</option>
                                <option value="economy">Economy</option>
                                <option value="1st class">1st class</option>
                            </select></td>
                    </tr>
                    <tr>
                        <td>Number of seats</td>
                        <td><input type="number" name="seats" value="" /></td>
                    </tr>
                    <tr>
                        <td><input type="reset" value="Clear" /></td>
                        <td><input type="submit" value="Update" /></td>
                    </tr>
                </tbody>
            </table>

        </form>
    </body>
</html>
