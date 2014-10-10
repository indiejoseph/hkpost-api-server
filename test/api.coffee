'use strict'

should  = require 'should'
request = require 'supertest'
app     = require '../app'
server  = request app

describe 'API', ->

  describe 'OverseaRate', ->

    it 'should get status 500 and errors message', (done) ->
      server
        .get "/api/v1/oversea_rate?weight"
        .expect 500
        .end (err, res) ->
          res.body.errors.length.should.eql 3
          done()

    it 'should get a prices', (done) ->
      dest   = 248
      weight = 1000
      mail   = 'parcel'
      server
        .get "/api/v1/oversea_rate?weight=#{ weight }&dest=#{ dest }&mail=#{ mail }"
        .expect 200
        .end (err, res) ->
          res.body.surface.should.eql 96
          done()
