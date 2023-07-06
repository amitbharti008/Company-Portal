

<%@page import="com.qt.companyportal.model.EmployeeModel"%>
<%@page import="com.qt.companyportal.controller.EmployeeController"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
          <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Emp Detail</title>
      <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor" crossorigin="anonymous">
  
    </head>
    <body>
        <h1>Employee Details    <a href="showEmployee.jsp" class="btn btn-primary">Back</a></h1>
         <%   
        int id = Integer.parseInt(request.getParameter("id"));
        EmployeeController  ec = new EmployeeController();
          EmployeeModel emp = ec.selectById(id);
    %>
        
    <table class="table table-striped">
            <tr>
                <th>ID</th>
                <td><%= emp.getId() %></td>
            </tr>
            <tr>
                <th>Name</th>
                <td><%= emp.getName() %></td>
            </tr>
            <tr>
                <th>Phone</th>
                <td><%=emp.getPhone() %></td>
            </tr>
            <tr>
                <th>Email</th>
                <td><%= emp.getEmail() %></td>
            </tr>
            <tr>
                <th>Experience</th>
                <td><%= emp.getExperience() %></td>
            </tr>
            <tr>
                <th>Designation</th>
                <td><%= emp.getDesignation() %></td>
            </tr>
            <tr>
                <th>Company</th>
                <td><%= emp.getCompany() %></td>
            </tr>
            <tr>
                <th>City</th>
                <td><%= emp.getCity() %></td>
            </tr>
            <tr>
                <th>State</th>
                <td><%= emp.getState() %></td>
            </tr>
            <tr>
                <th>Created At</th>
                <td><%= emp.getCreatedAt() %></td>
            </tr>
            <tr>
                <th>Modified At</th>
                <td><%= emp.getModifiedAt() %></td>
            </tr>
        </table>
    </body>
</html>
