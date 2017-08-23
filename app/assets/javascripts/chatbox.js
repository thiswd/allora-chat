$(function(){

  $(".iframe-link").click(function(e){
    e.preventDefault();
    var site = $(this)[0].getElementsByTagName('a')[0].href;

    document.getElementById('modal-iframe').getElementsByTagName('iframe')[0].src = site;
    $("#modal-iframe").removeClass("hidden");
    setTimeout(function () {
      $("#modal-iframe").css("transform", "translateX(0)");
    }, 1000);

  });

  $("#app").animate({ scrollTop: $("#app").prop("scrollHeight")}, 3000);

  if(screen.width < 500) {
    setTimeout(function () {
      $(".r-side").addClass("show")
    }, 2000);
  }

  $(".new-click-more").click(function(e){
    e.preventDefault();

    $(this).next().remove();
    $(this).parent().removeClass("text-center").addClass("text-right");
    $(this).removeClass("btn btn-xs").addClass("balloon-right");

    var next_screen = $(this).parent().parent().next();
    $(next_screen).children().each(function(index, element){
      setTimeout(function() {
        $(element).removeClass("hidden");
        $(element).animate({"left": "0px"});
        }, index * 1000 + Math.random() * 750
      );
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
        $(element).removeClass("hidden");
        $(element).animate({"left": "0px"});
        }, index * 1250 + Math.random() * 750
      );
    });

    $("#app").animate({ scrollTop: $("#app").prop("scrollHeight")}, 3000);

  });
});

