Application   = require 'application'
routes        = require 'routes'
config        = require 'config'
mock          = require 'mock' if config.mockModel

# Initialize the application on DOM ready event.
$ ->
  # mock model instead real rest api
  mock() if config.mockModel
  new Application
    title: config.title
    controllerSuffix: config.controllerSuffix
    pushState: config.pushState
    routes: routes
