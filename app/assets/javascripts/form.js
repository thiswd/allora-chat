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

  });

});
