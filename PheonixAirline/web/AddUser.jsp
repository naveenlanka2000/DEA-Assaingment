
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Slide Navbar</title>
        <link rel="stylesheet" type="text/css" href="css/login page.css">
<link href="https://fonts.googleapis.com/css2?family=Jost:wght@500&display=swap" rel="stylesheet">

    </head>
    <body>
        <div class="main">
           <!--<input type="checkbox" id="chk" aria-hidden="true">-->

           <div class="signup">
               <form name="register" action="<%=request.getContextPath()%>/RegisterServlet" method="POST">
                
                   <br>
                    <label for="chk" aria-hidden="true">Add User</label><br>
                   
                   <input type="text" name="first_name" placeholder="First Name" value=""  required=""/><br/>
                <input type="text" name="last_name" placeholder="Last Name" value=""  required="" /><br/>
                <input type="text" name="username" placeholder="User Name" value=""  required="" /><br/>
                <input type="text" name="email" value="" placeholder="Email" required="" /><br/>
                <input type="password" name="password" value="" placeholder="Password"  required=""/><br/>
                <input type="password" name="r_password" placeholder="Re-Type Password" value="" required="" /><br/>
<!--                <textarea name="address" rows="4" cols="50"  required=""></textarea><br/>
                <input type="text" name="phone_number"  placeholder="Phone Number"value=""  required=""/><br/>
                 -->
                <select name="role"  required="">
                    <option value="client">Client</option>
                    <option value="staffg1">Grade 1 Staff</option>
                    <option value="staffg2">Grade 2 Staff</option>
                    <!--                    <option value="admin">Admin</option>-->
                </select><br/>
                <button type="submit">Sign Up</button>

            </form>
           </div>
           
            
            <a href="login.jsp">Login</a>
            <span style="color:red"><%=(request.getAttribute("errMessage") == null) ? "" : request.getAttribute("errMessage")%></span>
        </div>
    </body>
</html>
