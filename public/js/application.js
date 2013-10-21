$(document).ready(function(){

  $("#get_color").click(function(){


    $.post('/color', function(data){
   console.log(data.cell);
   console.log(data.color);

    $("#color_me li:nth-child(" + data.cell + ")").css("background-color", ""+data.color+ "");
    }, "json")

  });

});
