Controller        = require 'controllers/base/controller'
HomePageView      = require 'views/home/home-page-view'
config            = require 'config'
Model             = require 'models/base/model'

module.exports = class HomeController extends Controller

  index: ->
    @profileView = new HomePageView
      model: new Model config

