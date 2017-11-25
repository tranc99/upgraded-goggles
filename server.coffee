Hapi = require('hapi')

# create a server with a host and port
server = new Hapi.Server()
server.connection({
  host: 'localhost',
  port: 8000
  })

# add the route
server.route({
  method: 'GET',
  path: '/hello',
  handler: (request, reply)->
    reply('hello world')
  })

# start the server
server.start((err)=>
  if (err)
    throw err
  console.log 'Server running at:', server.info.uri

  )
