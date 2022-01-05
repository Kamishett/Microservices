<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
     <%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Student Update Page</title>
<link rel="stylesheet" href="<c:url value="resources/styles/bootstrap/3.3.5/css/bootstrap.min.css" />" />
<link rel="stylesheet" href="<c:url value="resources/styles/bootstrap/3.3.5/css/bootstrap-theme.min.css" />" />
<link rel="stylesheet" href="<c:url value="resources/styles/pivotal.css" />" />
<style>           
.blue-button{
    background: #25A6E1;
    filter: progid: DXImageTransform.Microsoft.gradient( startColorstr='#25A6E1',endColorstr='#188BC0',GradientType=0);
    padding:3px 5px;
    color:#fff;
    font-family:'Helvetica Neue',sans-serif;
    font-size:12px;
    border-radius:2px;
    -moz-border-radius:2px;
    -webkit-border-radius:4px;
    border:1px solid #1A87B9
}     
table {
  font-family: "Helvetica Neue", Helvetica, sans-serif;
   width: 50%;
}
th {
  background: SteelBlue;
  color: white;
}
 td,th{
                border: 1px solid gray;
                width: 25%;
                text-align: left;
                padding: 5px 10px;
            }
</style>
</head>
<body>

      
    <div><right>
    <c:url var="action" value="/update" />
        <h2>Student Information</h2>
        <form:form action="${action}" method="post" modelAttribute="student" novalidate= "novalidate">
        <div class="row">
         <div class="form-group col-md-12">
            <label class="col-md-3 control-table" for="studentId">StudentId</label>
            <div class="col-md-7">
              <form:input type="text" path="studentId" id="studentId" class="form-control input-sm" readonly="readonly"/>
              <div class="has-error">
              <form:errors path="studentId" class= "help-inline"></form:errors>
              </div>
            </div>
         </div>
      </div>
      <div class="row">
         <div class="form-group col-md-12">
            <label class="col-md-3 control-table" for="studentCountry">Student Country</label>
            <div class="col-md-7">
              <form:input type="text" path="studentCountry" id="studentCountry" class="form-control input-sm"/>
              <div class="has-error">
              <form:errors path="studentCountry" class= "help-inline"></form:errors>
              </div>
            </div>
         </div>
      </div>
        
        <div class="row">
         <div class="form-group col-md-12">
            <label class="col-md-3 control-table" for="studentName">Student Name</label>
            <div class="col-md-7">
              <form:input type="text" path="studentName" id="studentName" class="form-control input-sm"/>
              <div class="has-error">
              <form:errors path="studentName" class= "help-inline"></form:errors>
              </div>
            </div>
         </div>
      </div>
      
      <div class="row">
         <div class="form-group col-md-12">
            <label class="col-md-3 control-table" for="studentDob">Student DOB</label>
            <div class="col-md-7">
              <form:input type="date" path="studentDob" id="studentDob" class="form-control input-sm"/>
              <div class="has-error">
              <form:errors path="studentDob" class= "help-inline"></form:errors>
            </div>
         </div>
      </div>
      <div class="row">
            <div class="form-group col-md-12">
                <label class="col-md-3 control-lable" for="studentGender">Gender</label>
                <div class="col-md-7" class="form-control input-sm">
                    <form:radiobutton path="studentGender" value="male" checked= "checked"/>Male
                    <form:radiobutton path="studentGender" value="female" />Female
                  
                </div>
            </div>
        </div>
      
      <div class="row">
         <div class="form-group col-md-12">
            <label class="col-md-3 control-table" for="studentEmail">StudentEmail</label>
            <div class="col-md-7">
              <form:input type="text" path="studentEmail" id="studentEmail" class="form-control input-sm"/>
              <div class="has-error">
              <form:errors path="studentEmail" class= "help-inline"></form:errors>
            </div>
         </div>
      </div>
      <div class="row">
         <div class="form-group col-md-12">
            <label class="col-md-3 control-table" for="studentSection">Student Section</label>
            <div class="col-md-7">
              <form:input type="text" path="studentSection" id="studentSection" class="form-control input-sm"/>
              <div class="has-error">
              <form:errors path="studentSection" class= "help-inline"></form:errors>
            </div>
         </div>
      </div>
      
      <div class="row">
         <div class="form-group col-md-12">
            <label class="col-md-3 control-table" for="studentSubject">Student Subject</label>
            <div class="col-md-7">
              <form:input type="text" path="studentSubject" id="studentSubject" class="form-control input-sm"/>
              <div class="has-error">
              <form:errors path="studentSubject" class= "help-inline"></form:errors>
            </div>
         </div>
      </div>
            <div class="row">
                <div class="form-actions float-right"></div>
                <input type="submit" value="Update" class="btn btn-primary">
            </div>

 

        </form:form>
    </div>
    </right>
    </center>
</body>
</html>