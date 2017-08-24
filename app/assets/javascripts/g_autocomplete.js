$(function(){
  $('.container').on('cocoon:after-insert', function(e, itemAdded) {
    var input = itemAdded.find('.searchTextField')[0];

    if (input) {
      new google.maps.places.Autocomplete(input);
    }
  });
});
