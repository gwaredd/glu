chalk  = require 'chalk'
moment = require 'moment'

global.print   = (t,m) -> console.error "[#{moment().format('YYYY-MM-DD HH:mm:ss')}]", t, "#{m}"
global.die     = (m) -> print chalk.red( '[FATAL]' ), m; process.exit 1
global.error   = (m) -> print chalk.red( '[ERROR]' ), m
global.warn    = (m) -> print chalk.magenta( '[WARN]' ), m
global.success = (m) -> print chalk.green( '[SUCCESS]' ), m
global.info    = (m) -> print chalk.cyan( '[INFO]' ), m
global.log     = (m) -> print '[LOG]', m

global.sleep   = (ms) -> new Promise (resolve) -> setTimeout resolve, ms
