#global require
"use strict"

require.config

  paths:
    jquery: '../../bower_components/jquery/jquery.min'

require ['App'], (App) ->

  new App
