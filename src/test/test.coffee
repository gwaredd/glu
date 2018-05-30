#------------------------------------------------------------------------------

should = require('chai').should()

describe 'some_test', ->
  describe 'xyz', ->
    it 'test a thing', ->
      [1,2,3].indexOf(4).should.equal -1

