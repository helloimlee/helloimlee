(function() {
  define(function(require) {
    var $, App, BackgroundImage;
    $ = require('jquery');
    BackgroundImage = require('modules/BackgroundImage');
    App = (function() {
      function App() {
        var backgroundImage;
        backgroundImage = new BackgroundImage();
      }

      return App;

    })();
    return App;
  });

}).call(this);
