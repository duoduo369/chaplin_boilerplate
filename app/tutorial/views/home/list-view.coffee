View = require 'common/views/base/view'

module.exports = class ListView extends View

  el: '#test'

  initialize: ->
    _.bindAll @
    @render()

  render: ->
    $(@el).append('<ul><li>hello backbone</li></ul>')
    @
