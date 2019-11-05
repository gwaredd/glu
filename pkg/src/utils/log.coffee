#------------------------------------------------------------------------------
# https://log4js-node.github.io/log4js-node/index.html

config = 
  appenders:
    console     :
      type      : 'console'
      layout    :
        type    : 'pattern'
        pattern : '[%d{yyyy-MM-dd hh:mm:ss}] %[[%p]%] %m'

  categories: 
    default     : 
      level     : if process.argv.includes( '--debug' ) or process.argv.includes( '--verbose' ) then 'verbose' else 'info'
      appenders : [ 'console' ]

  levels:
    verbose   : value: 10000, colour: 'blue'
    print     : value: 20000, colour: 'white'
    note      : value: 25000, colour: 'yellow'
    success   : value: 25000, colour: 'green'
    warn      : value: 30000, colour: 'magenta'
    error     : value: 40000, colour: 'red'


# export default logger

log4js = require 'log4js'
log4js.configure config
global.log = log4js.getLogger()
