<%-- 
    Document   : index.jsp
    Created on : 29-Jul-2022, 3:58:34 AM
    Author     : Amit
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        
          <meta name="viewport" content="width=device-width, initial-scale=1">
        <!-- CSS only -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-gH2yIJqKdNHPEq0n4Mqa/HGKIhSkIHeL5AyhkYV8i59U5AR6csBvApHHNl/vI1Bx" crossorigin="anonymous">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        
         <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
        
        
        <title>login Page</title>
        
        <script> 
          function validation(){
        
        if(frm.email.value === ""){
            swal("Error!", "Please enter your email", "error");
            return false;
        }
        
          if(frm.password.value === ""){
             swal("Error!", "incorrect password", "error");
            return false;
        }
    }
        
        </script>
        
    </head>
    
    <style>
        body{
            background-image: url(gradient-light-color-background-graphic-free-vector.jpg);
        }
        form{
            width: 30%;
            margin-top: 13%
        }
    </style>
    
    
    
    <body>
          <div class="card">
    <center>
      
     
     
      
         
     
    <form action="EmployeeController" method="post" name ="frm">
    <input type="hidden" name="action" value="login">
  <!-- Email input -->
  <h1 style="font-family:fantasy ">Login </h1> <br>
  <div class="form-outline mb-4" name="frm">
      <input type="email" id="form2Example1" class="form-control" name="email"/>
    <input type="hidden" name="action" value="login" >
    <label class="form-label" for="form2Example1">Email address</label>
  </div>

  <!-- Password input -->
  <div class="form-outline mb-4">
      <input type="password" id="form2Example2" class="form-control" name="password"/>
    <label class="form-label" for="form2Example2">Password</label>
  </div>

  <!-- 2 column grid layout for inline styling -->
  <div class="row mb-4">
    <div class="col d-flex justify-content-center">
      <!-- Checkbox -->
      <div class="form-check">
        <input class="form-check-input" type="checkbox" value="" id="form2Example31" checked />
        <label class="form-check-label" for="form2Example31"> Remember me </label>
      </div>
    </div>

    <div class="col">
      <!-- Simple link -->
      <a href="#!">Forgot password?</a>
    </div>
  </div>

  
  <i>  <b> <h4 style= "color: red">${param.msg}</h4> <b> <i>
  
  
  <!-- Submit button -->
<button class="btn btn-outline-primary" onclick="return validation();" >Login </button> 
  <!-- Register buttons -->
  <div class="text-center">
      <p>Not a member? <a href="employeeNewReg.jsp">Register</a></p>
    <p>or sign up with:</p>
    <button type="button" class="btn btn-link btn-floating mx-1">
      <i class="fab fa-facebook-f"></i>
    </button>

    <button type="button" class="btn btn-link btn-floating mx-1">
      <i class="fab fa-google"></i>
    </button>

    <button type="button" class="btn btn-link btn-floating mx-1">
      <i class="fab fa-twitter"></i>
    </button>

    <button type="button" class="btn btn-link btn-floating mx-1">
      <i class="fab fa-github"></i>
    </button>
  </div>
 
</form>
 
        </center>
    
</div>
    </body>
</html>
