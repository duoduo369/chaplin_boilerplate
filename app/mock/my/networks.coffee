module.exports = (mock) ->
  # mock network api doc address
  # http://code.admaster.co/social/social_crm_api/wikis/network-api
  mock.get '/my/networks', [{
    id: 666
    name: 'Admaster 内部'
    created_at: '2013-09-03 12:21:23'
    updated_at: '2013-09-03 12:21:23'
    is_delete: no
    task_types: ['产品答疑', '销售机会', '危机公关']
  }, {
    id: 777
    name: '可口可乐'
    created_at: '2013-09-05 12:21:23'
    updated_at: '2013-09-05 12:21:23'
    is_delete: no
    task_types: ['产品答疑', '销售机会', '危机公关', '主动推广']
  }], {
    responseTime: 3000
  }

  mock.post '/my/networks', {
    id: Math.round(Math.random() * 100000000)
    name: 'This is random addition.'
  }

  mock.put '/networks/*', {
    id: Math.round(Math.random() * 100000000)
    name: 'The model has changed'
  }

  mock.delete '/networks/*', null
