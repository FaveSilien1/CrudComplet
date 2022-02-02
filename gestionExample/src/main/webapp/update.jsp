<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto|Varela+Round">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
	<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>
<meta charset="ISO-8859-1">
<title>Employee Management Application</title>
</head>
<body>
<nav style="float: right;" class="navbar navbar-expand-lg navbar-light bg-light">
  <div class="container-fluid">
    <a class="navbar-brand" href="#">Navigation</a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarSupportedContent">
      <ul class="navbar-nav me-auto mb-2 mb-lg-0">
        
        <li class="nav-item">
          <a class="nav-link"  href="<%= request.getContextPath() %>/insert.jsp"><span>Add New Employee</span></a>
        </li>
       
        <li class="nav-item">
          <a class="nav-link" href="<%= request.getContextPath() %>/employee"><span>List All Employee</span></a>
        </li>
      </ul>
      <form  class="d-flex">
        <input class="form-control me-2" type="search" placeholder="Search" aria-label="Search">
        <button class="btn btn-outline-success" type="submit">Search</button>
      </form>
      
      <form action="/gestionExample/logout" method="post" >
       <button class="logout-form" value="Logout" value="update" >logout</button>
     </form>
     
    </div>
  </div>
</nav>
 

<div class="row">
 <div class="col-sm-6">
        <h2>Employee <b>update</b></h2>
        
 </div>
 </div>
          

<form class="col d-flex justify-content-center"  action="/gestionExample/update?id=${emp.empId}" method="post">
<!-- 2 column grid layout with text inputs for the first and last names -->
<div class ="container" >
  <div class="row mb-4">
    <div class="col">
      <div class="form-outline">
      
       <label>
            <input type="text" name="empId" value="${emp.empId}" hidden>
       </label>
      
        <label class="form-label" for="form3Example1">First name</label>
        <input type="text" name="firstName" value="${emp.firstName}"  id="form3Example1" class="form-control" />
        
      </div>
    </div>
    <div class="col">
      <div class="form-outline">
        <label class="form-label" for="form3Example2">Last name</label>
        <input type="text"  name="lastName" value="${emp.lastName}" id="form3Example2" class="form-control" />
        
      </div>
    </div>
   
  </div>
   <div  >
    <button type="submit" value="update" class="btn btn-primary">Update</button>
  </div>
  <!-- Submit button -->
 
  
  
  </div> 
</form>
     <div> <%@include file = "jspf/footer.html" %>   </div> 
     
</body>
</html> 