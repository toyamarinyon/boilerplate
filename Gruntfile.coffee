module.exports = (grunt) ->
  grunt.initConfig
    watch:
      options:
        livereload:true
      slim:
        files:
          'views/*.slim'
      css:
        files:
          'assets/css/*.css'
      compass:
        files:
          'assets/sass/*.sass'
        tasks:
          'compass'
      js:
        files:
          'assets/js/*.js'
      coffee:
        files:
          'assets/coffee/*.coffee'
        tasks:
          'coffee'
    compass:
      dest:
        options:
          config:'./config.rb'
          bundleExec: true
    coffee:
      compile:
        options:
          join: true
        files:
          'assets/js/application.js': ['assets/coffee/require_config.coffee', 'assets/coffee/application.coffee']

  grunt.loadNpmTasks 'grunt-contrib-coffee'
  grunt.loadNpmTasks 'grunt-contrib-compass'
  grunt.loadNpmTasks 'grunt-contrib-watch'

  grunt.registerTask 'default', [
    'compass',
    'coffee',
    'watch'
  ]
