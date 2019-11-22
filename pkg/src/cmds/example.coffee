#------------------------------------------------------------------------------
# do work

_    = require 'lodash'
fs   = require 'fs-extra'
path = require 'path'
glob = require 'glob'
axios = require 'axios'

#------------------------------------------------------------------------------

command = (argv) ->
  log.print "first", argv


#------------------------------------------------------------------------------
# command settings

module.exports = 
  run         : command
  enable      : true
  visible     : true
  description : 'first command'
  example     : 'first example'
  options     :
    first:
      description : 'example of first cmd line options'
