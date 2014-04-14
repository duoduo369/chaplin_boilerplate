View = require 'common/views/base/view'
List = require 'tutorial/models/list'
Item = require 'tutorial/models/item'
ItemView = require './item-view'

module.exports = class ListView extends View

  el: '#test'
  events:
    'click button': 'addItem'

  initialize: ->
    _.bindAll @

    @collection = new List
    @collection.bind('add', @appendItem)

    @counter = 0
    @render()

  render: ->
    @$el.append '<button class="pure-button pure-button-primary">Add List Item</button>'
    @$el.append '<ul></ul>'

  addItem: ->
    @counter++
    item = new Item
    item.set
      part2: "#{item.get 'part2'} #{@counter}"
    @collection.add item

  appendItem: (item) ->
    item_view = new ItemView model:item
    $('ul').append item_view.render().el
