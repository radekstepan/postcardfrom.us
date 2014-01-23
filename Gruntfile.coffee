module.exports = (grunt) ->
    grunt.initConfig
        pkg: grunt.file.readJSON("package.json")

        stylus:
            compile:
                src: [
                    '_styles/pygments.styl'
                    '_styles/fonts.styl'
                    '_styles/icons.styl'
                    '_styles/main.styl'
                ]
                dest: 'assets/css/main.css'

        concat:
            scripts:
                src: [
                    'vendor/jquery/jquery.js'
                ]
                dest: 'assets/js/vendor.js'
                options:
                    separator: ';'
            
            styles:
                src: [
                    'vendor/normalize-css/normalize.css'
                ]
                dest: 'assets/css/vendor.css'

    grunt.loadNpmTasks('grunt-contrib-stylus')
    grunt.loadNpmTasks('grunt-contrib-concat')

    grunt.registerTask('default', [
        'stylus'
        'concat'
    ])