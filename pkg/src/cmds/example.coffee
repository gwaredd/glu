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
  description : 'example command'
  example     : 'example of example'
  options     :
    first:
      description : 'special command line options for example'
