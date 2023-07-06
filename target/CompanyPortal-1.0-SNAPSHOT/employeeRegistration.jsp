

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
        
        
        <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>

        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Emplolyee Reg</title>



        <!-- CSS only -->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor" crossorigin="anonymous">

        <script>

            function validation() {

                if (frm.empname.value === "") {
                    swal("Error!", "Please enter your name", "error");
                    return false;
                }

                if (frm.email.value === "") {
                    swal("Error!", "Please enter your email", "error");
                    return false;
                }

                if (frm.phone.value === "" || (frm.phone.value).length != 10) {
                    swal("Error!", "Incorrect phone number", "error");
                    return false;
                }


                if (frm.experience.value === "") {
                    swal("Error!", "Please enter your Experience", "error");
                    return false;
                }

                if (frm.designation.value === "") {
                    swal("Error!", "Please enter your Designation", "error");
                    return false;
                }


                if (frm.company.value === "") {
                    swal("Error!", "Enter company name", "error");
                    return false;
                }


                if (frm.city.value === "") {
                    swal("Error!", "Please enter your city", "error");
                    return false;
                }

                if (frm.state.value === "") {
                   swal("Error!", "Please enter your state", "error");
                    return false;
                }
                return true;

            }


                function btn(){
                        swal("Good job!", "Record insert Successfull", "success");
                                }






        </script>



    </head>
    <style>

        body{
            background-image: url(e_commerce_registration_form_template_thumb.png);
        }
        form{

        }


    </style>


    <body>



        <br>
        <div class="row">
            <div class="col-sm-2"></div>
            <div class="col-sm-8">
                <div class="card">
                    <div class="card-body">
                        <h5 class="card-title text-primary text-center">Employee Registration</h5>
                        <form action="EmployeeController" method="post" name ="frm">
                            <input type="hidden" name="action" value="insert">
                            <div class="mb-3">
                                <label for="exampleInputEmail1" class="form-label">Name</label>
                                <input type="text" name="empname" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp">
                            </div>
                            <div class="mb-3">
                                <label for="exampleInputEmail1" class="form-label">Email</label>
                                <input type="email" name="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp">
                            </div>
                            <div class="mb-3">
                                <label for="exampleInputEmail1" class="form-label">Phone</label>
                                <input type="number" name="phone" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp">
                            </div>
                            <div class="mb-3">
                                <label for="exampleInputEmail1" class="form-label">Experience in yr</label>
                                <input type="number" name="experience" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp">
                            </div>
                            <div class="mb-3">
                                <label for="exampleInputEmail1" class="form-label">Designation</label>
                                <input type="text" name="designation" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp">
                            </div>
                            <div class="mb-3">
                                <label for="exampleInputEmail1" class="form-label">Company</label>
                                <input type="text" name="company" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp">
                            </div>
                            <div class="mb-3">
                                <label for="exampleInputEmail1" class="form-label">City</label>
                                <select class="form-control" name="city">
                                    <option value="Nagpur">Nagpur</option>
                                    <option value="Pune">Pune</option>
                                    <option value="Mumbai">Mumbai</option>
                                    <option value="lucknow">Lucknow</option>
                                    <option value="bhopal">Bhopal</option>
                                    <option value="indore">Indore</option>
                                </select>
                            </div>
                            <div class="mb-3">
                                <label for="exampleInputEmail1" class="form-label">State</label>
                                <select class="form-control" name="state">
                                    <option value="Maharashtra">Maharashtra</option>
                                    <option value="UP">UP</option>
                                    <option value="MP">MP</option>
                                </select>
                            </div>

                            <button type="submit" class="btn btn-primary" onclick="return validation();">Submit</button>   
                            <a href="home.jsp" class="btn btn-primary">Back </a> 

                        </form>
                        <h2 style="color:green ;">${param.msg}</h2>

                    </div>
                </div>
            </div>
            <div class="col-sm-2"></div>
        </div>


    </body>
</html>
