Controller = require 'common/controllers/base/controller'
ListView = require 'tutorial/views/home/list-view'
HeaderView = require 'tutorial/views/common/header-view'
HomeView = require 'tutorial/views/home/home-view'

module.exports = class HomeController extends Controller

  beforeAction: ->
    @reuse 'home', HomeView
    @reuse 'header', HeaderView, region: 'header'

  index: ->
    new ListView
      region: 'container'
