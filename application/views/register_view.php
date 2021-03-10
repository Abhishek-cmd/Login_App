<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Register</title>
        <link href="//netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
        <script src="//netdna.bootstrapcdn.com/bootstrap/3.0.0/js/bootstrap.min.js"></script>
        <script src="//code.jquery.com/jquery-1.11.1.min.js"></script>


        <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js" type="text/javascript"></script>
        <!------ Include the above in your HEAD tag ---------->

        <style type="text/css">
            body {
                padding-top: 15px;
                font-size: 12px
              }
              .main {
                max-width: 320px;
                margin: 0 auto;
              }
              .login-or {
                position: relative;
                font-size: 18px;
                color: #aaa;
                margin-top: 10px;
                        margin-bottom: 10px;
                padding-top: 10px;
                padding-bottom: 10px;
              }
              .span-or {
                display: block;
                position: absolute;
                left: 50%;
                top: -2px;
                margin-left: -25px;
                background-color: #fff;
                width: 50px;
                text-align: center;
              }
              .hr-or {
                background-color: #cdcdcd;
                height: 1px;
                margin-top: 0px !important;
                margin-bottom: 0px !important;
              }
              h3 {
                text-align: center;
                line-height: 300%;
              }

              .error-msg{
                margin:5px auto;
                width:30%;
                background:#db3737;
                color:#ffffff;
                font-size: 20px;
                text-align: center;
              }

              .success-msg{
                margin:5px auto;
                width:30%;
                background:#00FF00;
                color:#ffffff;
                font-size: 20px;
                text-align: center;
              }
        </style>
    </head>
    <body>
        <div class="container">
            <div class="row">

                <?php 
                  echo validation_errors(); 

                  if(isset($Msg)){
                    if($status == 'true')
                    {
                      echo '<div class="success-msg">';
                      echo $Msg;
                      echo '</div>';
                      unset($Msg);
                    }else{
                      echo '<div class="error-msg">';
                      echo $Msg;
                      echo '</div>';
                      unset($Msg);
                    }
                  }                 
                  
                ?>

                <div class="main">

                  <h3> Please Register Here </h3>
                 

                  <form role="form" action='<?php echo site_url('login/add_register'); ?>' method="POST" id="user_register">

                    <div class="form-group">
                      <label for="input_username">Username</label>
                      <input type="text" class="form-control" id="input_username" name="input_username">
                      <span id="lbl_username" style="color: red"></span>
                    </div>

                    <div class="form-group">
                      <label for="input_email">Email</label>
                      <input type="text" class="form-control" id="input_email" name="input_email">
                    </div>

                    <div class="form-group">
                      <label for="input_mobile">Mobile</label>
                      <input type="text" class="form-control" id="input_mobile" name="input_mobile" minlength="10" maxlength="10">
                    </div>

                    <div class="form-group">
                      <label for="input_password">Password</label>
                      <input type="password" class="form-control" id="input_password" name="input_password">
                    </div>

                    <div class="form-group">
                      <label for="input_password">Confirm Password</label>
                      <input type="password" class="form-control" id="confirm_password" name="confirm_password">

                      <span class="registrationFormAlert" id="CheckPasswordMatch" style="color:green;"></span>
                    </div>                   

                    <hr class="colorgraph">

                    <div class="row">
                        <div class="col-xs-6 col-sm-6 col-md-6">
                            <input type="submit" class="btn btn-lg btn-success btn-block" value="Register">
                        </div>
                        <div class="col-xs-6 col-sm-6 col-md-6">
                            <a href="<?=site_url('login/add_login')?>" class="btn btn-lg btn-primary btn-block">Login</a>
                        </div>
                    </div>

                  </form>
                
                </div>
            
            </div>
        </div>
    </body>
</html>


<script type="text/javascript">
    $(document).ready(function() {
       $("#confirm_password").keyup(checkPasswordMatch);

      //  $("#user_register").validate({
      //   rules: {
      //       input_username: {
      //           validUsername: true,
      //           required: true,
      //           minlength: 2,
      //           maxlength:15
      //       },
      //       input_password: {
      //           required: true,
      //           minlength: 2
      //       },
      //       confirm_password: {
      //           required: true,
      //           minlength: 2,
      //           equalTo: "#input_password"
      //       },
      //       input_email: {
      //           validate_email: true,
      //           required: true,
      //           email: true
      //       },
      //       input_mobile:{
      //         valid_mobile: true,
      //         required: true,
      //       }
      //   },

      //   messages: {
      //       input_username: {
      //           required: "Please enter a username",
      //           maxlength:"max length 15 digits",
      //           minlength: "Your username must consist of at least 2 characters"
      //       },
      //       input_password: {
      //           required: "Please provide a password",
      //           minlength: "Your password must be at least 5 characters long"
      //       },
      //       confirm_password: {
      //           required: "Please provide a confirm password",
      //           minlength: "Your password must be at least 5 characters long",
      //           equalTo: "Please enter the same password as above"
      //       },
      //       input_email: {
      //           required: "Please provide a email",
      //       },
      //       input_mobile: {
      //           required: "Please provide a email",
      //       }
      //   }
      // });  
    });

    function checkPasswordMatch() {
        var password = $("#input_password").val();
        var confirmPassword = $("#confirm_password").val();
        if (password != confirmPassword)
            $("#CheckPasswordMatch").html("Passwords does not match!");
        else
            $("#CheckPasswordMatch").html("Passwords match.");
    }
</script>
