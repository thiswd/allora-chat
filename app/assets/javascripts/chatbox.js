$(function(){

  function setUserAgent(window, userAgent) {
      if (window.navigator.userAgent != userAgent) {
          var userAgentProp = { get: function () { return userAgent; } };
          try {
              Object.defineProperty(window.navigator, 'userAgent', userAgentProp);
          } catch (e) {
              window.navigator = Object.create(navigator, {
                  userAgent: userAgentProp
              });
          }
      }
  }

  $(".iframe-link").click(function(e){
    e.preventDefault();
    var site = $(this)[0].href;

    var iframe = document.getElementById('modal-iframe').getElementsByTagName('iframe')[0];
    setUserAgent(iframe.contentWindow, window.navigator.userAgent);
    iframe.src = site;

    $("#app").animate({ scrollTop: 0}, 1000);
    $("#modal-iframe").removeClass("hidden");

    $("#site-src").text(site.substring(0,37));


    $('#iframe-exit').click(function() {
      $('#modal-iframe').addClass('hidden');
    });

  });


  $("#app").animate({ scrollTop: $("#app").prop("scrollHeight")}, 3000);

  // if(window.innerWidth < 500) {
  //   setTimeout(function () {
  //     $(".rr-side").addClass("mobile-show");
  //   }, 2000);
  // }

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
            $(element).css("transform", "scale(1,1)");
          }, 0);
          $("#app").animate({ scrollTop: $("#app").prop("scrollHeight")}, $(element).height() * 4);
        }, index * 1500
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
            $(element).css("transform", "scale(1,1)");
          }, 0);
          $("#app").animate({ scrollTop: $("#app").prop("scrollHeight")}, $(element).height() * 4);
        }, index * 1750
      );
    });

  });
});

