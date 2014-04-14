CollectionView        = require 'views/base/collection-view'
ItemView              = require 'views/network/item-view'
Collection            = require 'models/network-collection'

module.exports = class ListView extends CollectionView
  container: '.my-networks'
  className: 'my-network-list'
  template: require './templates/list'
  itemView: ItemView
  listSelector: 'ul'

  initialize: ->
    super

    @collection.fetch().success( =>
      setTimeout =>
        model = new @collection.model id: 888, name: 'Test'
        @collection.push model
        setInterval ->
          model.set 'name', moment().format('YYYY-MM-DD HH:mm:ss')
        , 500
      , 1000
    )
