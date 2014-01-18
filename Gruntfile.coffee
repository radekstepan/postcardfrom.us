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
                    'vendor/foundation/css/normalize.css'
                    'vendor/foundation/css/foundation.css'
                    # Our styles.
                    '_src/fonts.css'
                    'assets/css/main.css'
                ]
                dest: 'assets/css/all.css'

    grunt.loadNpmTasks('grunt-contrib-stylus')
    grunt.loadNpmTasks('grunt-contrib-concat')

    grunt.registerTask('default', [
        'stylus'
        'concat'
    ])