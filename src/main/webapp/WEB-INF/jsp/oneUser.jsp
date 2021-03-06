<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<html>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" >
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/4.0.0/animate.min.css"
/>
<head><title>Credit-management-WebApp</title>
<link href="https://lh3.googleusercontent.com/proxy/a9u9jCBgCgbyT7sIE7W8rEjhIkYEO5a1tP148SWLdttQqS6JnnxiBDuepsYdrZKflTT
8blTKFujg2l-j725ap3XQMrNMWhuXh7eAGXg5YbxZpRotmPeGT9ErqBlPy0vLvVGl-mtUVlW_5xKFAcczsLUG5lrkx8Fl"
 rel="icon"></head>
<body style=" background: url('https://www.inner.org/wp-content/uploads/2014/04/blue-waves.jpg') no-repeat center center fixed; 
  -webkit-background-size: cover;
  -moz-background-size: cover;
  -o-background-size: cover;
  background-size: cover;
">
<h2 class="text-white bg-dark"><marquee direction="left" Scrollamount=20 >Selected user detail
</marquee></h2>
 <div align="center">
        <form:form method="GET" action="transfer" modelAttribute="user">
   <c:url var="transaction" value="/transfer/${user.id}">
						
					</c:url>
   
            <table>
               
                <tr>
                    <td><div class="p-3 mb-2 bg-info text-white">User Name:</div></td>
                    <td><div class="p-3 mb-2 bg-primary text-white">${user.name}</div></td>
                </tr>
               
                <tr>
                    <td><div class="p-3 mb-2 bg-info text-white">E-mail:</div></td>
                    <td><div class="p-3 mb-2 bg-primary text-white">${user.email}</div></td>
                </tr>
                <tr>
                    <td><div class="p-3 mb-2 bg-info text-white">CurrentCredit:</div></td>
                    <td><div class="p-3 mb-2 bg-primary text-white">${user.currentCredit}</div></td>
                </tr>
               
                <tr>
                    <td colspan="2" align="center"> 
                    <a type="button" class="btn btn-primary btn-md" href="${transaction }">Transfer</a></td>
                </tr>
            </table>
        </form:form>
 </div>

<div class="d-flex justify-content-center"> 
<a type="button" class="btn btn-primary btn-md" href="/user-list">Back to users list</a>
<a type="button" class="btn btn-primary btn-md" href="/">Back to Home page</a>
</div>

<footer style="text-align:center;width:100%;left:0; bottom:0;position:fixed; background-color:blue; color:white;">


  <div class="">
  � 2020 Copyright: Credit Management    
  </div>


</footer>

</body>
</html>