module.exports = (match) ->
  match '', 'home#index'
  match 'user/login', 'user#login'
  match 'user/logout', 'user#logout'

