$(function(){
  $('.gif-library').click(function(){
    $(".giphys").empty();
    $("#modal-1").modal("show");
    window.inputModal = this;
  });

  $('.giphys').on('DOMNodeInserted', function() {

    $('.giphys img').on('click', function(){
      var gif_url = $(this)[0].src;
      $('.giphys').children().removeClass("clicked-gif");

      $(this).addClass("clicked-gif");

      $(inputModal).val(gif_url);

    });
  });
});



