(function() {
  "use strict";
  require.config({
    paths: {
      jquery: '../../bower_components/jquery/jquery.min'
    }
  });

  require(['App'], function(App) {
    return new App;
  });

}).call(this);
