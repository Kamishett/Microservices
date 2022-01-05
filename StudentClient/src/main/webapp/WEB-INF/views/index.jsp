<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Student Home Page</title>
<link rel="stylesheet"
	href="<c:url value="resources/styles/bootstrap/3.3.5/css/bootstrap.min.css" />" />
<link rel="stylesheet"
	href="<c:url value="resources/styles/bootstrap/3.3.5/css/bootstrap-theme.min.css" />" />
<link rel="stylesheet"
	href="<c:url value="resources/styles/pivotal.css" />" />
<style type="text/css">
.has-error {color: red;}


div {
  border-radius: 20px;
  background-color: #92a8d1;
 
}
input[type=text] {
  
  
  margin: 8px 0;
  box-sizing: border-box;
  border: 2px solid red;
  border-radius: 4px;
}
input[type=Date] {
  
  
  margin: 8px 0;
  box-sizing: border-box;
  border: 2px solid red;
  border-radius: 4px;
}
input[type=email] {
  

  margin: 8px 0;
  box-sizing: border-box;
  border: 2px solid red;
  border-radius: 4px;
}
input[type=submit] {
  background-color: #4CAF50;
  border: none;
  color: white;
  
  text-decoration: none;
  margin: 4px 2px;
  cursor: pointer;
}

</style>
</head>
<body >

	

		<div class="row" align="center">

			<h1>Students Application - Home Page</h1>



			<ul>
				<li><a href="/studentList">View Student List</a></li>
			</ul>

		</div>

	</div>
	<div align="center" >
		<h2>Student Information</h2>

		<form:form action="save" method="post" modelAttribute="student"
			novalidate="novalidate">

			<div class="row">
				<div class="form-group col-md-12">
					<label class="col-md-3 control-table" for="studentName">StudentName</label>
					<div class="col-md-7">
						<form:input type="text" path="studentName" id="studentName"
							class="form-control input-sm" />
						<div class="has-error">
							<form:errors path="studentName" class="help-inline"></form:errors>
						</div>


					</div>
				</div>
				<div class="row">
				<div class="form-group col-md-12">
					<label class="col-md-3 control-table" for="studentCountry">studentCountry</label>
					<div class="col-md-7">
						<form:input type="text" path="studentCountry" id="studentCountry"
							class="form-control input-sm" />
						<div class="has-error">
							<form:errors path="studentCountry" class="help-inline"></form:errors>
						</div>


					</div>
				</div>
			</div>
			<div class="row">
				<div class="form-group col-md-12">
					<label class="col-md-3 control-table" for="studentDob">StudentDob</label>
					<div class="col-md-7">
						<form:input type="date" path="studentDob" id="studentDob"
							class="form-control input-sm" />
						<div class="has-error">
							<form:errors path="studentDob" class="help-inline"></form:errors>
						</div>

					</div>
				</div>
			</div>


			<div class="row">
				<div class="form-group col-md-12">
					<label class="col-md-3 control-lable" for="studentGender">StudentGender</label>
					<div class="col-md-7" class="form-control input-sm">
						<form:radiobutton path="studentGender" value="Male" checked="checked" />
						Male
						<form:radiobutton path="studentGender" value="Female" />
						Female

					</div>
				</div>
			</div>
			<div class="row">
				<div class="form-group col-md-12">
					<label class="col-md-3 control-table" for="studentEmail">StudentEmail</label>
					<div class="col-md-7">
						<form:input type="email" path="studentEmail" id="studentEmail"
							class="form-control input-sm" />
						<div class="has-error">
							<form:errors path="studentEmail" class="help-inline"></form:errors>
						</div>

					</div>
				</div>
			</div>
			
		
			
			<div class="row">
				<div class="form-group col-md-12">
					<label class="col-md-3 control-table" for="studentSection">StudentSection</label>
					<div class="col-md-7">
						<form:input type="text" path="studentSection" id="studentSection"
							class="form-control input-sm" />
						<div class="has-error">
							<form:errors path="studentSection" class="help-inline"></form:errors>
						</div>

					</div>
				</div>
			</div>
			<div class="row">
				<div class="form-group col-md-12">
					<label class="col-md-3 control-table" for="studentSubject">StudentSubject</label>
					<div class="col-md-7">
						<form:input type="text" path="studentSubject" id="studentSubject"
							class="form-control input-sm" />
						<div class="has-error">
							<form:errors path="studentSubject" class="help-inline"></form:errors>
						</div>

					</div>
				</div>
			</div>
			

			

			<div class="row">
				<div class="form-actions float-right">
					<input type="submit" value="Register" class="btn btn-primary">
				</div>

			</div>


		</form:form>
	</div>

	

</body>
</html>