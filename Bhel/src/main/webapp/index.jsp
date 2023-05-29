<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title></title>
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
  background-color: #ffe6e6;
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
      <div>
        <a href="Login.jsp" id="nav-btn" class="btn  me-2">Login</a>
        <a href="Signup.jsp" id="nav-btn" class="btn ">Sign up</a>

      
      
      
        <!-- <button type="button" class="btn btn-link py-2 me-2" href="Login.jsp">
          <a href="Login.jsp">Login</a>
        </button>
        <button type="button" class="btn btn-link me-3" href="Signup.jsp">
          
          <a href="Signup.jsp" >Sign up for free</a>
        </button> -->
      </div>
      

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
          <i class="fas fa-chart-area fa-fw me-3"></i><span>Page1</span>
        </a>
        <a href="#" class="list-group-item list-group-item-action py-2 ripple"><i
            class="fas fa-lock fa-fw me-3"></i><span>Page 2</span></a>
        <a href="#" class="list-group-item list-group-item-action py-2 ripple"><i
            class="fas fa-chart-line fa-fw me-3"></i><span>Page3</span></a>
        <a href="#" class="list-group-item list-group-item-action py-2 ripple">
          <i class="fas fa-chart-pie fa-fw me-3"></i><span>Page 4</span>
        </a>
        <a href="#" class="list-group-item list-group-item-action py-2 ripple"><i
            class="fas fa-chart-bar fa-fw me-3"></i><span>Page 5</span></a>
        <a href="#" class="list-group-item list-group-item-action py-2 ripple"><i
            class="fas fa-globe fa-fw me-3"></i><span>Page 6</span></a>
        <a href="#" class="list-group-item list-group-item-action py-2 ripple"><i
            class="fas fa-building fa-fw me-3"></i><span>Page 7 </span></a>
        <a href="#" class="list-group-item list-group-item-action py-2 ripple"><i
            class="fas fa-calendar fa-fw me-3"></i><span>Page 8</span></a>
        <a href="#" class="list-group-item list-group-item-action py-2 ripple"><i
            class="fas fa-users fa-fw me-3"></i><span>Page 9</span></a>
        <a href="#" class="list-group-item list-group-item-action py-2 ripple"><i
            class="fas fa-money-bill fa-fw me-3"></i><span>Page 10</span></a>
      </div>
    </div>
  </nav>
  <!-- Sidebar -->

  
</header>
<!--Main Navigation-->

<!--Main layout-->
<main style="margin-top: 58px;">
  <div class="container pt-4">
    
  </div>
</main>
<!--Main layout-->
</body>
</html>