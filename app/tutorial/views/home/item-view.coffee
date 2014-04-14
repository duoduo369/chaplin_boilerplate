View = require 'common/views/base/view'

module.exports = class ItemView extends View

  tagName: 'li'

  events:
    'click .swap': 'swap'
    'click .delete': 'remove'

  initialize: ->
    _.bindAll @
    @model.bind('change', @render)
    @model.bind('remove', @unrender)

  render: ->
    @$el.html """
      <span>#{@model.get 'part1'}  #{@model.get 'part2'}</span>
      <span class="swap bg-orange">swap</span>
      <span class="delete bg-pink">delete</span>
    """
    @

  unrender: ->
    @$el.remove()

  swap: ->
    @model.set
      part1: @model.get 'part2'
      part2: @model.get 'part1'

  remove: ->
    @model.destroy()
