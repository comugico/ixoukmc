module.exports = (grunt) ->
  grunt.initConfig
    pkg: grunt.file.readJSON 'package.json'
    coffee:
      compile:
        expand: true
        cwd: '_coffee'
        src: '**/*.coffee'
        dest: 'gen/js'
        ext: '.js'
    sass:
      compile:
        expand:true
        cwd: '_sass'
        src: '**/*.scss'
        dest: 'gen/sass'
        ext: '.css'
    shell:
      jekyll:
        command: 'jekyll serve --watch'
        options:
          async: true
      options:
        stdout: true
        stderr: true
        failOnError: true
    watch:
      coffee:
        files: ['_coffee/*.coffee']
        tasks: ['coffee']
      sass:
        files: ['_sass/*.scss']
        tasks: ['sass']
  grunt.loadNpmTasks 'grunt-contrib-coffee'
  grunt.loadNpmTasks 'grunt-contrib-sass'
  grunt.loadNpmTasks 'grunt-shell-spawn'
  grunt.loadNpmTasks 'grunt-contrib-watch'
  grunt.registerTask 'default',['shell:jekyll','watch']