define (require) ->

  $ = require 'jquery'

  class BackgroundImage

    constructor: ->
      windowWidth = $(window).width()
      windowHeight = $(window).height()
      $(document).mousemove (e) ->
        horiz = e.pageX
        vert = e.pageY
        $('body').css({'background-position-x': -(horiz/windowWidth)*100, 'background-position-y': -(vert/windowHeight)*100})

    BackgroundImage
