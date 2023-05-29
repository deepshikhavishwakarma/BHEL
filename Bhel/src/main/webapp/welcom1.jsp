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
<main style="margin-top: 58px;">
  <div class="container pt-4">
    
    <div class="card col-md-12 mt-3">
   <div class="card-body">
    <h2 class="card-title" style="margin-left:23rem;">Welcome to <%= request.getAttribute("username") %></h2>
    <h5>ID: <%= request.getAttribute("ID") %></h5>
    <h5>Functional Area: <%= request.getAttribute("functionalarea") %>
    <!-- Button trigger modal -->
    <button type="button" class="btn" data-toggle="modal" data-target="#myBtn">Change</button>

<%
//Establish the database connection
Connection con = null;
String ID=(String)session.getAttribute("ID");  
/* String ID = request.getParameter("ID"); */
String password = (String)session.getAttribute("password");
		
try {
	Class.forName("com.mysql.cj.jdbc.Driver");
	con = DriverManager.getConnection("jdbc:mysql://localhost:3306/bhel", "root", "");
	
    // Prepare the SQL query to select the user with the given username and password
    String sql = "SELECT * FROM bhel_login1 WHERE ID = ?";
    PreparedStatement pstmt = con.prepareStatement(sql);
    pstmt.setString(1, ID);
   // pstmt.setString(2, password);

    // Execute the query
    ResultSet rs = pstmt.executeQuery();

    if (rs.next()) {
        // If a matching user was found, retrieve additional user details
        String Username = rs.getString("username");
        ID = rs.getString("ID");
        /* out.println("ID is: "+ID); */
        String Fnarea = rs.getString("functionalarea");

        // Set the user details as request attributes
        request.setAttribute("username", Username);
        request.setAttribute("ID",ID);
        request.setAttribute("functionalarea", Fnarea);

        // Forward to the welcome page
       request.getRequestDispatcher("welcom1.jsp").forward(request, response); 
    } else {
        // If a matching user was not found, display an error message or handle invalid login
        out.print("Invalid username or password.");
    }
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


/* Statement stmt = null;
ResultSet rs= null;
try {
    stmt = con.createStatement();
    String query = "SELECT ID FROM bhel_login1";
    rs1 = stmt.executeQuery(query);
} catch (SQLException e) {
    e.printStackTrace();
} */



%> 

<!-- Modal -->
    <div class="modal fade" id="myBtn" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">Change Function area</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body" style="font-size:20px;">
      <form action="welcom1.jsp" method="post"  class="myForm">
      <div class="modal-content1"> 
      Current function area: <input type="text" value="<%= request.getAttribute("functionalarea") %>" disabled><br>
     
      Change function area :<select class="input-group-text" id="inputGroup-sizing-default" name="functionalarea">
                             <option value="<%= request.getAttribute("functionalarea") %>"><%= request.getAttribute("functionalarea") %></option>
                             <option value="IT">IT</option>
                             <option value="Quality">Quality</option>
                             <option value="Testing">Testing</option>
                             <option value="Management">Management</option>
                             <option value="Finance">Finance</option>
                             <option value="Engineering">Engineering</option>
                             <option value="Planning">Planning</option>
                             <option value="Material Management">Material Management</option>
                             <option value="SAP">SAP</option>
                             <option value="Network">Network</option></select>
                         
        Controlling Officer: <select class="input-group-text" id="inputGroup-sizing-default">
    <% while (rs1.next()) { %>
        <option><%= rs1.getString("officer_name") %></option>
    <% } %>
</select>

                                                    
                       <div class="modal-footer">
                          <button type="button" class="btn" data-dismiss="modal">Close</button>
                          <button type="submit" value="Submit" onclick="showPopup()" class="btn">Save</button>
                       </div>
                       </div>
                       </form>
                       
                     </div>
                  </div>
                </div>


<!-- Success Modal -->
<div class="modal fade" id="successModal" tabindex="-1" role="dialog" aria-labelledby="successModalLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="successModalLabel">Success!</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
        <h3>Your request is under Process.</h3>
      </div>
    </div>
  </div>
</div><br>
        <!-- code for modal db retrive -->

    
    
   <%
        Connection con1 = null;
        Statement stmt = null;
        ResultSet rs1 = null;
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            con = DriverManager.getConnection("jdbc:mysql://localhost:3306/bhel", "root", "");
            stmt = con.createStatement();
            String query = "SELECT ID FROM bhel_login1";
            rs1 = stmt.executeQuery(query);
        } catch (SQLException e) {
            e.printStackTrace();
        }



// Close resources
if (rs1 != null) {
    try {
        rs1.close();
    } catch (SQLException e) {
        e.printStackTrace();
    }
}
if (stmt != null) {
    try {
        stmt.close();
    } catch (SQLException e) {
        e.printStackTrace();
    }
}
if (con1 != null) {
    try {
        con1.close();
    } catch (SQLException e) {
        e.printStackTrace();
    }
}
%> 
        
         
    
  </div>
  </div>     
  </div>
</div>
    
  </div>
</main>
<!--Main layout-->



<!-- <script src="script.js"></script>  -->
<script>

//Show popup message function
function showPopup() {
  // Prevent the form from submitting and refreshing the page
  event.preventDefault();

  // Show the popup message using Bootstrap's modal
  $('#myBtn').modal('hide'); // Hide the modal
  $('#successModal').modal('show'); // Show the success popup modal
}

//Reset the form fields and hide the success modal when the first modal is closed
$('#myBtn').on('hidden.bs.modal', function () {
  $('#myForm')[0].reset(); // Reset the form
  $('#successModal').modal('hide'); // Hide the success modal
});
</script>
</body>
</html>


<!--
session is used for multiple copy( Ex . Amazon)
setAttribute store data into keyvalue pair
and servlet context is used for single copy

  -->

