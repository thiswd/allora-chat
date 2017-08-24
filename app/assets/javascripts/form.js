$(function(){

  $('.form-container').on('cocoon:after-insert', function(e, insertedItem) {

    emojiPicker.discover();

    $('.text-option').on("click", function(){
      hideField(this);
      $(this).parent().parent().children("#input-text-balloon").removeClass("hidden");
    });

    $('.img-option').on("click", function(){
      hideField(this);
      $(this).parent().parent().children("#input-img-balloon").removeClass("hidden");
    });

    $('.gif-option').on("click", function(){
      hideField(this);
      $(this).parent().parent().children("#input-gif-balloon").removeClass("hidden");
    });

    $('.map-option').on("click", function(){
      hideField(this);
      $(this).parent().parent().children("#input-map-balloon").removeClass("hidden");
    });

    $('.meteo-option').on("click", function(){
      hideField(this);
      $(this).parent().parent().children("#input-meteo-balloon").removeClass("hidden");
    });

    $('.youtube-option').on("click", function(){
      hideField(this);
      $(this).parent().parent().children("#input-youtube-balloon").removeClass("hidden");
    });

    function hideField(el) {
      $(el).parent().parent().children(".hide-field").addClass("hidden");
    }

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

});
