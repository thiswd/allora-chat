$(function(){

  $('.giphys').on('DOMNodeInserted', function() {

    $('.giphys img').on('click', function(){
      var gif_url = $(this)[0].src;

      $('#edition_remote_greeting_img_url').val(gif_url);

    });
  });
});



