module.exports = (grunt) ->
    grunt.initConfig
        pkg: grunt.file.readJSON("package.json")

        stylus:
            compile:
                src: [
                    '_src/icons.styl'
                    '_src/main.styl'
                ]
                dest: 'assets/css/main.css'

        concat:
            styles:
                src: [
                    'vendor/normalize-css/normalize.css'
                    '_src/main.css'
                    '_src/highlight.css'
                ]
                dest: 'assets/css/all.css'

    grunt.loadNpmTasks('grunt-contrib-stylus')
    grunt.loadNpmTasks('grunt-contrib-concat')

    grunt.registerTask('default', [
        #'stylus'
        'concat'
    ])