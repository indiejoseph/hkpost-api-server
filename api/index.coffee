'use strict'

fs     = require 'fs'
path   = require 'path'
router = (require 'express').Router()


# load all routers in current folder
fs
  .readdirSync(__dirname)
  .filter (file) ->
    return (file.indexOf('.') isnt 0) && (file isnt 'index.coffee')

  .forEach (file) ->
    router.use('/api/v1', (require path.join(__dirname, file)))

# assume "not found" in the error msgs
# is a 404. this is somewhat silly, but
# valid, you can do whatever you like, set
# properties, use instanceof etc.
router.use (err, req, res, next) ->
  # treat as 404
  return next() if (~err.message.indexOf('not found'))

  # log it
  console.error err.stack

  # error page
  res.status 500
  res.send 'Something went wrong'

# assume 404 since no middleware responded
router.use (req, res, next) ->
  res.status(404).send 'Not found - ' + req.originalUrl


module.exports = router
