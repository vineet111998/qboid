 $(document).ready(function(){
    window.host = window.location.protocol + "//" + window.location.host + "/qboid/";
  
$("#boxs").css({"display":"flex","transform": "translateY(0%) translateX(0%)"});
                                setTimeout(function() {
                                $("#boxs").css({"transform": "translateY(-100%) translateX(0%)","transition":"500ms"});
                                 }, 2000);

        $('.img').click((e)=>{
            var gameId=e.target.id;
            // alert(gameId);
            window.location=host+"HowtoPlay?gameId="+gameId;

        })
    });