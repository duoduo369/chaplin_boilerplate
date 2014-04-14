require 'lib/view-helper' # Just load the view helpers, no return value

module.exports = class View extends Chaplin.View
  # auto render view when model changed
  # Zhao Redstone
  listen:
    'change model': 'render'

  # Precompiled templates function initializer.
  getTemplateFunction: ->
    @template
