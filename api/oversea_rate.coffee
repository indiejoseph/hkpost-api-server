'use strict'

router  = (require 'express').Router()
LRU     = require 'lru-cache'
config  = require '../config'
request = require 'request'
cheerio = require 'cheerio'
cache   = LRU { maxAge: config.cache.maxAge }

#routes
router.route('/oversea_rate')
  .get (req, res, next) ->
    # mail = ['letter_postcard', 'printed_papers', 'small_packet', 'parcel']
    weight = req.query.weight
    dest = req.query.dest
    mail = req.query.mail

    # validation
    errors = []

    unless dest
      errors.push 'Please select destination.'

    unless mail
      errors.push 'Please select mail type.'

    unless weight
      errors.push 'Please enter correct number for weight (Numeric Value).'

    if errors.length
      return res.status(500).json { errors: errors }

    key = "mail:#{ mail },dest:#{ dest },weight:#{ weight }"

    # check cache
    if cache.has key
      return res.json cache.get(key)

    options =
      url: config.hkpost.overseaRate
      method: 'POST'
      form:
        weight: weight
        mail: mail
        destination: dest
      headers:
        'Host': 'app1.hongkongpost.hk'
        'User-Agent': 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.9; rv:32.0) Gecko/20100101 Firefox/32.0'
        'Accept': 'text/html,application/xhtml+xml,application/xml;q=0.9,*/*;q=0.8'
        'Cookie': 'visid_nxg=CMS4MlQAAAAABQdallWJwB5iSDr0b8sm1J+UV2m8qms6Dib2+4LZG1v/1+58mxYJkudELIcW77d8tZz6Ss23KRmrgDaf4Z/gpA3G5Ci9ttj54aY='
        'Accept-Language': 'en-US,en;q=0.5'

    request options, (err, response, html) ->

      if err or response.statusCode isnt 200
        return response.status(500).json { errors: [ err.message ] }

      prices = {}

      # initial cheerio

      $ = cheerio.load html

      selectors = [
        's_rate'
        'a_rate'
        'spt_rate'
        'm05_rate'
        'm10_rate'
        'm20_rate'
        'm30_rate'
      ]

      for selector in selectors
        $input = $ '#' + selector
        if $input.length
          prices[selector] = parseInt $input.val()

      # add to cache
      cache.set key, prices

      # return
      res.json prices

module.exports = router
