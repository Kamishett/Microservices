<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Account List Page  </title>
<link rel="stylesheet" href="<c:url value="resources/styles/bootstrap/3.3.5/css/bootstrap.min.css" />" />
    <link rel="stylesheet" href="<c:url value="resources/styles/bootstrap/3.3.5/css/bootstrap-theme.min.css" />" />
    <link rel="stylesheet" href="<c:url value="resources/styles/pivotal.css" />" />
</head>
<style>           
.blue-button{
    background: #5645;
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
<body>

        <div class="row">
            
            <h1>Student List</h1>

 

           <%--  <ul>
                <c:forEach items="${studentList}" var="student">
                    <li><a href="studentDetails?number=${account.id}">${account.name}</a></li>
                </c:forEach>
            </ul>--%>
            
            <table border="1">
             <tr>
             <th>Student Id</th>
             <th>Student Country</th>
             <th>Student Name</th>
             <th>Student DOB </th>
             <th>Student Gender</th>
             <th>Student Email</th>
             <th>Student Section</th>
             <th>StudentSubject</th>
             <th>Update</th>
             <th>Delete</th>
             
             </tr>
             
    
             
             <c:forEach items="${studentList }" var="student">
             <tr>
             <td><a href="/studentDetails/${student.studentId}">${student.studentId}</a></td>
             <td>${student.studentCountry}</td>
             <td>${student.studentName}</td>
             <td>${student.studentDob}</td>
             <td>${student.studentGender}</td>
             <td>${student.studentEmail}</td>
             <td>${student.studentSection}</td>
             <td>${student.studentSubject}</td>
             <td><a href="<c:url value ='/updateStudent/${student.studentId}'></c:url>">Edit</a></td>
             <td><a href="<c:url value ='/deleteStudent/${student.studentId}'></c:url>">Delete</a></td>
             </tr>
             </c:forEach>
            </table>
                    
        </div>
        
    </div>

</body>
</html>