'use strict'

express    = require 'express'
models     = require './models'
config     = require './config'
app        = express()
bodyParser = require 'body-parser'
apiRouter  = require './api'

app.use bodyParser.urlencoded({ extended: yes })
app.use bodyParser.json()

port = process.env.PORT or 9003

app.get '/', (req, res) ->
  res.json { message: 'hooray! welcome to our api!' }

app.use '/', apiRouter

mongoose.connect config.mongodb.connect
mongoose.set 'debug', no
mongoose.connection.on 'error', ->
  util.error 'connection error'.red, arguments

mongoose.connection.on 'open', (ref) ->
  # Binding express
  app.listen port

  console.log "Listening on port #{ port }"

if module.parent?
  module.exports = app
