$(function(){
  $('.form-container').on('cocoon:after-insert', function() {
    $("#weather").click(function(e){
      e.preventDefault();
      value = $(".weather input").val();
      $.ajax({
        type: "GET",
        url: "/editions/weather?weather=" + value,
        dataType: "json",
        success: function(data) {
          console.log(data);
          $(".weather input").val("Weather Conditions: Min. Temp.:" + data.main.temp.toString() )
        },
        error: function(jqXHR) {
          console.error(jqXHR.responseText);
        }
      });
    });
  });

});



