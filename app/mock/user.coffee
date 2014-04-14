module.exports = (mock) ->
  # mock user api doc address
  # http://code.admaster.co/social/social_crm_api/wikis/user-api
  mock.get '/user', {
    id: 789
    name: 'Redstone Zhao'
    email: 'zhaoxiongfei@admaster.com.cn'
    avatar: 'http://www.gravatar.com/avatar/175e8f65b44240a1ed29db13eae6f0c4?s=90&d=mm'
    created_at: '2011-03-02 09:00:00'
    updated_at: '2013-08-28 18:31:36'
    is_delete: no
  }
