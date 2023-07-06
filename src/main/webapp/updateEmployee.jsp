<%-- 
    Document   : employeeRegistration
    Created on : 13-Jul-2022, 4:48:02 PM
    Author     : QaswaTech_1
--%>

<%@page import="com.qt.companyportal.model.EmployeeModel"%>
<%@page import="com.qt.companyportal.controller.EmployeeController"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
         <% 
    if (session.getAttribute("id")== null) {
        response.sendRedirect("index.jsp?msg= Please login first");
            
        }
    
    %>
        
        
        
          <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Emplolyee Update</title>
        <!-- CSS only -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor" crossorigin="anonymous">
    </head>
    <body>
         <%   
        int id = Integer.parseInt(request.getParameter("id"));
        EmployeeController  ec = new EmployeeController();
          EmployeeModel emp = ec.selectById(id);
    %>
        <br>
        <div class="row">
            <div class="col-sm-2"></div>
            <div class="col-sm-8">
                       <div class="card">
  <div class="card-body">
    <h5 class="card-title text-primary text-center">Update Employee</h5>
    <form action="EmployeeController" method="post">
        <input type="hidden" name="action" value="update">
        <input type="hidden" name="id" value="<%= emp.getId() %>">
  <div class="mb-3">
    <label for="exampleInputEmail1" class="form-label">Name</label>
    <input type="text" name="empname" value="<%= emp.getName() %>" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp">
    </div>
  <div class="mb-3">
    <label for="exampleInputEmail1" class="form-label">Email</label>
    <input type="email" name="email" value="<%= emp.getEmail() %>" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp">
    </div>
  <div class="mb-3">
    <label for="exampleInputEmail1" class="form-label">Phone</label>
    <input type="number" name="phone" value="<%= emp.getPhone() %>" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp">
    </div>
  <div class="mb-3">
    <label for="exampleInputEmail1" class="form-label">Experience in yr</label>
    <input type="number" name="experience" value="<%= emp.getExperience()%>" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp">
    </div>
  <div class="mb-3">
    <label for="exampleInputEmail1" class="form-label">Designation</label>
    <input type="text" name="designation" value="<%= emp.getDesignation()%>" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp">
    </div>
  <div class="mb-3">
    <label for="exampleInputEmail1" class="form-label">Company</label>
    <input type="text" name="company" value="<%= emp.getCompany()%>" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp">
    </div>
  <div class="mb-3">
    <label for="exampleInputEmail1" class="form-label">City</label>
    <input type="text" name="city" value="<%= emp.getCity()%>" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp">
    
  </div>
 <div class="mb-3">
    <label for="exampleInputEmail1" class="form-label">State</label>
    <input type="text" name="state" value="<%= emp.getState()%>" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp">
    
  </div>

  <button type="submit" class="btn btn-primary">Submit</button>
</form>
    <h2>${param.msg}</h2>
      
  </div>
</div>
            </div>
            <div class="col-sm-2"></div>
        </div>
        
 
    </body>
</html>
