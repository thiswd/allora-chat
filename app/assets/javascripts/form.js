$(function(){

  $('.form-container').on('cocoon:after-insert', function(e, insertedItem) {

    emojiPicker.discover();

    $('.text-option').on("click", function(){
      $(this).parent().parent().children(".balloon-form.input-text-balloon").removeClass("hidden");
      $(this).parent().parent().children(".balloon-form.input-img-balloon").addClass("hidden");
    });

    $('.img-option').on("click", function(){
      $(this).parent().parent().children(".balloon-form.input-img-balloon").removeClass("hidden");
      $(this).parent().parent().children(".balloon-form.input-text-balloon").addClass("hidden");
    });

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
