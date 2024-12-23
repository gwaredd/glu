# global libraries
global._     = require 'lodash'
global.fs    = require 'fs-extra'
global.path  = require 'path'
global.chalk = require 'chalk'
global.glob  = require 'glob'

# console output
global.log   = require './logger'
global.print = -> console.log arguments...
global.warn  = -> console.log "#{chalk.magenta '[WARNING]'}", arguments...
global.error = -> console.log "#{chalk.red '[ERROR]'}", arguments...

# global utils
global.die   = (m) -> log.fatal m; process.exit 1
global.sleep = (ms) -> new Promise (resolve) -> setTimeout resolve, ms
