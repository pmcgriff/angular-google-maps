# Karma configuration
# http://karma-runner.github.io/0.10/config/configuration-file.html
module.exports = (config) ->
  config.set

    # base path, that will be used to resolve files and exclude
    basePath: ""

    # testing framework to use (jasmine/mocha/qunit/...)
    frameworks: ["jasmine"]

    # list of files / patterns to load in the browser
    files: [
      "https://maps.googleapis.com/maps/api/js?sensor=false"
      "dist/vendor/scripts/jquery.js"
      "dist/vendor/scripts/lodash.compat.js"
      "dist/vendor/scripts/angular.js"
      "dist/vendor/scripts/bluebird.js"
      "dist/vendor/scripts/*.js"
      "app/scripts/module.js"
      "app/scripts/controllers/*.js"
      "app/scripts/services/*.js"
      "app/scripts/directives/*.js"
      "app/scripts/app.js"
      # "test/mock/**/'.js"
      "test/spec/**/*"
    ]

    # list of files / patterns to exclude
    exclude: []

    # web server port
    port: 8080

    # level of logging
    # possible values: LOG_DISABLE || LOG_ERROR || LOG_WARN || LOG_INFO || LOG_DEBUG
    logLevel: config.LOG_WARN

    # enable / disable watching file and executing tests whenever any file changes
    autoWatch: false

    # Start these browsers, currently available:
    # - Chrome
    # - ChromeCanary
    # - Firefox
    # - Opera
    # - Safari (only Mac)
    # - PhantomJS
    # - IE (only Windows)
    browsers: ["PhantomJS"] #, 'Chrome', 'IE'

    # Continuous Integration mode
    # if true, it capture browsers, run tests and exit
    singleRun: true

    # report test results Mocha-style
    reporters: ["mocha"]

  return
