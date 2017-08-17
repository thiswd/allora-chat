//= require jquery
//= require jquery_ujs
//= require bootstrap-sprockets
//= require cocoon
//= require_tree .

$(function(){

  $(".new-click-more").click(function(e){
    e.preventDefault();

    $(this).next().remove();
    $(this).parent().removeClass("text-center").addClass("text-right");
    $(this).removeClass("btn btn-xs").addClass("balloon-right");

    var next_screen = $(this).parent().parent().next();
    $(next_screen).children().each(function(index, element){
      setTimeout(function() {
        $(element).removeClass("hidden") }, index * 1250 + Math.random() * 750);
    });

    $("#app").animate({ scrollTop: $("#app").prop("scrollHeight")}, 3000);

  });

  $(".new-click-next").click(function(e){
    e.preventDefault();

    $(this).prev().remove();
    $(this).parent().removeClass("text-center").addClass("text-right");
    $(this).removeClass("btn btn-xs").addClass("balloon-right");

    var next_post = $(this).parent().parent().parent().next();
    $(next_post).children(".screen1").children().each(function(index, element){
      setTimeout(function() {
        console.log($(element))
        $(element).removeClass("hidden") }, index * 1250 + Math.random() * 750);
    });

    $("#app").animate({ scrollTop: $("#app").prop("scrollHeight")}, 3000);

  });
});

