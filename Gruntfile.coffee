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
                    'vendor/store.js/store.js'
                    'vendor/moment/moment.js'
                    'vendor/moment/lang/cs.js'
                    'vendor/knuth-shuffle/index.js'
                ]
                dest: 'assets/js/vendor.js'
                options:
                    separator: ';'
            
            styles:
                src: [
                    'vendor/normalize-css/normalize.css'
                ]
                dest: 'assets/css/vendor.css'

        uglify:
            scripts:
                files:
                    'assets/js/vendor.min.js': 'assets/js/vendor.js'

        cssmin:
            combine:
                files:
                    'assets/css/vendor.min.css': 'assets/css/vendor.css'
                    'assets/css/main.min.css': 'assets/css/main.css'

    grunt.loadNpmTasks('grunt-contrib-stylus')
    grunt.loadNpmTasks('grunt-contrib-concat')
    grunt.loadNpmTasks('grunt-contrib-uglify')
    grunt.loadNpmTasks('grunt-contrib-cssmin')

    grunt.registerTask('default', [
        'stylus'
        'concat'
    ])

    grunt.registerTask('minify', [
        'uglify'
        'cssmin'
    ])