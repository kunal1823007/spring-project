<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Register Page</title>
        
        <%--css --%>    
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" crossorigin="anonymous">
        <link href="css/mystyle.css" rel="stylesheet" type="text/css"/>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
       
    </head>
    <body>
        
        <main class="primary-background p-5 banner-background">
            
            <div class="container ">
                
                <div class="col-md-6 offset-md-3">
                    
                    <div class="card">
                        <div class="card-header text-center primary-background">
                            <span class="fa fa-3x fa-user-circle text-white"></span>
                            <br>
                            <h3>Regester Here</h3>
                        </div>
                        <div class="card-body">
                            <form id="reg-form" action="/donorform"  method="POST">           
                                <div class="form-group">
                                  <label for="user_name">User Name</label>
                                  <input name="user_name" type="text" class="form-control" id="user_name" aria-describedby="emailHelp" placeholder="Enter name">
                                </div>
                                
                                <div class="form-group">
                                  <label for="exampleInputEmail1">Email address</label>
                                  <input name="user_email" type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Enter email">
                                  <small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small>
                                </div>
                                
                                <div class="form-group">
                                  <label for="exampleInputPassword1">Password</label>
                                  <input name="user_password" type="password" class="form-control" id="exampleInputPassword1" placeholder="Password">
                                </div>
                                
                                <div class="form-group">
                                  <label for="exampleInputAddress">Address</label>
                                  <input name="user_address" type="text" class="form-control" id="exampleInputAddress" placeholder="Address">
                                </div>
                                
                                <div class="form-group">
                                  <label for="exampleInputContact">Contact Details</label>
                                  <input name="user_contact" type="text" class="form-control" id="exampleInputContact" placeholder="ContactDetails">
                                </div>
                                
                                <div class="form-group">
                                  <label for="campaign">Select Campaign</label>
                                  <br>
                                  <input type="radio" id="campaign" name="campaign" value="Medical">#Medical
                                  <input type="radio" id="campaign" name="campaign" value="Education">#Education
                                  <input type="radio" id="campaign" name="campaign" value="Family">#Family
                                </div>                                
                                
                                <br>
                                <div class="container text-center" id="loader" style="display: none;">
                                    <span class="fa fa-refresh fa-spin fa-4x"></span>
                                    <h4>Please Wait...</h4>
                                </div>
                                <button id="submit-btn" type="submit" class="btn btn-primary">SignUp</button>
                                
                            </form>
                        </div>
         
                    </div>
                </div>
            </div>
        </main>
        
        
          <%-- JavaScript --%>   
       <script src="https://code.jquery.com/jquery-3.6.0.min.js" crossorigin="anonymous"></script>
       <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" crossorigin="anonymous"></script>
       <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"  crossorigin="anonymous"></script>  
       
       <%--sweetalert--%>
       <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
       
     <!--  
       <script>
           $(document).ready(function(){
               console.log("loaded......")
               
               $('#reg-form').on('submit',function(event){
                   event.preventDefault();
                   
                   let form=new FormData(this);
                  
                  $('#submit-btn').hide();
                  $('#loader').show();
                  
                  //send to register servlet:
                  $.ajax({
                      url: "RegisterServlet",
                      type: 'POST',
                      data: form,
                     success: function(data, textStatus,jqXHR){
                         console.log(data)
                         
                         $('#submit-btn').show();
                         $('#loader').hide();
                         
                         if(data.trim()==='done')
                         {
                                  swal("Regestered Successfully...We are Going to redirect to the login page")
                                            .then((value) => {
                                              window.location ="login_page.jsp"
                                            });
                          }else
                          {
                              swal(data);
                          }
                                                
                     },
                     error: function(jqXHR, textStatus,errorThrown){
                         
                          $('#submit-btn').show();
                         $('#loader').hide();
                         swal("Something Went Wrong..try Again");
                                    
                     },
                     processData: false,
                     contentType: false
                     
                  });
               });
           });
       </script>
       -->
           
    </body>
</html>