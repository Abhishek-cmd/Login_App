<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Login</title>
        <link href="//netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
        <script src="//netdna.bootstrapcdn.com/bootstrap/3.0.0/js/bootstrap.min.js"></script>
        <script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
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
                    <h3> Please Log In </h3>
                    <div class="row">
                        <div class="col-xs-6 col-sm-6 col-md-6">
                          <a href="#" class="btn btn-lg btn-primary btn-block">Facebook</a>
                        </div>
                        <div class="col-xs-6 col-sm-6 col-md-6">
                          <a href="#" class="btn btn-lg btn-info btn-block">Google</a>
                        </div>
                    </div>

                    <div class="login-or">
                        <hr class="hr-or">
                        <span class="span-or">or</span>
                    </div>

                    <form role="form" action='<?php echo site_url('login/add_login'); ?>' method="POST">
                        <div class="form-group">
                          <label for="inputUsernameEmail">Username or email</label>
                          <input type="text" class="form-control" id="input_email" name="input_email" required="required">
                        </div>

                        <div class="form-group">
                          <a class="pull-right" href="#">Forgot password?</a>
                          <label for="inputPassword">Password</label>
                          <input type="password" class="form-control" id="input_password" name="input_password" required="required">
                        </div>

                        <div class="g-recaptcha" data-sitekey="6LeRDk4aAAAAAJfyojRZyLnCqoept3-7PZ22Gt1Y"></div>

                        <!-- <div class="form-group" style="margin-left: 30px;">
                          <p>Access Code</p>
                          <span id="captchaImage">
                            <?php //if(isset($captchaImage)) 
                              //echo $captchaImage; 
                              ?>
                          </span>
                          <a class="btn loadCaptcha" href="javascript:void(0);" title="Refresh Captcha Access code"><i class="glyphicon glyphicon-chevron-right"></i></a>
                        </div> -->

                        <div class="form-group">
                          <input type="text" class="form-control form-control-lg" placeholder="Captcha" name="captcha" id="input_password" captcha required="required">
                        </div>                  

                        <div class="checkbox">
                          <label><input type="checkbox">Remember me </label>
                        </div>

                        <hr class="colorgraph">

                        <div class="row">
                            <div class="col-xs-6 col-sm-6 col-md-6">
                                <input type="submit" class="btn btn-lg btn-success btn-block" value="login">
                            </div>
                            <div class="col-xs-6 col-sm-6 col-md-6">
                                <a href="<?=site_url('login/add_register')?>" class="btn btn-lg btn-primary btn-block">Register</a>
                            </div>
                        </div>
                    </form>                
                </div>            
            </div>
        </div>
    </body>
</html>

<script type="text/javascript">
  $(document).ready(function(){
    $('.loadCaptcha').on('click', function(){
      $.get('<?php echo site_url("authentication/captcha_refresh"); ?>', function(data){
             $('#captchaImage').html(data);
       });
    });
  });
</script>
