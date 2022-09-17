<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<title>Young Indians</title>
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="icon" type="image/x-icon" href="<?php echo base_url() ; ?>assets/images/fav.png">

          <link rel='stylesheet' href='https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css'>       

		<script src="<?php echo base_url() ; ?>assets/js/jquery-3.3.1.min.js"></script>
		<script src="<?php echo base_url() ; ?>assets/js/register.js"></script>
		<!-- STYLE CSS -->
		<link rel="stylesheet" href="<?php echo base_url() ; ?>assets/css/style.css">
		<style type="text/css">
					.verifyEmail,.verifyotps,#generatesotps{
			position: absolute;
    z-index: 2;
    right: 10px;
    background: #6d7f52;
    color: #fff;
    padding: 5px 10px;
    border-radius: 10px;
    cursor: pointer;
    border: 1px solid #6d7f52;
		}
		.verifyEmail:hover,.verifyotps:hover,#generatesotps:hover{
    background: #849963;
    border: 1px solid #849963;
		}
		</style>
	</head>

	<body>

		  <div id="box"><span><i class="fa-regular fa fa-check-circle" aria-hidden="true"></i><div style="text-align: left;"><h4>Success!</h4><p> OTP sent successfully!</p></div> &nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp; <a style="text-decoration: none;display: flex; align-items: center; justify-content: center;">Close</a></span></div>
		  <div id="boxs"><span><i class="fa-regular fa fa-close" aria-hidden="true"></i><div style="text-align: left;"><h4>Error!</h4><p>  Invalid OTP!</p></div> &nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp; <a style="text-decoration: none;display: flex; align-items: center; justify-content: center;">Close</a></span></div>


		<div class="wrapper">
			<div class="inner">
				<div class="image-holder">
					<img src="<?php echo base_url() ; ?>assets/images/qboid.png" alt="">
				</div>
				<form action="">
					 <div class="form-content" id="spinners">

                                <svg class="loader" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 340 340">
                                <circle cx="170" cy="170" r="160" stroke="#E2007C"/>
                                <circle cx="170" cy="170" r="135" stroke="#404041"/>
                                <circle cx="170" cy="170" r="110" stroke="#E2007C"/>
                                <circle cx="170" cy="170" r="85" stroke="#404041"/>
                            </svg>
                        </div>
					<h3>Sign Up</h3>
					<div class="form-row otpDiv" style="position: relative; display: flex; opacity: 0">
						<div class="form-holder " style="position: absolute; width: 100%;">
						<input type="text" placeholder="OTP" class="form-control otp">
									<span class="verifyotps">Verify OTP</span>

					</div>
					<span class="otpserrors serrors"></span>

				</div>
						<div class="form-holder mailDiv">
						<input type="text" placeholder="e-mail" class="form-control email">
									<span class="verifyEmail" id="verifyEmail">Verify Email</span>
									<span id="generatesotps" style="display: none;">Generate OTP</span>
					</div>
					<span class="emailserrors serrors"></span>
	        

					<div class="form-holder">
						<input type="text" placeholder="name" class="form-control name">
					</div>
					<span class="nameserrors serrors"></span>


					<div class="form-holder">
						<input type="text" placeholder="Contact Number" class="form-control number" style="font-size: 15px;">
					</div>
					<span class="numberserrors serrors"></span>



					<h4 style="margin: 28px auto 0; font-size: 15px;">Are you Parent?</h4>
					<div class="checkbox">
						<label>
							<input type="radio" value="yes"  name="parent">Yes
							<span class="checkmark"></span>
						</label>
					</div>
					<div class="checkbox">
						<label>
							<input type="radio" value="no" name="parent">No
							<span class="checkmark"></span>
						</label>
					</div>

					<h4 style="margin: 10px auto 0; font-size: 15px">Are you live in joint family?</h4>
					<div class="checkbox">
						<label>
							<input type="radio"  name="family" value="yes">Yes
							<span class="checkmark"></span>
						</label>
					</div>
					<div class="checkbox">
						<label>
							<input type="radio"  name="family" value="no">No
							<span class="checkmark"></span>
						</label>
					</div>

		
					<div class="form-login">
						<button type="button" id="signup">Sign up</button>
					
					</div>
				</form>
			</div>
		</div>

		
	</body>
</html>