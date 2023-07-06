<!DOCTYPE html>





    <head>
        <% 
    if (session.getAttribute("id")== null) {
        response.sendRedirect("index.jsp?msg= Please login first");
        }
    
    %>
        
        <title>Start Page</title>
        <!-- CSS only -->
          <meta name="viewport" content="width=device-width, initial-scale=1">
        
        
        
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-gH2yIJqKdNHPEq0n4Mqa/HGKIhSkIHeL5AyhkYV8i59U5AR6csBvApHHNl/vI1Bx" crossorigin="anonymous">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    </head>
    
    
    
    
    
    
    
    
    <style>
        .image{
            width: 100%
                
        }
        
       
      
    </style>
    
    <body>
        
        <h1>
          
        </h1>    
        
        
    <center>
        <h1 >   
            <img src="a4c132ada8c1797c0cbd93d8609a9ac4.gif" width="100%" </h1>
        
        <br>
        <h2 style="color: green">${param.msg}</h2>
        
        <div class="d-grid gap-2">

       <a href="employeeRegistration.jsp" class="btn btn-primary" type="button">Add New Employee</a>
       <a href="showEmployee.jsp"  class="btn btn-success" type="button">Show Employees</a>
       <a href="EmployeeController?action=logout"  class="btn btn-danger" type="button">Logout</a>
       
       
         </div>
        
        
        <img src="56-Article-Banner-200.gif" width="100%"
     </center>
    </body>

