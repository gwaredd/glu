#------------------------------------------------------------------------------

_      = require "lodash"
chalk  = require "chalk"
yargs  = require "yargs"
axios  = require "axios"
moment = require "moment"

log    = require "./libs/log"
utils  = require "./libs/utils"


#------------------------------------------------------------------------------
# command line args

version     = '0.0.0'
description = "Do some useful things"
options     =
    input:
      alias       : 'i'
      description : 'input filename'
      requiresArg : true
      required    : false

argv = yargs
  .usage  chalk.green( "Usage:" ) + chalk.yellow " $0 [options]" + chalk.white "\n\n" + description
  .help   'help'
  .alias  'help', [ 'h', '?' ]
  .version version
  .alias  'version', [ 'v' ]
  .options options
  .argv


#------------------------------------------------------------------------------

if argv.input?
  log.info argv.input
else
  utils.die 'No filename'


# axios
#   .get 'http://www.google.co.uk'
#   .catch log.error
#   .then (res) -> console.log res.data


