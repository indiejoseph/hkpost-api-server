'use strict'

express    = require 'express'
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

# Binding express
app.listen port

console.log "Listening on port #{ port }"

module.exports = app
