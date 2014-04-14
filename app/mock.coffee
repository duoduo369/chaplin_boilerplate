config        = require 'config'

mock = (path, res, options = null) ->
  options = _.extend {
    url: "#{config.apiRoot}#{path}?*"
    responseTime: 750
    responseText: JSON.stringify res
  }, options

  $.mockjax options

mock.get = (path, res, options = null) ->
  mock path, res, _.extend options, type: 'get'

mock.post = (path, res, options = null) ->
  mock path, res, _.extend options, type: 'post'

mock.put = (path, res, options = null) ->
  mock path, res, _.extend options, type: 'put'

mock.delete = (path, res, options = null) ->
  mock path, res, _.extend options, type: 'delete'

module.exports = ->
  require('mock/user')(mock)
  require('mock/my/networks')(mock)
