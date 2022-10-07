<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<title>Slide Navbar</title>      
        <link rel="stylesheet" type="text/css" href="css/login page.css">
<link href="https://fonts.googleapis.com/css2?family=Jost:wght@500&display=swap" rel="stylesheet">

    </head>
    <body>
        <div class="main">  	
        <input type="checkbox" id="chk" aria-hidden="true">
            
        <div class="login">
            <form name="login" action="<%=request.getContextPath()%>/LoginServlet" method="post">

                <br><br><br><br><br>
                <label for="chk" aria-hidden="true">Login</label><br>
                <input type="text" name="username" placeholder="User name" required="" />
                <input type="password" name="password"  placeholder="Password" required="" />
                 
                            <%=(request.getAttribute("errMessage") == "User is registered") ? "<span style = 'color:green'>" : "<span style = 'color:red'>"%>
                            <%=(request.getAttribute("errMessage") == null) ? "" : request.getAttribute("errMessage")%>
                
                 <button type="submit">Login</button>
                
            </form>
            <a href="register.jsp">Don't hava an account?</a>
        </div>        
    </body>
</html>