<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">
    <!-- <title>Young Indians</title> -->
    <link rel="icon" type="image/x-icon" href="<?php echo base_url() ; ?>assets/images/fav.png">
    
    <meta name="viewport" content="width=device-width, initial-scale=1.0">


    <!-- STYLE CSS -->
 <link rel="stylesheet" href="<?php echo base_url() ; ?>assets/css/howtoplay.css">
 <link rel="stylesheet" href="<?php echo base_url() ; ?>assets/css/bootstrap.min.css">
 <script src='https://kit.fontawesome.com/a076d05399.js' crossorigin='anonymous'></script>



  </head>

  <body>
    <div class="container-fluids">
    <?php $this->load->view('header');?>


<div class="container">
<h3 style="padding: 10px 10px 5px; margin: 2% auto 2%; text-align: center; color:#6d7f52;">How To Play</h3>

  <!--Slider-->
<div id="slider"> 
    <?php foreach ($gameData as $key => $value){?>

      <div class="slide active" style="background:dodgerBlue;">
        <img src="<?php echo $value['mgd_url'] ?>" >
      </div>

    <?php } ?>
  
  <!-- <div class="slide" style="background:coral;">
     <img src="<?php echo base_url() ; ?>assets/images/slides2.jpg" >
  </div>
 
  <div class="slide" style="background:crimson;">
    <img src="<?php echo base_url() ; ?>assets/images/slides3.jpg" >
  </div>
  
  <div class="slide" style="background: #6edf10;">
    <img src="<?php echo base_url() ; ?>assets/images/slides4.jpg" >
  </div> -->
  
  <!--Controlling arrows-->
  <span class="controls" onclick="prevSlide(-1)" id="left-arrow"><i class="fa fa-arrow-left" aria-hidden="true"></i>
</span>
  <span class="controls" id="right-arrow" onclick="nextSlide(1)"><i class="fa fa-arrow-right" aria-hidden="true"></i>
</span>
</div>

  <div id="dots-con">
    <?php foreach ($gameData as $key => $value){?>
 <span class="dot"></span>
 <?php } ?>
 <!-- <span class="dot"></span>
 <span class="dot"></span>
 <span class="dot"></span> -->
 </div>
</div>
</div>


    <script src="<?php echo base_url() ; ?>assets/js/jquery-3.3.1.min.js"></script>

      
    
<script>  
  var slides = document.querySelectorAll(".slide");
var dots = document.querySelectorAll(".dot");
var index = 0;


function prevSlide(n){
  index+=n;
  // console.log("prevSlide is called");
  changeSlide();
}

function nextSlide(n){
  index+=n;
  changeSlide();
}

changeSlide();

function changeSlide(){
    
  if(index>slides.length-1)
    index=0;
  
  if(index<0)
    index=slides.length-1;
  
  // console.log(slides.length)
  
    for(let i=0;i<slides.length;i++){
      slides[i].style.display = "none";
      
      dots[i].classList.remove("active");
      
      
    }
    
    slides[index].style.display = "block";
    dots[index].classList.add("active");

  

}


</script>
  </body>
</html>
