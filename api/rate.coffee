'use strict'

router = (require 'express').Router()
Topic  = require '../models/rate'
config = require '../config'

#routes
router.route('/rate')
  .get (req, res, next) ->
  	#TODO

module.exports = router
