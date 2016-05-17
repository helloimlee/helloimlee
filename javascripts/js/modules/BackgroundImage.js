(function() {
  define(function(require) {
    var $, BackgroundImage;
    $ = require('jquery');
    return BackgroundImage = (function() {
      function BackgroundImage() {
        var windowHeight, windowWidth;
        windowWidth = $(window).width();
        windowHeight = $(window).height();
        $(document).mousemove(function(e) {
          var horiz, vert;
          console.log(e);
          horiz = e.pageX;
          vert = e.pageY;
          return $('body').css({
            'background-position-x': -(horiz / windowWidth) * 100,
            'background-position-y': -(vert / windowHeight) * 100
          });
        });
      }

      BackgroundImage;

      return BackgroundImage;

    })();
  });

}).call(this);
