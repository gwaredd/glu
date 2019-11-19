require './log'
require './utils'
require './string_extensions'

module.exports =

  default_cmdline_options:
    help:
      boolean     : true
      alias       : [ 'h', '?' ]
      description : 'display help'
    version:
      boolean     : true
      alias       : [ 'v' ]
      description : 'display version string'
    verbose:
      boolean     : true
      description : 'enable debug output'

  version: require( '../../package.json' ).version

