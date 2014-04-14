View = require 'common/views/base/view'

module.exports = class ItemView extends View

  tagName: 'li'

  initialize: ->
    _.bindAll @

  render: ->
    @$el.html "<li>#{@model.get 'part1'}  #{@model.get 'part2'}</li>"
    @
