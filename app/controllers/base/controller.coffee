mediator      = require 'mediator'
config        = require 'config'
My            = require 'models/my'

module.exports = class Controller extends Chaplin.Controller
  # Compositions persist stuff between controllers.
  # You may also persist models etc.
  beforeAction: (params, route, options) ->
    return if route.controller is 'user'
    return location.href = '/user/login' if not localStorage.access_token
    config.user = {}
    _.each config.userItem, (x) ->
      config.user[x] = localStorage.getItem x

    (new My()).fetch().success((user) ->
      _.extend config.user, user
    ).error( ->
      location.href = '/user/login'
    )

