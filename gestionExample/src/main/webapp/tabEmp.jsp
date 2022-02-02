<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
<meta charset="UTF-8">
<title>Employee Management</title>
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
      <form style="float: right; " class="d-flex">
        <input class="form-control me-2" type="search" placeholder="Search" aria-label="Search">
        <button class="btn btn-outline-success" type="submit">Search</button>
      </form>
       <form action="/gestionExample/logout" method="post" >
       <button class="logout-form" value="Logout" value="update" >logout</button>
     </form>
    </div>
  </div>
</nav>


 
<div class="table-title">
<div class="row">
 <div class="col-sm-1">
         <h3>Employee <b> Database </b></h3>
</div>

</div>     
</div> 

        

    <div align="center">
        <table class ="table table-striped"  border="1" cellpadding="5">
           
            <tr>
                <th>ID</th>
                <th>FirstName</th>
                <th>LastName</th>
                <th>StartDate</th>
                <th>Actions</th>
            </tr>
            
            <c:forEach var="emp" items="${listEmployee}">
                <tr>
                    <td><c:out value="${emp.empId}" /></td>
                    <td><c:out value="${emp.firstName}" /></td>
                    <td><c:out value="${emp.lastName}" /></td>
                    <td><c:out value="${emp.startDate}" /></td>
                     
                     
                     
                     
                    <td>	
                        <a  href="update?id=${emp.empId}"  class="btn btn-primary btn-sm">Update</a>
                        
                     &nbsp;&nbsp;&nbsp;&nbsp;
                        
                        <a href="delete?id=${emp.empId}" onclick="return confirm('are you sure to deletede Employee ${emp.empId}')"class="btn btn-danger btn-sm">Delete</a>                     
                    </td>
                </tr>
            </c:forEach>
        </table>
    </div>   
    
    <div >  <%@include file = "jspf/footer.html" %>   </div>  
             
  
</body>


</html>