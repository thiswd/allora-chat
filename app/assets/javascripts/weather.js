$(function(){
  $('.container').on('cocoon:after-insert', function(e, item_added) {
    window.item_added = item_added;
    item_added.find("#weather").click(function(e){
      e.preventDefault();
      e.stopPropagation()

      var value = item_added.find(".weather input").val();
      console.log(value)
      $.ajax({
        type: "GET",
        url: "/editions/weather?weather=" + value,
        dataType: "json",
        success: function(data) {
          item_added.find(".weather input").val("Previsão do tempo em " + value +
             " - " + " Temperatura min.: " + data.main.temp_min.toString() + " °C " + " - " +
            "Temperatura máx.: " + data.main.temp_max.toString() + " °C "  +
            " - " + "Umidade do ar: " + data.main.humidity.toString() + " %  - " +
            "Vento: " + data.wind.speed.toString() + " km/h" )
        },
        error: function(jqXHR) {
          console.error(jqXHR.responseText);
        }
      });
    });
  });

});



