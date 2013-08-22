module.exports = (grunt) ->
  grunt.initConfig
    watch:
      options:
        livereload:true
      html:
        files:
          '*.html'
      css:
        files:
          '*.css'
      slim:
        files:
          'views/*.slim'
      compass:
        files:
          '*.sass'
        tasks:
          'compass'
    slim:
      dest:
        files: [
          expand: true
          src:'*.slim'
          dest:'.'
          ext:'.html'
        ]
    compass:
      dest:
        options:
          config:'./config.rb'
    connect:
      livereload:
        options:
          port:9001

  grunt.loadNpmTasks 'grunt-contrib-connect'
  grunt.loadNpmTasks 'grunt-slim'
  grunt.loadNpmTasks 'grunt-contrib-compass'
  grunt.loadNpmTasks 'grunt-contrib-watch'

  grunt.registerTask 'default', [
    'connect',
    'compass',
    'slim',
    'watch'
  ]
