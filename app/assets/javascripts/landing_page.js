// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, or any plugin's
// vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require rails-ujs
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
        $(element).removeClass("hidden");
        setTimeout(function(){
          $("#chatbox").animate({scrollTop: $("#chatbox").prop("scrollHeight")}, 300);
        }, 0);

        }, index * 1250 + Math.random() * 750);
    });

    // var target = $(this).data("target");

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
        $("#chatbox").animate({scrollTop: $("#chatbox").prop("scrollHeight")}, 300);
    });

    $("#chatbox").animate({ scrollTop: $('#chatbox').prop("scrollHeight")}, 1000);
  });

});
