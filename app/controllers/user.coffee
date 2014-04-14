Controller    = require 'controllers/base/controller'
mediator      = require 'mediator'
config        = require 'config'
Model         = require 'models/base/model'
LoginView     = require 'views/user/login'

module.exports = class User extends Controller

  login: (params, route, options) ->
    if params.access_token
      _.each params, (value, key) ->
        localStorage.setItem key, value
      location.href = localStorage.beforeLoginUrl || '/'
    else
      localStorage.setItem 'beforeLoginUrl', '/'
      @model = new Model
        loginUrl : [
          "#{config.open.root}/oauth/authorize"
          "client_id=#{config.open.clientId}&response_type=token"
        ].join '?'
      new LoginView {@model}

  logout: (params, route, options) ->
    l = localStorage
    if params.clean is 'yes'
      for x in [(l.length - 1)..0]
        l.removeItem l.key x
      location.href = '/'
    else
      location.href = [
        "#{config.open.root}/user/logout"
        [
          "client_id=#{config.open.clientId}"
          "redirect_uri=#{config.open.logoutUrl}"
        ].join '&'
      ].join '?'
