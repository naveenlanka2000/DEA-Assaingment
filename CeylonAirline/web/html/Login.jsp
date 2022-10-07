<!DOCTYPE html>
<html lang="en">
<head>
	<title>Slide Navbar</title>
	<link rel="stylesheet" type="text/css" href="../css/login page.css">
<link href="https://fonts.googleapis.com/css2?family=Jost:wght@500&display=swap" rel="stylesheet">

</head>
<body>
	<div class="main">  	
        <input type="checkbox" id="chk" aria-hidden="true">
        
        <div class="login">
            <form name="login" action="<%=request.getContextPath()%>/LoginServlet" method="post">
                
                <br><br><br><br><br>
                <label for="chk" aria-hidden="true">Login</label><br>
                <input type="text" name="username" placeholder="User name" required="">
                <input type="password" name="password" placeholder="Password" required=""><br>
                
                <button type="submit">Login</button>
                
                <table>
                     <tr>
                        <td>
                            <%=(request.getAttribute("errMessage") == "User is registered") ? "<span style = 'color:green'>" : "<span style = 'color:red'>"%>
                            <%=(request.getAttribute("errMessage") == null) ? "" : request.getAttribute("errMessage")%>
                        </td>
                    </tr>
                    
                </table>
            </form>
        </div>
        <div class="signup">
		<form>
                                    
                                    <br>
					<label for="chk" aria-hidden="true">Sign Up</label><br>
          <input type="text" name="first_name" placeholder="First Name" required="">
          <input type="text" name="last_name" placeholder="Last Name" required="">
          <input type="text" name="username" placeholder="User Name" required="">
					<input type="email" name="email" placeholder="Email" required="">
					<input type="password" name="password" placeholder="Password" required="">
          <input type="password" name="r_password" placeholder="Re-Type Password" required="">
					<button type="submit">Sign Up</button><br><br><br><br><br><br><br><br><br>
                    
					<label style="bottom: 0%;" for="chk" aria-hidden="true">Sign Up</label>
		</form>
	</div>
	</div>
</body>
</html>

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
