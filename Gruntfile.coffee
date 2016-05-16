module.exports = (grunt) ->

  require('load-grunt-tasks') grunt
  require("time-grunt") grunt

  grunt.initConfig

    autoprefixer:
      dist:
        src: 'stylesheets/css/styles.css'

    sass:
      dev:
        options:
          outputStyle: 'compressed'
        files:
          'stylesheets/css/styles.css': 'stylesheets/sass/styles.sass'

    coffee:
      dist:
        expand: true
        cwd: 'javascripts/coffee'
        src: '{,*/}*.coffee'
        dest: 'javascripts/js'
        ext: '.js'

    watch:
      sass:
        options:
          spawn: false
        files: ['stylesheets/sass/{,*/}*.sass']
        tasks: ['sass:dev', 'autoprefixer', 'notify:sass']

      coffee:
        options:
            spawn: false
          files: ['javascripts/coffee/{,*/}*.coffee']
          tasks: [
            'coffee:dist'
            'notify:coffee'
          ]

      livereload:
        options:
          livereload: true
          spawn: false
        files: [
          'stylesheets/css/{,*/}*.css'
          'javascripts/js/{,*/}*.js'
          '{,*/}*.html'
          '{,*/}*.php'
          'images/{,*/}*.{gif,jpeg,jpg,png,svg,webp}'
        ]

    clean:
      dist:
        dot: true
        src: [
          'javascripts/js'
        ]

    uglify:
      requirejs:
        files:
          'bower_components/requirejs/require.js': ['bower_components/requirejs/require.js']

    notify:
      sass:
        options:
          title: 'Sass compiled'
          message: 'Grunt successfully compiled your Sass files'
      coffee:
        options:
          title: 'CoffeeScript compiled'
          message: 'Grunt successfully compiled your CoffeeScript files'


  grunt.registerTask "default", [
    "uglify"
    "sass:dev"
    "clean"
    "autoprefixer"
    "coffee"
    "watch"
  ]
