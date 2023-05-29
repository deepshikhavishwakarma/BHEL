<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.sql.*" %>
   <%@page import="java.io.*" %> 
<%@ page import="java.util.*" %>
<%@ page import="javax.naming.*" %>
<%@ page import="javax.sql.*" %>

<%
Connection con = null;

String Fnarea  =(String)session.getAttribute("functionalarea");
System.out.println("67676jhj"+Fnarea);
/* String currentFnArea = (String) request.getAttribute("functionalarea"); */
// Establish database connection
Context context = new InitialContext();
Class.forName("com.mysql.cj.jdbc.Driver");
con = DriverManager.getConnection("jdbc:mysql://localhost:3306/bhel", "root", "");




// Retrieve column data from the database
Statement statement = con.createStatement();
String q1="SELECT * FROM bhel_login1";

PreparedStatement pstmt = con.prepareStatement(q1);

ResultSet resultSet = statement.executeQuery(q1); 

List<String> options = new ArrayList<>();
List<String> options2 = new ArrayList<>();

while (resultSet.next()) {
	String fnarea = resultSet.getString("functionalarea");
    System.out.println(fnarea);
    
    String option = resultSet.getString("functionalarea"); 
    options.add(option);
    String option_id = resultSet.getString("ID");
    options2.add(option_id);
}


resultSet.close();
statement.close();
con.close();
%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>change function area</title>
 <link rel="stylesheet" href="style.css" type="text/css">
 <link href="${pageContext.request.contextPath}/style.css" rel="stylesheet">
  
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

<style>
  body {
background-color: #fbfbfb;
}
@media (min-width: 991.98px) {
main {
padding-left: 240px;
}
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
  display:flex;}
  
 .btn-out {
  /* color:#000; */
  
 }
.card{
  background-color:#A5C0DD;
  width:835px;
  
  border-radius: 27px;
background: #A5C0DD;
box-shadow:  28px 28px 40px #667789,
             -28px -28px 40px #e4ffff;
             
             display:flex;

}
.main-body{
/* background-color:pink; */
}

.card1{
/* //background-color:yellow; */
width:444px;
height:980px;	
margin-top:190px;
}
.card-header{
 position:relative;
 background: linear-gradient(to bottom, #4b6cb7, #5d8bc9, #6fa9db);
 align-items:center;
 color:#fff;
 /* background-color:#86a8f9; */
}
.main-body{
margin-top:156px;
}
</style>

</head>
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
  

<main>

<section class="main-body">
  <div class="card mt-5" style="margin-top:164px;">
  <div class="card-header">
   Change Function area
  </div>
  <div class="card-body">
    <div class="card-title">
    
    
    <form action="change_fn_area.jsp" method="post">
    <!-- Current Function area: <select class="input-group-text" id="inputGroup-sizing-default" name="functionalarea" style="margin-left: 4.8rem;" required>
                              <option selected>Functional area</option>
                              <option>Quality</option>
                              <option>IT</option>
                              <option>Engineering</option>
                              <option>Planning</option>
                              <option>Material Management</option>
                              <option>Finance</option>
                            </select> -->
    Current function area: <input type="text"  value=" <%= session.getAttribute("functionalarea") %>" disabled/><br><br>
   
    Change function area :<select class="input-group-text" id="inputGroup-sizing-default" name="functionalarea">
                          <% for (String option : options) { %>
                           <option value="<%= option %>"><%= option %></option>
                             <% } %>
                             </select><br>
    Controlling Officer: <select class="input-group-text" id="inputGroup-sizing-default" name="ID">
        <% for (String option : options2) { %>
            <option value="<%= option %>"><%= option %></option>
        <% } %>
        
        </select><br>
    
    <button type="submit" class="btn">Submit</button>
    
    </form>
    </div>
  </div>
 
</div>
</section>
</main>


</body>
</html>