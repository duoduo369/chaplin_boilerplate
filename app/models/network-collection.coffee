Model           = require 'models/network'
BaseCollection      = require 'models/base/collection'

module.exports = class Collection extends BaseCollection

  urlPath: ->
    '/my/networks'

  # Use the project base model per default, not Chaplin.Model
  model: Model
