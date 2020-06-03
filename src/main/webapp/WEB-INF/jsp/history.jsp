<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<html >
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" >

<head><title>Credit-management-WebApp</title>
<link href="https://lh3.googleusercontent.com/proxy/a9u9jCBgCgbyT7sIE7W8rEjhIkYEO5a1tP148SWLdttQqS6JnnxiBDuepsYdrZKflTT
8blTKFujg2l-j725ap3XQMrNMWhuXh7eAGXg5YbxZpRotmPeGT9ErqBlPy0vLvVGl-mtUVlW_5xKFAcczsLUG5lrkx8Fl"
 rel="icon">
 <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
 </head>
<body style=" background: url('https://www.inner.org/wp-content/uploads/2014/04/blue-waves.jpg') no-repeat center center fixed; 
  -webkit-background-size: cover;
  -moz-background-size: cover;
  -o-background-size: cover;
  background-size: cover;
">
<h2 class="text-white bg-dark"><marquee direction="left" Scrollamount=20 style="position:relative;">
Transaction History
</marquee></h2>
<div class="container">
 
 <br>
 <div class="panel panel-primary">
  <div class="panel-heading">
   <h3>All Transaction</h3>
  </div>
  <div class="panel-body">
   <table class="table table-striped">
    <thead class="thead-dark">
     <tr>
      <th width="40%">Sender</th>
      <th width="40%">Receiver</th>
      <th width="40%">Amount</th>
      <th width="20%"></th>
     </tr>
    </thead>
    <tbody>
     <c:forEach var="user" items="${users}">
    
      <tr>
       <td>${user.sender}</td>
       <td>${user.receiver}</td>
        <td>${user.amount}</td>
       
      </tr>
     </c:forEach>
    </tbody>
   </table>
  </div>
 </div>

<div class="d-flex justify-content-center"> 
<a type="button" class="btn btn-primary btn-md" href="/user-list">Back to users list</a>
<a type="button" class="btn btn-primary btn-md" href="/">Back to Home page</a>
</div>
</div>

<footer style="text-align:center;width:100%;left:0; bottom:0;position:fixed; background-color:blue; color:white;">


  <div class="">
  © 2020 Copyright: Credit Management   <a href="https://www.linkedin.com/in/ananya-mashiwal/"
   class="fa fa-linkedin" style=" background: #125688;
  color: white; padding:4px;
  font-size:8px;
  
  text-align: center;"></a> 
  </div>


</footer>


</body>
</html>
