<?php

defined('BASEPATH') OR exit('No direct script access allowed');
use PHPMailer\PHPMailer\PHPMailer;
use PHPMailer\PHPMailer\SMTP;
use PHPMailer\PHPMailer\Exception;

//Load Composer's autoloader
require 'vendor/autoload.php';

class CI_Controller {

	private static $instance;

	public $load;

	public function __construct()
	{
		self::$instance =& $this;

		foreach (is_loaded() as $var => $class)
		{
			$this->$var =& load_class($class);
		}

		$this->load =& load_class('Loader', 'core');
		$this->load->initialize();
		$this->checkSession();
		log_message('info', 'Controller Class Initialized');
	}

	public static function &get_instance()
	{
		return self::$instance;
	}

	public function verifyEmail($useremail)
	{
		$otp = rand(100000,999999);
		$mail = new PHPMailer(true);
 		try {
		    $mail->SMTPOptions = [
		        'ssl'=> [
		            'allow_self_signed' => true
		        ]
		    ];
		    $mail->SMTPDebug = 0;                      //Enable verbose debug output
		    $mail->isSMTP();                                            //Send using SMTP
		    $mail->Host       = 'smtp.gmail.com';                     //Set the SMTP server to send through
		    $mail->SMTPAuth   = true;                                   //Enable SMTP authentication
		    $mail->Username   = 'connectapp.net@gmail.com';                     //SMTP username
		    $mail->Password   = 'ypilwlzdmavkmuvr';                               //SMTP password
		    $mail->SMTPSecure = 'ssl';            //Enable implicit TLS encryption;
		    $mail->Port       = 465;                                    //TCP port to connect to; use 587 if you have set `SMTPSecure = PHPMailer::ENCRYPTION_STARTTLS`

		    //Recipients
		    $mail->setFrom('vineet@masspl.com', 'Kholkhel');
		    $mail->addAddress($useremail);     //Add a recipient
		    // $mail->addReplyTo('rjvkrs11@yahoo.com',);
		    // $mail->addCC('agsureka@masspl.com');

		    //Content
		    $mail->isHTML(true);                                  //Set email format to HTML
		    $mail->Subject = 'Email Verification';
		    $mail->Body    = 'Your Code is:'.$otp;
		    $mail->AltBody = 'This is the body in plain text for non-HTML mail clients';
		    $mail->send();
		    $output =array("code"=>200,"data"=>$otp);
		} 
		catch (Exception $e) {
			$output =array("code"=>503,"data"=>"{$mail->ErrorInfo}");
		}
			return $output;
	}

	public function checkSession()
	{
		if($this->session->userdata('login_status')==TRUE)
		{

			if($this->router->fetch_class()=="register" && $this->router->fetch_method()=="index")
			{
				redirect(BASE_URL()."dashboard");
			}


		}
		else if($this->session->userdata('login_status')!=TRUE)
		{

			if(($this->router->fetch_class()=="register" && $this->router->fetch_method()=="index")|| ($this->router->fetch_class()=="logout" && $this->router->fetch_method()=="index"))
			{
				
			}
			else if($this->router->fetch_class()!="register") 
			{
				if(isset($_GET['id']))
					redirect(BASE_URL()."register"."?id=".$_GET['id']);	
				else
					redirect(BASE_URL()."register");
				
			}

		}
	}

}
