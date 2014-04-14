View = require 'views/base/view'
Model = require 'models/base/model'
config = require 'config'

# Site view is a top-level view which is bound to body.
module.exports = class LoginView extends View
  autoRender: yes
  container: 'body'
  id: 'login-container'
  template: require './templates/login'
  model: new Model config
