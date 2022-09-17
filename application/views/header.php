<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="stylesheet" type="text/css" href="<?php echo base_url() ; ?>assets/css/header.css">
    <link rel="icon" type="image/x-icon" href="<?php echo base_url() ; ?>assets/images/fav.png">
    <title>Young Indians</title>
    


  <!-- <link rel="stylesheet" type="text/css" href="<?php echo base_url() ; ?>assets/css/bootstrap.min.css"> -->
    <link rel="stylesheet" href="<?php echo base_url() ; ?>assets/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">
  
    <!--  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous"> -->

</head>
<body>
	<section class="header">
    <div class="container">
    
    <div class="headers-inners">
    <img src="https://ik.imagekit.io/wvwldj2ff/other/logo_BMMwfQyqhg.png?ik-sdk-version=javascript-1.4.3&updatedAt=1661629171254">
  </div>
  <div class="headers-inners">
  <div class="dropdown">
  <span type="button" class="dropbtn"><i class="fa fa-user"></i><i class="arrow right"></i></span>
  <div class="dropdown-content">
    <a href="logout">Logout</a>
  </div>
</div>
</div>
</div>
  </section>
    <script src="<?php echo base_url() ; ?>assets/js/jquery-3.3.1.min.js"></script>

  <script type="text/javascript">
    $(document).ready(function(){
      $(".dropdown").click(()=>{
        // $(".dropdown-content").css({"display":"block"});
        $(".dropdown-content").toggle();
      })
    });
  </script>
</body>
</html>
