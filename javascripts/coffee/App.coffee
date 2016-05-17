define (require) ->

    $ = require 'jquery'
    BackgroundImage = require 'modules/BackgroundImage'

    class App

        constructor: ->

            backgroundImage = new BackgroundImage()

    App
