<!-- 
CDN  -> Content Delivery network
 -->
 <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>form Page creation</title>
	<!-- CSS only -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
    <!-- JavaScript Bundle with Popper -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4" crossorigin="anonymous"></script>
	<style>
		body{
			background: rgb(238,174,202);
            background: radial-gradient(circle, rgba(238,174,202,1) 0%, rgba(163,148,233,1) 100%);
		}
		.Form-Page{
			text-align: center;
			margin-left: 15rem ;
			margin-right: 15rem ;
			
			margin-top: 3rem;
		}
		.card{
			text-align: center;
			align-items: center;
			margin: 200px 0px 13px 230px ;
			padding: 12px 0px 12px 0px;
		}
		h1{
			margin-left: 37rem ;
			font-style: cursive,Lobster;
			margin-top: 3rem;
			color: blue;
			font-family: Lobster;

		}
	</style>
</head>
<body>
	<!-- Navbar -->
  <nav id="main-navbar" class="navbar navbar-expand-lg navbar-light bg-white fixed-top">
    <!-- Container wrapper -->
    <div class="container-fluid">
      <!-- Toggle button -->

      <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarTogglerDemo01" aria-controls="navbarTogglerDemo01" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>


      <!-- <button class="navbar-toggler" type="button" data-mdb-toggle="collapse" data-mdb-target="#sidebarMenu"
        aria-controls="sidebarMenu" aria-expanded="false" aria-label="Toggle navigation">
        <i class="fas fa-bars"></i>
      </button> -->

      <!-- Brand -->
      <a class="navbar-brand" href="#">
        <img src="download.png" height="60" alt="BHEL Logo"
          loading="lazy" />
      </a>
      <!-- Search form -->
      <form class="d-none d-md-flex input-group w-auto my-auto" >
        <input autocomplete="off" type="search" class="form-control rounded"
          placeholder='Search (ctrl + "/" to focus)' style="min-width: 230px;" />
        <span class="input-group-text border-0"><i class="fas fa-search"></i></span>
      </form>
      <div>
        <button type="submit">
        <a href="index.jsp"><img src="https://img.icons8.com/material-outlined/24/null/home-page.png" href="index.jsp"/>
        </a>
        <!-- <img src="WEB-INF/icons8-home-page-30.png" height="40" alt="Home icon"/>
  <span class="fa-solid fa-envelope"></span> Email Us! -->
</button>
        <a href="index.jsp"><i class="fa-solid fa-house"></i></a>
        <button type="button" class="btn btn-link me-3">
         <a href="Signup.jsp" >Sign up for free</a> 
        </button>
      </div>
      

    </div>
    <!-- Container wrapper -->
  </nav>
  <!-- Navbar -->
</header>
<!--Main Navigation-->
	<h2>Login</h2>
	<div class="Form-Page">
		<form action="Login.jsp" method="post">
			<div class="card" style="width: 25rem;">
            <div class="card-body" >
            <input type="text" class="input-group-text" id="inputGroup-sizing-default" name="ID" placeholder="ID Number" id="t1" style="margin-left: 1rem;"><br>
  	        <input type="password" class="input-group-text" id="inputGroup-sizing-default" name="password" placeholder="Password" style="margin-left: 1rem;"><br>
  	        <button type="submit" class="btn btn-primary mb-3" value="Submit">Login</button><br>
  	        <a href="#">Forgotton Password</a><br>
  	        <button class="btn btn-link mt-3">
  	        <a href="Signup.jsp"  >Create New Account</a>
  	        </button>

            </div>
            </div>

  	        
        </form>
	</div>
	<%
		// Get the username and password from the form submission
		String ID = request.getParameter("ID");
	   // System.out.println("ID 1: "+ID);
		String password = request.getParameter("password");
		//String Fnarea=request.getParameter("functionalarea");
		//System.out.println("Fnarea 1 :"+Fnarea);
		
		//session.setAttribute("ID",ID); 
		//session.setAttribute("password",password);
		
		
		
		//session.setAttribute("functionalarea",Fnarea);
		
		//session.setAttribute("fun")
		
		
		// Connect to the database
		Class.forName("com.mysql.cj.jdbc.Driver");
		Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/bhel", "root", "");
		
		// Prepare the SQL query to select the user with the given username and password
		String sql = "SELECT * FROM bhel_login1 WHERE ID = ? AND password = ?";
		PreparedStatement pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, ID);
		pstmt.setString(2, password);
		
		/* pstmt.setString(3,Fnarea); */
		
		// Execute the query and check if a matching user was found
		ResultSet rs = pstmt.executeQuery();
		if (rs.next()) {
			// If a matching user was found, redirect to the home page
			HttpSession session1 = request.getSession(true);   
			 session1.setAttribute("User_ID",rs.getString("ID"));
			 session1.setAttribute("Fnarea",rs.getString("functionalarea"));
			
			//System.out.println("Fnarea is ::"+rs.getString("functionalarea"));
			 
		    request.getRequestDispatcher("welcome.jsp").forward(request, response);
		   // response.sendRedirect("change_fn_area.jsp");
		   
		    
		} else {
			// If a matching user was not found, display an error message
			out.print("Invalid username or password.");
		}
		
		// Close the database connection
		conn.close();
	%>


</body>
</html>

