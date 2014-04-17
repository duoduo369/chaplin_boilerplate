View = require './view'
module.exports = class CollectionView extends Chaplin.CollectionView

  listen:
    'addedToDOM': 'addedToDOM'

  addedToDOM: ->

  # This class doesn’t inherit from the application-specific View class,
  # so we need to borrow the method from the View prototype:
  getTemplateFunction: View::getTemplateFunction