module.exports =
  title: 'CRM 2.0'
  apiRoot: 'http://brunch.stonephp.com/rest_api_v2'
  open:
    root: 'http://open.admaster.com.cn'
    clientId: 'c5902e19505dd885a7ff'
    logoutUrl: encodeURIComponent('http://brunch.stonephp.com/user/logout?clean=yes')

  pushState: yes
  controllerSuffix: ''

  # localStorage store user's field
  userItem: ['access_token', 'expires_in', 'email', 'username']

  # Boolean if development mode `true` or `false`
  isDev: location.host is 'www.crmmaster.com.cn'

  mockModel: yes

  # store current user
  user: {}
