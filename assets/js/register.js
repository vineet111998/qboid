$(document).ready(()=>{
	
	window.host = window.location.protocol + "//" + window.location.host + "/qboid/";
	window.useremail='';
	window.q1='';
	window.q2='';
	window.name='';
	window.number='';
	window.mailVerify=0;

	$('.form-holder').delegate("input", "focus", function(){
		$('.form-holder').removeClass("active");
		$(this).parent().addClass("active");
	})
	
	$('#verifyEmail').click(()=>{

		window.useremail = $('.email').val();
		var mailformat = /^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/;
			if(window.useremail.match(mailformat))
				{
						document.getElementById('spinners').style.display = 'flex';

		  			$.ajax({
						type: "POST",
						 url:'register/checkForRegistration',
						data:{useremail:window.useremail},
						success:
							function(res){
									console.log(res);
									if(res==0)
									{
										document.getElementById('spinners').style.display = 'none';

										$('.email').attr('disabled',true);
										$('#verifyEmail').css({'display':'none'});
										$('#generatesotps').css({'display':'block'});
									}
									else
									{
										document.getElementById('spinners').style.display = 'none';

										// console.log("logined!!!");
										window.location=host+"dashboard";
									}

							},
						error:
							function(err){
								console.log(err);
								}
					});
				}
			 	else
			 	{
			 		// console.log("error");
			 		 $('.email').val('');
			 		 
			 		$(".email").css({"border":"1px solid red"});
				    $(".emailserrors").text("Please enter a valid email address!").css("display","inline-block");

			 		 setTimeout(function() {
					$(".email").css({"border":"none"});
				    $(".emailserrors").text("Please enter a valid email address!").css("display","none");
					}, 5000);
			 	}
	});

	$('#generatesotps').click(()=>{
		document.getElementById('spinners').style.display = 'flex';
		window.useremail = $('.email').val();
			$.ajax({
						type: "POST",
						 url:'register/requestOTP',
						data:{useremail:window.useremail},
						success:
							function(res){
									var result= JSON.parse(res);
									if(result.code==200)
									{
										document.getElementById('spinners').style.display = 'none';
                                $("#box").css({"display":"flex","bottom":"0%"});
                                setTimeout(function() {
                                $("#box").css({"bottom":"-100%","transition":"500ms"});
                                 }, 5000);
										console.log(result.data);
											window.otp=result.data;
											$('.mailDiv').css({'opacity':'0'});
											$('.otpDiv').css({'opacity':'1','z-index':'1'});
									}
									else
										console.log("mail error!!!");
							},
						error:
							function(err){
								console.log(err);
								}
					});

	});

	$('.verifyotps').click(()=>{
		var otp=$('.otp').val();
		if(window.otp==otp)
		{
			window.mailVerify=1;
			$('.otpDiv').css({'opacity':'0','z-index':'0'});
			$('.mailDiv').css({'opacity':'1','z-index':'1'});
			$('#generatesotps').css({'display':'none'});
		}
		else
		{
			$(".otp").css({"border":"1px solid red"});
			$(".otpserrors").text("Please enter a valid OTP").css("display","inline-block");
			 	
			$("#boxs").css({"display":"flex","bottom":"0%"});
             setTimeout(function() {
            $("#boxs").css({"bottom":"-100%","transition":"500ms"});
            $(".otp").css({"border":"none"});
			$(".otpserrors").text("Please enter a valid OTP").css("display","none");
            }, 5000);
			// console.log("invalid OTP");
		}
	});

	$('input[name="parent"]').click(()=>
	{
		window.q1=$('input[name="parent"]:checked').val();
	});
	$('input[name="family"]').click(()=>
	{
		window.q2=$('input[name="family"]:checked').val();
	});

	$('.number').change(()=>{
		window.number=$('.number').val();
	 		if(/[a-zA-Z]/.test(window.number))
	 		{
	 		// 	$(".contact").css("border-bottom","2px solid red");
				// $(".contactserrors").text("Contact number should not contain any alphabets").css("color","red");
				// console.log("alphanumeric number is not allowed!!!");
			 	setTimeout(function() {
				$(".number").css({"border":"1px solid red"});
				$(".numberserrors").text("alphanumeric number is not allowed!!!!").css("display","inline-block");
				}, 5000);
				window.number='';
				$('.number').val('');
				
			}
			else if(window.number.length<10 || window.number.length>10)
			{
				$(".number").css({"border":"1px solid red"});
				$(".numberserrors").text("Please enter a valid number").css("display","inline-block");
			 	
			 	setTimeout(function() {
				$(".number").css({"border":"none"});
				$(".numberserrors").text("Please enter a valid number").css("display","none");
			}, 5000);

				window.number='';
				$('.number').val('');
			}
		
	});

		$('.name').change(()=>{

		window.name=$('.name').val();
	});

		$('#signup').click(()=>{
			if(window.useremail=='' || window.q1=='' || window.q2=='' || window.name=='' || window.number=='')
			{

				$(".email").css({"border":"1px solid red"});
				    $(".emailserrors").text("Please enter a valid email address!").css("display","inline-block");

				$(".name").css({"border":"1px solid red"});
				$(".nameserrors").text("Please enter a name").css("display","inline-block");

				$(".number").css({"border":"1px solid red"});
				$(".numberserrors").text("Please enter a valid number").css("display","inline-block");

				$(".checkmark").css({"border":"1px solid red"});
				$(".checkmarkserrors").text("Please enter a valid number").css("display","inline-block");

			 	setTimeout(function() {
				$(".email").css({"border":"none"});
				    $(".emailserrors").text("Please enter a valid email address!").css("display","none");

				$(".name").css({"border":"none"});
				$(".nameserrors").text("Please enter a name").css("display","none");

				$(".number").css({"border":"none"});
				$(".numberserrors").text("Please enter a valid number").css("display","none");

				$(".checkmark").css({"border":"none"});
				$(".checkmarkserrors").text("Please enter a valid number").css("display","none");
				}, 5000);


			}
			else
			{
						document.getElementById('spinners').style.display = 'flex';

				$.ajax({
						type: "POST",
						 url:'register/registerUser',
						data:{useremail:window.useremail, q1:window.q1, q2:window.q2, name:window.name, number:window.number, verify:window.mailVerify},
						success:
							function(res){
									if(res==1)

									{
										document.getElementById('spinners').style.display = 'none';

										console.log("logined!!!");
										window.location=host+"dashboard";
									}
							},
						error:
							function(err){
								console.log(err);
								}
					});
					
			}
		});

});