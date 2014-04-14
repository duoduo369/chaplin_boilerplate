View        = require 'views/base/view'

module.exports = class ItemView extends View
  template: require './templates/item'
  tagName: 'li'

  events:
    'click': 'change'

  change: ->
    @model.save()
