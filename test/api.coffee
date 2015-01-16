'use strict'

should  = require 'should'
request = require 'supertest'
app     = require '../app'
LRU     = require 'lru-cache'
cache   = LRU()
server  = request app

describe 'API', ->

  describe 'Local', ->

    beforeEach -> cache.reset()

    it 'should get status 500 and erros message', (done) ->
      server
        .get "/api/v1/local"
        .expect 500
        .end (err, res) ->
          res.body.errors.length.should.eql 2
          done()

    it 'should get a local rate', (done) ->
      weight = 1000
      mail   = 'parcel'
      server
        .get "/api/v1/local?weight=#{ weight }&mail=#{ mail }"
        .expect 200
        .end (err, res) ->
          res.body.should.have.property 'rate'
          res.body.should.have.property 's_rate'
          res.body.should.have.property 'c_rate'
          res.body.should.have.property 'smart_rate'
          res.body.should.have.property 'smart_rate1'
          done()

  describe 'OverseaRate', ->

    beforeEach -> cache.reset()

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
          res.body.should.have.property 'm30_rate'
          res.body.should.have.property 'm20_rate'
          res.body.should.have.property 'm10_rate'
          res.body.should.have.property 'm05_rate'
          res.body.should.have.property 'spt_rate'
          res.body.should.have.property 'a_rate'
          res.body.should.have.property 's_rate'
          done()
