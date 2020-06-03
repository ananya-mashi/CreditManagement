<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<html>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" >
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/4.0.0/animate.min.css"
/>
<head><title>Credit-management-WebApp</title>
<link href="https://lh3.googleusercontent.com/proxy/a9u9jCBgCgbyT7sIE7W8rEjhIkYEO5a1tP148SWLdttQqS6JnnxiBDuepsYdrZKflTT
8blTKFujg2l-j725ap3XQMrNMWhuXh7eAGXg5YbxZpRotmPeGT9ErqBlPy0vLvVGl-mtUVlW_5xKFAcczsLUG5lrkx8Fl"
 rel="icon">
 
 
 </head>
<body style=" background: url('https://www.inner.org/wp-content/uploads/2014/04/blue-waves.jpg') no-repeat center center fixed; 
  -webkit-background-size: cover;
  -moz-background-size: cover;
  -o-background-size: cover;
  background-size: cover;
">
<h2 class="text-white bg-dark"><marquee direction="left" Scrollamount=20 style="position:relative;">Amount should be
 greater than 0 and less than 5000 
</marquee></h2>

 <div align="center">
			<div id="container">
	
	  <form name="save" action="/save/${user1.id}/${user2.name}">
	
   
   
	  <div style="overflow-x:auto;">
            <table>
               
                <tr>
                    <td><h2>Amount:</h2></td>
                    <td><input type="number" name="amount" required/></td>
                </tr>
                
                <tr>
                    <td colspan="2" align="center"> 
                    <input type="submit" value="submit"></td>
                </tr>
               </table></div></form>
             
   </div></div>
   
<div class="d-flex justify-content-center"> 
<a type="button" class="btn btn-primary btn-md" href="/user-list">Back to users list</a>
<a type="button" class="btn btn-primary btn-md" href="/">Back to Home page</a>
</div>
<footer style="text-align:center;width:100%;left:0; bottom:0;position:fixed; background-color:blue; color:white;">


  <div class="">
  © 2020 Copyright: Credit Management    
  </div>


</footer>
 

</body>
</html>