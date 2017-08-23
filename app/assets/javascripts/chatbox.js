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

    var next_screen = $(this).parents(".screen").next();
    $(next_screen).children().children().each(function(index, element){
      setTimeout(function() {
          $(element).removeClass("hidden");
          setTimeout(function() {
            $(element).css("transform", "translateX(0)");
            $("#app").animate({ scrollTop: $("#app").prop("scrollHeight")}, 300);
          }, 0);
        }, index * 1000 + Math.random() * 750
      );
    });

  });

  $(".new-click-next").click(function(e){
    e.preventDefault();

    $(this).prev().remove();
    $(this).parent().removeClass("text-center").addClass("text-right");
    $(this).removeClass("btn btn-xs").addClass("balloon-right");

    var next_post = $(this).parents(".post").next();
    $(next_post).children(".screen1").children().children().each(function(index, element){
      setTimeout(function() {
        $(element).removeClass("hidden");
          setTimeout(function() {
            $(element).css("transform", "translateX(0)");
            $("#app").animate({ scrollTop: $("#app").prop("scrollHeight")}, 300);
          }, 0);
        }, index * 1250 + Math.random() * 750
      );
    });

  });
});

