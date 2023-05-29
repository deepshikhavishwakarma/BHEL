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
			text-align: center;k
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
        </button>
        <a href="Login.jsp" id="nav-btn" class="btn me-2">Login</a>
        <!-- <button type="button" class="btn btn-primary me-3" href="Login.jsp">
          Login
        </button> -->
      </div>
      

    </div>
    <!-- Container wrapper -->
  </nav>
  <!-- Navbar -->
</header>
<!--Main Navigation-->
	
	<div class="Form-Page">
		<form action="Signup.jsp" method="post">
			<div class="card" style="width: 25rem;">
            <div class="card-body" >
            <input type="text" class="input-group-text" id="inputGroup-sizing-default" name="ID" placeholder="ID" style="margin-left: 4.8rem;"><br>
            <input type="text" class="input-group-text" id="inputGroup-sizing-default" name="username" placeholder="UserName" style="margin-left: 4.8rem;"><br>
  	        <input type="password" class="input-group-text" id="inputGroup-sizing-default" name="password" placeholder="Password" style="margin-left: 4.8rem;"><br>
  	        <select class="input-group-text" id="inputGroup-sizing-default" name="functionalarea" style="margin-left: 4.8rem;" required>
                              <option selected>Functional area</option>
                              <option>Quality</option>
                              <option>IT</option>
                              <option>Engineering</option>
                              <option>Planning</option>
                              <option>Material Management</option>
                              <option>Finance</option>
                            </select>
  	        <button type="submit" class="btn btn-primary mt-3" value="Submit">Submit</button>
  	        
  	        <button class="btn btn-primary mt-3">Cancel</button>

            </div>
            </div>

  	        
        </form>
	</div>
  <%
if(request.getParameter("ID")!=null){
	 String ID = request.getParameter("ID");
	 String Username = request.getParameter("username");
     
     String Password = request.getParameter("password");
     String Fnarea = request.getParameter("functionalarea");
     String Status = "check";
     out.println(ID);
     out.println(Username);
 	 out.println(Password);
 	 out.println(Fnarea);
 	 out.println(Status);
 	 
 	 try{
 		Class.forName("com.mysql.cj.jdbc.Driver");
 		Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/bhel", "root", "");
		String q1 = "Insert into bhel_login1(ID,username,password,functionalarea,status)values(?,?,?,?,?);";
		PreparedStatement pstmt = con.prepareStatement(q1);
		pstmt.setString(1, ID);
		pstmt.setString(2, Username);
		pstmt.setString(3, Password);
		pstmt.setString(4,Fnarea);
		pstmt.setString(5,Status);
		pstmt.executeUpdate();
		out.println("Data Inserted");
		request.setAttribute("message", "Registration has done successfully");	
    	
		
 	 }catch(Exception e){
 		 
 	 }
 	 }
%>
</body>
</html>