<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="icon" type="image/x-icon" href="<?php echo base_url() ; ?>assets/images/fav.png">
  
    <script src="<?php echo base_url() ; ?>assets/js/jquery-3.3.1.min.js"></script>

  
      <script src="<?php echo base_url() ; ?>assets/js/dashboard.js"></script>
          <link rel='stylesheet' href='https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css'>       
              <link rel="stylesheet" href="<?php echo base_url() ; ?>assets/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">
    
    <!-- <link rel="stylesheet" href="<?php echo base_url() ; ?>assets/css/style.css"> -->
    <link rel="stylesheet" href="<?php echo base_url() ; ?>assets/css/catalogue.css">

  <title></title>
      <style type="text/css">
.container-fluids{
/*background: rgba(109,127,82,0.12);*/
height: 100vh;
   }

         #box,#boxs,#boxss {
    /*animation: slide-in 500ms;*/
    transform: translateY(-100%) translateX(0%);transition:500ms;
    width: 100%;
    height: 100vh;
    /*position: absolute;*/
    /*justify-content: center;*/
    display: flex;
    justify-content: center;
    align-items: center;
    position: fixed;
    z-index: 99;
    top: 0;
  }
  #box span,#boxs span,#boxss span{
    background: lightyellow;
    position: absolute;
    color: #000;
    padding: 1%;
    font-size: 17px;
    margin: 2%;
    width: 35%;
    display: flex;
    text-align: center;
    justify-content: space-around;


  }

    </style>
</head>
<body>




  <div class="container-fluids">
    <!-- <div id="boxs">
  <div><h3>Welcome</h3> Young Indians </div>
</div> -->
  <?php $this->load->view('header')?>
<div class="container">


<h3 style="padding: 10px 10px 5px; margin: 4% auto 0; text-align: left; color:#6d7f52;">List of Games</h3>
<div class="row"> 
<?php foreach($gameData as $key => $value){ ?>
<div class="columns">
      <div class="imgsdiv">
    <img src="" style="width:100%" id="<?php echo $value['mg_id']?>" class="img">
    


  </div>
    <h4 class="img" id="<?php echo $value['mg_id']?>"><?php echo $value['mg_name']?></h4>
  </div>

<?php } ?>


</div>

</div>

</div>


</body>
</html>