
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
    
 
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

<nav style="float: right;"class="navbar navbar-expand-lg navbar-light bg-light">
  <div   class="container-fluid">
    <a class="navbar-brand" href="#">Navigation</a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarTogglerDemo02" aria-controls="navbarTogglerDemo02" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarTogglerDemo02" >
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
 
 

<div class="col-sm-6">
         <h2 class='mb-3'>Add new Employee</h2>
</div>     
</div> 
 <div class="col d-flex justify-content-center" >
 <h3 class='mb-3'>New Employee</h3>
 </div>
     

<div align ="center"  >
<form action="<%= request.getContextPath() %>/insert" method="post">
<table style ="with: 80%">
      <label>
            <input type="text" name="empId" value="${emp.empId}" hidden>
      </label>

     <tr>
     <td>First Name</td>
     <td><input type="text" name="firstName" value="${emp.firstName}" /></td>
    </tr>
    <tr>
     <td><label class="form-label" for="form3Example2">Last name</label></td>
     <td><input type="text" name="lastName" value="${emp.lastName}"/></td>
    </tr>
    <tr>
    
    </table>
   <input type="submit"  class="btn btn-success" value="Add New Employee" name="Action"/>
  </form>


</div>
      <div >  <%@include file = "jspf/footer.html" %>   </div>
</body>
</html> 

</body>
</html>