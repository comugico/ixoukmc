(function() {
  $(function() {
    var home, items;
    home = $('#home');
    items = $('#servers', home).find('.item');
    return $(items).each(function(i, item) {
      var img, shot;
      shot = $(item).find('.shot');
      img = $(shot).find('img');
      if ((img == null) || $(img).size() < 1) {
        return true;
      }
      $(shot).css({
        'background-image': 'url(' + $(img).attr('src') + ')'
      });
      $(img).remove();
      return true;
    });
  });

}).call(this);
