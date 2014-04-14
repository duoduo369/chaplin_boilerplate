View              = require 'views/base/view'
Network           = require 'models/network'
NetworkListView   = require 'views/network/list-view'
NetworkCollection = require 'models/network-collection'

module.exports = class HomePageView extends View
  container: 'body'
  autoRender: true
  className: 'home-page'
  template: require './templates/home'
  events:
    'click': 'addNetwork'

  listen:
    addedToDOM: 'addedToDOM'

  addedToDOM: ->
    @networkListView = new NetworkListView
      collection: new NetworkCollection()

  addNetwork: ->
    model = new Network name: "This is new Model"
    model.save().success ->
      model.set 'name', model.get('name') + model.get('id')
    @networkListView.collection.push model
