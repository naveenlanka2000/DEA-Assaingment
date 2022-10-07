<%@page import="java.util.Iterator"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
    <head>
        
        
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>User Informations</title>
    <!--main (css)-->
    <link rel="stylesheet" href="css/main.css" />
    <!--(css)-->
    <link rel="stylesheet" href="css/Flightinfo.css" />


    </head>
    <% //In case, if StaffG1 session is not set, redirect to Login page
        if ((request.getSession(false).getAttribute("staffg1") == null)) {
    %>
    <%}%>
    <body>
        
        

        <div class="container">
      <div class="navigation">
        <div class="logo">
            <img src="media/Phoenixlogo.png" style="width: 200px; height:auto ; padding-top: 1vh;" alt="">
        </div>
        <ul>
            <li></li>
            <li>
                <a href="flightsManagement.jsp">
                    <span class="title">Flights Management</span>
                </a>
            </li>
            <li>
                <a href="staffg1.jsp">
                    <span class="title">User Management</span>
                </a>
            </li>
<!--            <li>
                <a href="#">
                    <span class="icon"><ion-icon name="chatbubble-outline"></ion-icon></span>
                    <span class="title">Messages</span>
                </a>
            </li>-->
            <li>
                <a href="html/Userprofile.html">
                    <span class="title">Ticket Management</span>
                </a>
            </li>
<!--            <li>
                <a href="#">
                    <span class="icon"><ion-icon name="settings-outline"></ion-icon></span>
                    <span class="title">Settings</span>
                </a>
            </li>-->
            <!-- <li>
                <a href="#">
                    <span class="icon"><ion-icon name="lock-closed-outline"></ion-icon></span>
                    <span class="title">Password</span>
                </a>
            </li> -->
            <li>
    <a href="<%=request.getContextPath()%>/LogoutServlet">
        <span class="icon"><ion-icon name="log-out-outline"></ion-icon></span>
        <span class="title">Sign Out</span>
    </a>

            </li>
           
        </ul>
    </div>
            
            <!--end navbar-->
            

       
 
            <!--===========Main=============-->
      <div class="main">
        <form  action="SearchUsers_sServlet" method="POST">
          <div class="topbar">
              
            <div class="dropdown"><input class="drop-btn" type="text" name="search_user" placeholder="User Name">
                <select class="drop-btn" name="search_type">
                  <option value="username">Username</option>
                  <option value="email">Email </option>
                  
                </select>
                
                            <button type="submit"  value="View Users" name="view_users" class="drop-btn">View User</button>

            </div>
  
<!--            <div class="dropdown">Destination Airport 
              <select class="drop-btn" name="" id="">
                <option value="">country 1</option>
                <option value="">country 2</option>
                <option value="">country 3</option>
                <option value="">country 4</option>
              </select>
            </div>-->
  
            <!--<label for="" class="cal">Landing Date  <input type="date" id="cale" name="d-date" /></label>-->
            
          </div>
        </form>
          

        <!--<div style="text-align: right"><a href="<%=request.getContextPath()%>/LogoutServlet">Logout</a></div>-->


        <table border="1">
            <thead>
            </thead>
        </table>
            
             <!--=============flight management============-->
        <div class="details">
          <div class="recent">
            <div class="cardheader">
              <h2>User Management </h2>
              <a href="AddUser.jsp" style="text-decoration: none" class="status ok">Add User</a>
            </div>

            <table>
                <thead >
                    <tr style="box-shadow: 0 1px 10px black; border-radius: 12px; line-height: 4vh">
                  <td>First Name</td>
                  <td>Last Name</td>
                  <td>Email</td>
                  <td>User Name</td>
                  <td>User Type</td>
                  <td>Action</td>
                </tr>
              </thead>

              <tbody>
                  <%
                      if ((request.getAttribute("result") != null)) {
                        List user_list = new ArrayList();
                        user_list = (List) request.getAttribute("result");
                        Iterator it = user_list.iterator();
                        while (it.hasNext()) {
                  %>
                  
                <tr>
                  <td><%=it.next()%></td>
                    <td><%=it.next()%></td>
                    <td><%=it.next()%></td>
                    <td><%=it.next()%></td>
                    <td><%=it.next()%></td>
                  <td>
                      <form action="" method="POST">
                          <input type="submit"  class="status ok" value="Update" />
                      </form>
                      <br>
                      <form action="" method="POST">
                          <input type="submit" class="status not" value="Delete" />

                      </form>
                    

                  </td>
                </tr>
                 <%}
                    }%>
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