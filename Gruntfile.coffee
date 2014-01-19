module.exports = (grunt) ->
    grunt.initConfig
        pkg: grunt.file.readJSON("package.json")

        stylus:
            compile:
                src: [
                    '_style/main.styl'
                ]
                dest: 'assets/css/main.css'

        concat:
            styles:
                src: [
                    'vendor/foundation/css/normalize.css'
                    'vendor/foundation/css/foundation.css'
                ]
                dest: 'assets/css/vendor.css'

    grunt.loadNpmTasks('grunt-contrib-stylus')
    grunt.loadNpmTasks('grunt-contrib-concat')

    grunt.registerTask('default', [
        'stylus'
        'concat'
    ])