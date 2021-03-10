<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Login extends CI_Controller {

	public function __construct()
	{
	    parent::__construct();
	    $this->load->helper('url','captcha');
	    $this->load->library(['form_validation', 'session', 'bcrypt']);
	    // $this->load->library('curl'); 
        $this->load->database();
	    $this->load->model('Login_model');
	}

	public function index()
	{
		$this->load->view('register_view');
	}


	// public function add_login()
 //    {
	// 	$data	 =	array();
	// 	if(isset($_POST['submit']))
	// 	{
	// 		$this->form_validation->set_rules('input_email','Email','required');
	// 		$this->form_validation->set_rules('input_password','Password','required|min_length[8]|max_length[16]');
	// 		$this->form_validation->set_rules('captcha','Access Code','required');

	// 		if($this->form_validation->run() ==  TRUE)
	// 		{
	// 		    // success
 //                //catcha checking 
 //                $captcha         = $this->input->post('captcha');
 //                $captcha_session = $this->session->userdata('captcha');
	//             if($captcha == $captcha_session ) 
	//             {
	//                 //true - captcha matches

	// 				$email = $_POST['input_email'];
	// 				$user_username 	=	$this->db->get_where('user',['email' => $email])->row_array();

	// 				if(isset($user_username['id']) && $user_username['password'] != '')
	// 				{
	// 					//true, check password
	// 					$password =	$_POST['password'];
						
	// 					if(isset($password) &&  password_verify($password,$user_username['password']))
	// 					{
	// 						$data['status'] = 'true';
	// 				        $data['Msg'] = 'Login Successfully.';
	// 				        $this->load->view('dashboard',$data);
	// 					}
	// 					else
	// 					{
	// 					    $this->session->set_flashdata('login','Invalid Username or Password');
	// 					    $data['status'] = 'false';
	// 				        $data['Msg'] = 'Invalid Username or Password';
	// 				        $this->load->view('login_view',$data);
	// 					}
							
	// 				}
	// 				else
	// 				{ 
	// 				         //failed to login
	// 					$this->session->set_flashdata('login','Invalid Username or Password');
	// 					$data['status'] = 'false';
	// 			        $data['Msg'] = 'Invalid Username or Password';
	// 			        $this->load->view('login_view',$data);
	// 				}
						
	// 			}
	// 			else
	// 			{
	// 				//captcha not matches
	// 					$this->session->set_flashdata('login','Incorrect Access Code');
	// 					$data['status'] = 'false';
	// 				    $data['Msg'] = 'Incorrect Access Code';
	// 				    $this->load->view('login_view',$data);
	// 			}
	//  		}

	// 	}

	// 	/*  CAPTCHA  STARTS */
	// 	if(!is_dir('./assets/captch_img/'))
	// 	{
	// 		mkdir('./assets/captch_img/','0777',true);
	// 	}

	// 	$config = array(
 //               'img_url' 			=> base_url() . 'public/assets/captch_img/',
 //               'img_path' 			=> 'public/assets/captch_img/',
 //               'img_height' 		=> 45,
 //               'word_length' 		=> 5,
 //               'img_width' 		=> '200',
 //               'font_size' 		=> 10
 //        );

 //        $captcha_new  = create_captcha($config);
 //        unset($_SESSION['captcha']);
 //        $this->session->set_userdata('captcha', $captcha_new['word']);
 //        $data['captchaImage'] = $captcha_new['image'];
	// 	/* CAPTCHA ENDS */
	// 	$data['status'] = 'false';
	// 	// $data['Msg'] = 'Please fill up all details OR Incorrect Access Code';
	// 	$this->load->view('login_view',$data);
	// }

	// public function add_login(){
 //        $email = trim($this->input->post('input_email'));
	//     $password = trim($this->input->post('input_password'));	  
	//     $recaptchaResponse = trim($this->input->post('g-recaptcha-response'));

	//     $userIp=$this->input->ip_address();
    
	// 	$secret='6LeRDk4aAAAAAGTsugjNX5e_MIol7cZnj_vqLVrK';
		  
	// 	$url="https://www.google.com/recaptcha/api/siteverify?secret=".$secret."&response;=".$recaptchaResponse."&remoteip;=".$userIp;
		  
	// 	$response = $this->curl->simple_get($url);
	// 	$status= json_decode($response, true);

	// 	if($status['success']){     
	// 	   $this->session->set_flashdata('flashSuccess', 'Google Recaptcha Successful');
	// 	  }else{
	// 	   $this->session->set_flashdata('flashSuccess', 'Sorry Google Recaptcha Unsuccessful!!');
	// 	  }
	// 	redirect(base_url('dashboard'));
	// }

	public function add_login(){
		$data =	array();

		if(isset($_POST['submit']))
		{
            $this->form_validation->set_rules('input_email', 'Email', 'trim|required|valid_email');
		    $this->form_validation->set_rules('input_password', 'Password', 'trim|required');
		    // $this->form_validation->set_rules('captcha', 'Access Code', 'required');

		    if ($this->form_validation->run() == FALSE) {
			    if(isset($this->session->userdata['logged_in'])){
			        $this->load->view('dashboard');
				}else{
				     $this->load->view('login_view');
				}
			}else{

				// $captcha         = $this->input->post('captcha');
    
                    $login = $this->input->post('input_email');
			        $password = $this->input->post('input_password');

			        $result = $this->Login_model->login_check($login, $password);

			        if ($result == TRUE) {

						$username = $this->input->post('input_email');
						$result = $this->Login_model->read_user_information($username);
						if ($result != false) {
							$session_data = array(
								'username' => $result[0]->name,
								'email' => $result[0]->email,
							);
							// Add user data in session
							$this->session->set_userdata('logged_in', $session_data);
							$this->load->view('dashboard');
			            }
			        } else {
						$data = array(
						    'error_message' => 'Invalid Username or Password'
						);
			            $this->load->view('login_view', $data);
			        }
     

	        }
		}

		$this->load->view('login_view', $data);		
	}

	public function captcha_refresh()
    {
        $config = array(
            'img_url'     => base_url() . 'public/assets/captch_img/',
            'img_path'    => 'public/assets/captch_img/',
            'img_height'  => 45,
            'word_length' => 5,
            'img_width'   => '200',
            'font_size'   => 10
        );
        $captcha_new = create_captcha($config);
        unset($_SESSION['captcha']);
        $this->session->set_userdata('captcha', $captcha_new['word']);
        echo $captcha_new['image'];
    }

	public function add_register(){
		$this->form_validation->set_rules('input_username', 'User Name', 'trim|required');
		$this->form_validation->set_rules('input_email', 'Email', 'trim|required|valid_email');
		$this->form_validation->set_rules('input_mobile', 'Mobile', 'trim|required');
		$this->form_validation->set_rules('input_password', 'Password', 'trim|required');
		$this->form_validation->set_rules('confirm_password', 'Confirm Password', 'trim|required|matches[input_password]');

		$this->form_validation->set_error_delimiters('<div class="error-msg">', '</div>');

		if($this->form_validation->run() == FALSE){
            $this->load->view('register_view');
		}else{
			$input_username 	= $this->security->xss_clean($this->input->post('input_username'));
			$input_email 	= $this->security->xss_clean($this->input->post('input_email'));
			$input_mobile 		= $this->security->xss_clean($this->input->post('input_mobile'));
			$input_password 	= $this->security->xss_clean($this->input->post('input_password'));

			$options = array("cost"=>4);
			// $hashPassword = password_hash($input_password,PASSWORD_BCRYPT,$options);
			$hashPassword = md5($input_password);

			$insert_data = array(
			    'name' => $input_username,
			    'email' => $input_email,
			    'mobile' => $input_mobile,
			    'password' => $hashPassword,
			    'status' => '1'
			);

			$checkDuplicate = $this->Login_model->checkDuplicate($input_email);

			if($checkDuplicate == 0){
                $insertUser = $this->Login_model->insertUser($insert_data);
			
				if($insertUser)
				{
					$data['status'] = 'true';
					$data['Msg'] = 'New User Register Successfully.';
					$this->load->view('login_view',$data);
				}
				else
				{   
					$data['status'] = 'false';
					$data['Msg'] = 'Unable to save user. Please try again';
					$this->load->view('register_view',$data);
				}
			}else{
				$data['status'] = 'false';
                $data['Msg'] = 'User email alreary exists';
				$this->load->view('register_view',$data);
			}
		}	
		
	}

	// Logout from admin page
	public function logout(){
		// Removing session data
		$sess_array = array(
		   'username' => ''
		);
		$this->session->unset_userdata('logged_in', $sess_array);

		$data =	array();		

		/*  CAPTCHA  STARTS */
		$config = array(
           'img_url' 		=> base_url() . 'public/assets/captch_img/',
           'img_path' 		=> 'public/assets/captch_img/',
           'img_height' 	=> 45,
           'word_length' 	=> 5,
           'img_width' 		=> '200',
           'font_size' 		=> 10
        );

        $captcha_new  = create_captcha($config);
        unset($_SESSION['captcha']);
        $this->session->set_userdata('captcha', $captcha_new['word']);
        $data['captchaImg'] = $captcha_new['image'];
		/* CAPTCHA ENDS */

		$data['Msg'] = 'Successfully Logout';
		$this->load->view('login_view', $data);
	}
}