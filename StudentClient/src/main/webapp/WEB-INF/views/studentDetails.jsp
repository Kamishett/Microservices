<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Account Details</title>
<link rel="stylesheet"
	href="<c:url value="resources/styles/bootstrap/3.3.5/css/bootstrap.min.css" />" />
<link rel="stylesheet"
	href="<c:url value="resources/styles/bootstrap/3.3.5/css/bootstrap-theme.min.css" />" />
<link rel="stylesheet"
	href="<c:url value="resources/styles/pivotal.css" />" />
<style>
h1 {
  background-color: coral;
}

div {
  background-color: white;
}

</style>	
</head>
<body>

	
			</nav>
			<div style="text-align: right">
				[ <a href="<c:url value='/'/>">Home</a> | <a href="studenttList">Students</a>
				]
			</div>
			<%-- <div style="text-align: right">[ <a href="<c:url value='/accounts/'/>">Home</a>
              | <a href="accountList">Accounts</a> ]</div> --%>
		</div>

		<div class="row" align="left">

			<h1 align="center">STUDENT DETAILS</h1>

			<div class="container-fluid">
				<div class="row">
					<div class="col-sm-9">Student ID:</div>
					<div class="col-sm-9" >${student.studentId}</div>
				</div>
				<br />
				<div class="row">
					<div class="col-sm-3">Student Country:</div>
					<div class="col-sm-9">${student.studentCountry}</div>
				</div>
				<br />
				<div class="row">
					<div class="col-sm-3">Student Name:</div>
					<div class="col-sm-9">${student.studentName}</div>
				</div>
				<br />
				<div class="row">
					<div class="col-sm-3">Student DOB:</div>
					<div class="col-sm-9">${student.studentDob}</div>
				</div>
				<br />
				<div class="row">
					<div class="col-sm-3">Student Gender:</div>
					<div class="col-sm-9">${student.studentGender}</div>
				</div>
				<br/>
				<div class="row">
					<div class="col-sm-3">Student Email :</div>
					<div class="col-sm-9">${student.studentEmail}</div>
				</div>
				<br/>
				<div class="row">
					<div class="col-sm-3">Student Section:</div>
					<div class="col-sm-9">${student.studentSection}</div>
				</div>
				<br/>
				
				<div class="row">
					<div class="col-sm-3">Student Subject:</div>
					<div class="col-sm-9">${student.studentSubject}</div>
				</div>
			</div>

		</div>



	</div>

</body>
</html>

