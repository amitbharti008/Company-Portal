<%@page import="java.util.ArrayList"%>
<%@page import="com.qt.companyportal.model.EmployeeModel"%>
<%@page import="com.qt.companyportal.controller.EmployeeController"%>
<!DOCTYPE html>
<html>

    <head>
        
         <% 
    if (session.getAttribute("id")== null) {
        response.sendRedirect("index.jsp?msg= Please login first");
            
        }
    
    %>
        
        <title>show employee</title>


        <link href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.5.2/css/bootstrap.css" rel="stylesheet">
        <link href="https://cdn.datatables.net/1.12.1/css/dataTables.bootstrap4.min.css" rel="stylesheet">
    </head>
    <style>

        body{
            background-image: url(gradient-light-color-background-graphic-free-vector.jpg)
        }


        h1{
            font-family: inherit;
        }

    </style>

    <body>
        <%
            EmployeeController ec = new EmployeeController();
            ArrayList<EmployeeModel> employees = ec.selectAll();

        %>




    <center>
        <div class="p-4 mb-3 bg-primary text-white"> <h1>  Show Employee</h1> </div>
    </center>
    <br>

    <h3 class="text-success">${param.msg}</h3>
    <table id="example"  class="table table-dark table-striped">
        <thead>
            <tr>
                <th>Name</th>
                <th>Phone</th>
                <th>Email</th>
                <th>Exp</th>
                <th>Designation</th>
                <th>company</th>
                <th>state</th>
                <th>City</th>
                <th>Action</th>
            </tr>
        </thead>
        <tbody>
            <%                for (EmployeeModel emp : employees) {
            %>
            <tr>
                <td><%= emp.getName()%></td>
                <td><%= emp.getPhone()%></td>
                <td><%= emp.getEmail()%></td>
                <td><%= emp.getExperience()%></td>
                <td><%= emp.getDesignation()%></td>
                <td><%= emp.getCompany()%></td>
                <td><%= emp.getState()%></td>
                <td><%= emp.getCity()%></td>

                <td>
                    <a href="employeeDetail.jsp?id=<%= emp.getId()%>" class="btn btn-primary">view</a>
                    <a href="updateEmployee.jsp?id=<%= emp.getId()%>" class="btn btn-warning">update</a>
                    <a href="EmployeeController?action=delete&id=<%= emp.getId()%> " class="btn btn-danger" onclick="return confirm('Are you sure you want to delete this item')" >Delete</a> 
            </td>
            </tr>
            <% }%>
        </tbody>

    </table>

    <script src="https://code.jquery.com/jquery-3.5.1.js"></script>
    <script src="https://cdn.datatables.net/1.12.1/js/jquery.dataTables.min.js"></script>
    <script src="https://cdn.datatables.net/1.12.1/js/dataTables.bootstrap4.min.js"></script>

    <script>
                        $(document).ready(function () {
                            $('#example').DataTable();
                        });
    </script>
    <a href="home.jsp" class="btn btn-primary">Back </a>  

</body>

</html>
