<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>Welcome page</title>
  
  <link rel="stylesheet" href="style2.css">
  
  <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">

    	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
	<script src="https://use.fontawesome.com/releases/v5.0.8/js/all.js"></script>
  
  
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-aFq/bzH65dt+w6FI2ooMVUpc+21e0SRygnTpmBvdBgSdnuTN7QbdgL+OapgHtvPp" crossorigin="anonymous">
  
  
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha2/dist/js/bootstrap.bundle.min.js" integrity="sha384-qKXV1j0HvMUeCBQ+QVp7JcfGl760yU08IQ+GpUo5hlbpg51QRiuqHAJz8+BrxE/N" crossorigin="anonymous"></script>
<!-- font awesome library  -->

<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css" integrity="sha512-CE1y9q8m5F5y/EfjwzZZV7Q2tLOaWV7vUB1xrAsfbKj9X4lHiBn7vNnL/4ulmbjK8Sf/1NvzEBy0+dH9i9CT4Q==" crossorigin="anonymous" referrerpolicy="no-referrer" />
<!-- Font Awesome -->
</head>
<style>
  body {
background-color: #fbfbfb;
}
@media (min-width: 991.98px) {
main {
padding-left: 240px;
}
}

/* Sidebar */
.sidebar {
  background-color: #b3b3ff;
position: fixed;
top: 0;
bottom: 0;
left: 0;
padding: 58px 0 0; /* Height of navbar */
box-shadow: 0 2px 5px 0 rgb(0 0 0 / 5%), 0 2px 10px 0 rgb(0 0 0 / 5%);
width: 240px;
z-index: 600;
}

@media (max-width: 991.98px) {
.sidebar {
width: 100%;
}
}
.sidebar .active {
border-radius: 5px;
box-shadow: 0 2px 5px 0 rgb(0 0 0 / 16%), 0 2px 10px 0 rgb(0 0 0 / 12%);
}

.sidebar-sticky {
position: relative;
top: 0;
height: calc(100vh - 48px);
padding-top: 0.5rem;
overflow-x: hidden;
overflow-y: auto; /* Scrollable contents if viewport is shorter than content. */
}

#main-navbar {
/* background-color:red !important; */
background: linear-gradient(to bottom, #4b6cb7, #5d8bc9, #6fa9db);
}
.container-fluid{
background-color:white;
}

#nav-btn {
  display: inline-block;
  width: 100px;
  height: 45px;
 
  background-color: #007bff;
  color: #fff;
  text-align: center;
  /* line-height: 50px; */
  font-size: 18px;
  cursor: pointer;
  transition: background-color 0.3s ease;
  background-image: linear-gradient(to right, #7474BF 0%, #348AC7  51%, #7474BF  100%);
            
  border-radius:10px;
}
#nav-btn:hover {
  background-color: #0056b3;
}
.btn{
  border-radius:12px;
  background:linear-gradient(to bottom, #4b6cb7, #5d8bc9, #6fa9db);
  margin-left:25rem;
  display:flex;
  
 .btn-out {
  color:#000;
  
 }

</style>
<body>
<!--Main Navigation-->
<header>
<!-- Navbar -->
  <nav id="main-navbar" class="navbar navbar-expand-lg fixed-top">
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
      <form class="d-none d-md-flex input-group w-auto my-auto">
        <input autocomplete="off" type="search" class="form-control rounded"
          placeholder='Search (ctrl + "/" to focus)' style="min-width: 210px;" />
        <span class="input-group-text border-0"><i class="fas fa-search"></i></span>
      </form>
      <button type="button" class="btn me-3">
         <a class="btn-out" href="Login.jsp" >Logout</a> 
        </button>

    </div>
    <!-- Container wrapper -->
  </nav>
  <!-- Navbar -->
  
  <!-- Sidebar -->
  <nav id="sidebarMenu" class="collapse d-lg-block sidebar">
    <div class="position-sticky">
      <div class="list-group list-group-flush mx-3 mt-5">
        <a href="#" class="list-group-item list-group-item-action py-2 ripple active" aria-current="true">
          <i class="fas fa-tachometer-alt fa-fw me-3"></i><span>Dashboard</span>
        </a>
        <a href="#" class="list-group-item list-group-item-action py-2 ripple ">
          <i class="fas fa-chart-area fa-fw me-3"></i><span>QCSRV</span>
        </a>
        <a href="#" class="list-group-item list-group-item-action py-2 ripple"><i
            class="fas fa-lock fa-fw me-3"></i><span>PMDR 1</span></a>
        <a href="#" class="list-group-item list-group-item-action py-2 ripple"><i
            class="fas fa-chart-line fa-fw me-3"></i><span>PMDR 2</span></a>
        <a href="#" class="list-group-item list-group-item-action py-2 ripple">
          <i class="fas fa-chart-pie fa-fw me-3"></i><span>NCR System</span>
        </a>
        <a href="#" class="list-group-item list-group-item-action py-2 ripple"><i
            class="fas fa-chart-bar fa-fw me-3"></i><span>QPES</span></a>
        <a href="#" class="list-group-item list-group-item-action py-2 ripple"><i
            class="fas fa-globe fa-fw me-3"></i><span>ECMS</span></a>
        <a href="#" class="list-group-item list-group-item-action py-2 ripple"><i
            class="fas fa-building fa-fw me-3"></i><span>Call Booking </span></a>
        <a href="#" class="list-group-item list-group-item-action py-2 ripple"><i
            class="fas fa-calendar fa-fw me-3"></i><span>Test Bad</span></a>
        
      </div>
    </div>
  </nav>
  <!-- Sidebar -->

  
</header>
<!--Main Navigation-->

<!--Main layout-->
<%
//Establish the database connection
Connection con = null;

/* String currentFnArea = (String) request.getAttribute("farea"); */
/* String Fnarea=request.getParameter("functionalarea"); */
String User_ID1 = (String)session.getAttribute("User_ID");
System.out.println("wel1"+User_ID1);
String Fnarea1 = (String)session.getAttribute("Fnarea");
System.out.println("wel2"+Fnarea1);
String Username = "";

//Establish the database connection
//Connection con = null;


		
try {
	Class.forName("com.mysql.cj.jdbc.Driver");
	con = DriverManager.getConnection("jdbc:mysql://localhost:3306/bhel", "root", "");
	
  // Prepare the SQL query to select the user with the given username and password
  String sql = "SELECT * FROM bhel_login1 WHERE ID = ?";
  PreparedStatement pstmt = con.prepareStatement(sql);
  pstmt.setString(1,User_ID1);
  ResultSet rs,rs1;
  // Execute the query
   rs = pstmt.executeQuery();
 
   if (rs.next()) {%>
      // If a matching user was found, retrieve additional user details
    <main style="margin-top: 58px;">
     <div class="container pt-4">
     <div class="card col-md-12 mt-3">
    <div class="card-body">
    <form action="welcome.jsp" method="post">
    <h2 class="card-title" style="margin-left:23rem;">Welcome to <%=rs.getString("username") %></h2>
<% 
      Username = rs.getString("username");
      System.out.println("wel3"+Username);
   }
     /* User_ID1 = rs.getString("ID");
     
      request.setAttribute("username", Username);
      request.setAttribute("ID",User_ID1);
      request.setAttribute("functionalarea", Fnarea1);
            
      // Forward to the welcome page
     request.getRequestDispatcher("change_fn_area.jsp").forward(request, response); 
    
  } else {
      // If a matching user was not found, display an error message or handle invalid login
      out.print("Invalid username or password.");
  } */
} catch (SQLException | ClassNotFoundException e) {
  e.printStackTrace();
} finally {
  // Close the database connection
  if (con != null) {
      try {
          con.close();
      } catch (SQLException e) {
          e.printStackTrace();
      }
  }
}




%>  
    <h5>ID: <%= User_ID1 %></h5>
    <h5>Functional Area:</h5><input type="text" name="functionalarea" value=" <%=Fnarea1%>">
    <button><a href="change_fn_area.jsp">Change</a></button>
    
    <!-- Button trigger modal -->
     
     </form>
  </div>
  </div>
     
  </div>
</main>
<!--Main layout-->



</body>
</html>


<!--
session is used for multiple copy( Ex . Amazon)
setAttribute store data into keyvalue pair
and servlet context is used for single copy

  -->

