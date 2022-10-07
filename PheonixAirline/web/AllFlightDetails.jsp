

<%@page import="java.util.Iterator"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="css/main.css" rel="stylesheet" type="text/css"/>
        <link href="css/Flightinfo.css" rel="stylesheet" type="text/css"/>
        <title>All Flight Details</title>
    </head>
    <body>
        
        <!--Navigation-->
    <div class="container">
      <div class="navigation">
        <div class="logo">
            <img src="media/Phoenixlogo.png" style="width: 200px; height:auto ; padding-top: 1vh;" alt="">
        </div>
        <ul>
            <li></li>
            <li>
                <a href="<%=request.getContextPath()%>/ViewFlightInfoServlet">
                    <span class="icon"><ion-icon name="home-outline"></ion-icon></span>
                    <span class="title">Filght Informations</span>
                </a>
            </li>
            <li>
                <a href="<%=request.getContextPath()%>/SelectTicketServlet">
                    <span class="icon"><ion-icon name="people-outline"></ion-icon></span>
                    <span class="title">Reservations</span>
                </a>
            </li>
            <li>
                <a href="html/Userprofile.jsp">
                    <span class="icon"><ion-icon name="people-outline"></ion-icon></span>
                    <span class="title">Profile</span>
                </a>
            </li>
            <li>
                <a href="<%=request.getContextPath()%>/LogoutServlet">
                    <span class="icon"><ion-icon name="log-out-outline"></ion-icon></span>
                    <span class="title">Sign Out</span>
                </a>
            </li>
           
        </ul>
    </div>
        
        <div class="main">
        <form action="SearchFlightInfoServlet" method="POST">
          <div class="topbar">
            <div class="dropdown">Departure Airport 
                <select class="drop-btn" name="takeoff_airport" id="">
                  <option value="Colombo">Colombo</option>
                  <option value="London">London</option>
                  <option value="Melbourne">Melbourne</option>
               </select>
            </div>
   
            <div class="dropdown">Destination Airport 
              <select class="drop-btn" name="landing_airport" id="">
                <option value="Colombo">Colombo</option>
                <option value="South Africa">South Africa</option>
                <option value="England">England</option>
              </select>
            </div>
  
              <input class="drop-btn" type="date" name="takeoff_date" value="" />
              
                <input class="drop-btn"  type="submit" name="Search"/>
                <input class="drop-btn"  type="reset" name="Cancel"/>
            
          </div>
        </form>
        
        
<!--        Flights-->
        
        <div class="details">
          <div class="recent">
            <div class="cardheader">
              <h2>Flights</h2>
              <a href="#" class="btn">View All</a>
            </div>
             
        <table>
            <thead style="box-shadow: 0 1px 10px black; padding: 20px">
            <th></th>
            <th>Takeoff Airport</th>
            <th>Takeoff Time</th>
            <th>Takeoff Date</th>
            <th>Landing Airport</th>
            <th>Landing Time</th>
            <th>Landing Date</th>
            <th>Gate</th>
            <th>Cost</th>
            <th>Aircraft</th>
            <th>Action</th>
        </thead>
        <tbody>
            <%
                if ((request.getAttribute("result") != null)) {
                    List data = new ArrayList();
                    data = (List) request.getAttribute("result");
                    Iterator itr = data.iterator();
                    while (itr.hasNext()) {
            %>
            <tr>
        <form action="CreateTicketServlet" method="POST">
                <td><input type="hidden" name="flightId" value="<%=itr.next()%>"/></td>
                <td><%=itr.next()%></td>
                <td><%=itr.next()%></td>
                <td><%=itr.next()%></td>
                <td><%=itr.next()%></td>
                <td><%=itr.next()%></td>
                <td><%=itr.next()%></td>
                <td><%=itr.next()%></td>
                <td><%=itr.next()%></td>
                <td><%=itr.next()%></td>
                <td><input type="submit" class="status ok" value="Book now" /></td>
        </form>

                
            </tr>
            <%}
                }%>
        </tbody>
    </table>

    <form action="CreateTicketServlet" method="POST">
        <table border="1">
            <%
                if ((request.getAttribute("selectedResult") != null)) {
                    List data = new ArrayList();
                    data = (List) request.getAttribute("selectedResult");
                    Iterator itr = data.iterator();
                    while (itr.hasNext()) {
            %>
            <tbody>
                <tr>
                    <td>TO</td>
                    <td><%=itr.next()%></td>
                </tr>
                <tr>
                    <td>Air Time</td>
                    <td><%=itr.next()%></td>
                </tr>
                <tr>
                    <td>Takeoff Date</td>
                    <td><%=itr.next()%></td>
                </tr>
                <tr>
                    <td>From</td>
                    <td><%=itr.next()%></td>
                </tr>
                <tr>
                    <td>Land Time</td>
                    <td><%=itr.next()%></td>
                </tr>
                <tr>
                    <td>Land Date</td>
                    <td><%=itr.next()%></td>
                </tr>
                <tr>
                    <td>Gate</td>
                    <td><%=itr.next()%></td>
                </tr>
                <tr>
                    <td>Cost</td>
                    <td><%=itr.next()%></td>
                </tr>
                <tr>
                    <td>Aircraft</td>
                    <td><%=itr.next()%></td>
                </tr>
                <tr>
                    <td>Class</td>
                    <td><select name="class" required>
                            <option value="101">1st class</option>
                            <option value="102">Business</option>
                            <option value="103">Economy</option>
                        </select></td>
                </tr>
                <tr>
                    <td>Seat</td>
                    <td><select name="seatNumber" required>
                            <option value="1">1A</option>
                            <option value="2">B1</option>
                            <option value="3">C1</option>
                        </select></td>
                </tr>
                <tr>
                    <td>Number of seats</td>
                    <td><input type="number" name="seats" value="" size="3" /></td>
                </tr>
                <tr>
                    <td><input type="reset" value="Cancel" /></td>
                    <td><input type="submit" value="Book Reservation" /></td>
                </tr>
            </tbody>
            <%}
                }%>
        </table>
    </form>
        </div>
        </div>
        </div>
</body>
</html>