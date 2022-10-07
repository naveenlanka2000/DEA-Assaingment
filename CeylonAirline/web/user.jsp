<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
    <head>
        <title>User Page</title>
    <!--(main css)-->
    <link href="css/main.css" rel="stylesheet" type="text/css"/>
    
<!--    css-->
<link href="css/Flightinfo.css" rel="stylesheet" type="text/css"/>
    </head>
    <% //In case, if Admin session is not set, redirect to Login page
        if ((request.getSession(false).getAttribute("client") == null)) {
    %>
    <jsp:forward page="/login.jsp"></jsp:forward>
    <%}%>
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
         <!--===========Main=============-->
      <div class="main">
        <form action="" method="POST">
          <div class="topbar">
            <div class="dropdown">Departure Airport 
                <select class="drop-btn" name="" id="">
                  <option value="">country 1</option>
                  <option value="">country 2</option>
                  <option value="">country 3</option>
                  <option value="">country 4</option>
                </select>
            </div>
  
            <div class="dropdown">Destination Airport 
              <select class="drop-btn" name="" id="">
                <option value="">country 1</option>
                <option value="">country 2</option>
                <option value="">country 3</option>
                <option value="">country 4</option>
              </select>
            </div>
  
            <label for="" class="cal">Landing Date  <input type="date" id="cale" name="d-date" /></label>
              <button class="drop-btn">Submit</button>
              <button class="drop-btn">Reset</button>
            
          </div>
        </form>
        

        <!--=============user management============-->
        <div class="details">
          <div class="recent">
            <div class="cardheader">
              <h2>Flights</h2>
              <a href="#" class="btn">View All</a>
            </div>

            <table>
              <thead>
                <tr>
                  <td>Take-off Airport</td>
                  <td>Take-off Date</td>
                  <td>Take-off Time</td>
                  <td>Landing Airport</td>
                  <td>Landing Date</td>
                  <td>Landing Time</td>
                </tr>
              </thead>

              <tbody>
                <tr>
                  <td></td>
                  <td></td>
                  <td></td>
                  <td></td>
                  <td></td>
                  <td></td>
                  <td>
                    <input type="submit" class="status ok" value="Book Now" />
                  </td>
                </tr>
              </tbody>

              <tbody>
                <tr>
                  <td></td>
                  <td></td>
                  <td></td>
                  <td></td>
                  <td></td>
                  <td></td>
                  <td>
                    <input type="submit" class="status ok" value="Book Now" />
                  </td>
                </tr>
              </tbody>

              <tbody>
                <tr>
                  <td></td>
                  <td></td>
                  <td></td>
                  <td></td>
                  <td></td>
                  <td></td>
                  <td>
                    <input type="submit" class="status ok" value="Book Now" />
                  </td>
                </tr>
              </tbody>

              <tbody>
                <tr>
                  <td></td>
                  <td></td>
                  <td></td>
                  <td></td>
                  <td></td>
                  <td></td>
                  <td>
                    <input type="submit" class="status ok" value="Book Now" />
                  </td>
                </tr>
              </tbody>

              <tbody>
                <tr>
                  <td></td>
                  <td></td>
                  <td></td>
                  <td></td>
                  <td></td>
                  <td></td>
                  <td>
                    <input type="submit" class="status ok" value="Book Now" />
                  </td>
                </tr>
              </tbody>

              <tbody>
                <tr>
                  <td></td>
                  <td></td>
                  <td></td>
                  <td></td>
                  <td></td>
                  <td></td>
                  <td>
                    <input type="submit" class="status ok" value="Book Now" />
                  </td>
                </tr>
              </tbody>

              <tbody>
                <tr>
                  <td></td>
                  <td></td>
                  <td></td>
                  <td></td>
                  <td></td>
                  <td></td>
                  <td>
                    <input type="submit" class="status ok" value="Book Now" />
                  </td>
                </tr>
              </tbody>

              <tbody>
                <tr>
                  <td></td>
                  <td></td>
                  <td></td>
                  <td></td>
                  <td></td>
                  <td></td>
                  <td>
                    <input type="submit" class="status ok" value="Book Now" />
                  </td>
                </tr>
              </tbody>
            </table>
          </div>
        </div>
      </div>
    </div>
    <!--========scripts=======-->
    <script src="adminmain.js"></script>

    <!--ionicons-->
    <script
      type="module"
      src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.esm.js"
    ></script>
    <script
      nomodule
      src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.js"
    ></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.js"></script>
  

    </body>
</html>