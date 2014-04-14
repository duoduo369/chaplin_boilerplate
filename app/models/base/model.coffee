# Base model.
#
config    = require "config"

module.exports = class Model extends Chaplin.Model
  apiRoot: config.apiRoot

  urlRoot: ->
    "#{@apiRoot}#{@urlPath()}"

  url: ->
    "#{super}?access_token=#{config.user.access_token}"
