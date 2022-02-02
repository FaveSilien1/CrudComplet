<%@page import="java.util.Date"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="fr">

<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link
	href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
	rel="stylesheet" id="bootstrap-css">
<link href="css/style.css" rel="stylesheet" id="bootstrap-css">
<script
	src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
<title>Examples Servlet</title>
<style>
</style>
</head>

<body>
	<div class="sidenav">
		<div class="login-main-text">
			<h2>
				Application<br> JAVA EE
			</h2>
			<p>Example Servlet.</p>
			<br>
			<%=new Date()%>
		</div>
	</div>
	<div class="main">
		<div class="col-md-6 col-sm-12">
			<div class="login-form">


				<center>
					<h1>Employee Management</h1>
					<h2>
						<a href="insert">Add New Employee</a> &nbsp;&nbsp;&nbsp; <a
							href="employee">List All Employees</a>

					</h2>
				</center>
				<div align="center">
					<c:if test="${emp != null}">
						<c:set var="action" value="update" />
					</c:if>
					<c:if test="${emp == null}">
						<c:set var="action" value="insert" />
					</c:if>
					<form action="${action}" method="post">
						<input type="hidden" name="c" value="${action }">
						<table border="1" cellpadding="5">
							<caption>
								<h2>
									<c:if test="${emp != null}">
                       				 Edit emp
                    				</c:if>
									<c:if test="${emp == null}">
                        Add New Employee
                    </c:if>
								</h2>
							</caption>
							<c:if test="${emp != null}">
								<input type="hidden" name="id"
									value="<c:out value='${emp.empId}' />" />
							</c:if>
							<tr>
								<th>firstName:</th>
								<td><input type="text" name="title" size="45"
									value="<c:out value='${emp.firstName}' />" />
								</td>
							</tr>
							<tr>
								<th>lastName:</th>
								<td><input type="text" name="author" size="45"
									value="<c:out value='${emp.lastName}' />" />
								</td>
							</tr>
							<tr>
								<th>startDate:</th>
								<td><input type="text" name="price" size="5"
									value="<c:out value='${emp.startDate}' />" />
								</td>
							</tr>
							<tr>
								<td colspan="2" align="center"><input type="submit"
									value="Save" /></td>
							</tr>
						</table>
					</form>
				</div>


			</div>
		</div>
	</div>
</body>

</html>