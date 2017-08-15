//= require jquery
//= require jquery_ujs
//= require bootstrap-sprockets
//= require_tree .


$(function(){

  $(".more").click(function(e){
    e.preventDefault();

    $(this).next().remove();

    $(this).parent().removeClass("text-center").addClass("text-right");

    $(this).removeClass("btn btn-xs option").addClass("balloon-right");

    var target = $(this).data("target");

    $(target).children().each(function(index, element){
      setTimeout(function() {
        $(element).removeClass("hidden") }, index * 1250 + Math.random() * 750);
    });

    // $(target).removeClass("hidden");

    $("#chatbox").animate({ scrollTop: $('#chatbox').prop("scrollHeight")}, 2000);
  });

  $(".next").click(function(e){
    e.preventDefault();

    $(this).prev().remove();

    $(this).parent().removeClass("text-center").addClass("text-right");

    $(this).removeClass("btn btn-xs option").addClass("balloon-right");

    var target = $(this).data("target");

    $(target).children().each(function(index, element){
      setTimeout(function() {
        $(element).removeClass("hidden") }, index * 1250 + Math.random() * 750);
    });

    // $(target).removeClass("hidden");

    $("#chatbox").animate({ scrollTop: $('#chatbox').prop("scrollHeight")}, 1000);
  });
});
