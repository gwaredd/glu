#------------------------------------------------------------------------------

_    = require 'lodash'
fs   = require 'fs-extra'
path = require 'path'
glob = require 'glob'
axios = require 'axios'

command = (argv) ->
  log.print "do work here"


#------------------------------------------------------------------------------

module.exports = visible: false, run: command

