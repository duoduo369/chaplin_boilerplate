Model         = require './model'
config        = require "config"

module.exports = class Collection extends Chaplin.Collection

  apiRoot: config.apiRoot

  # Use the project base model per default, not Chaplin.Model
  model: Model

  url: ->
    "#{@apiRoot}#{@urlPath()}?access_token=#{config.user.access_token}"
