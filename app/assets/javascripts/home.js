$(function(){

  $(".more").click(function(e){
    e.preventDefault();

    $(this).next().remove();

    $(this).parent().removeClass("text-center").addClass("text-right");

    $(this).removeClass("btn btn-xs option").addClass("balloon-right");


    var target = $(this).data("target");

    $(target).children().each(function(index, element){
      setTimeout(function() {
        $(element).removeClass("hidden");
        setTimeout(function(){
          $("#chatbox-home").animate({scrollTop: $("#chatbox-home").prop("scrollHeight")}, 300);
        }, 0);

      }, index * 1250 + Math.random() * 750);
    });
  });

  $(".next").click(function(e){
    e.preventDefault();

    $(this).prev().remove();

    $(this).parent().removeClass("text-center").addClass("text-right");

    $(this).removeClass("btn btn-xs option").addClass("balloon-right");

    var target = $(this).data("target");
    $(target).children().each(function(index, element){
      setTimeout(function() {
        $(element).removeClass("hidden");
        setTimeout(function(){
          $("#chatbox-home").animate({scrollTop: $("#chatbox-home").prop("scrollHeight")}, 300);
        }, 0);

      }, index * 1250 + Math.random() * 750);
    });
  });

});
