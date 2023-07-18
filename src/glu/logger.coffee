#------------------------------------------------------------------------------

chalk    = require 'chalk'
winston  = require 'winston'

logLevels =
  fatal   : 0
  error   : 1
  warn    : 2
  info    : 3
  http    : 4
  verbose : 5

logColours =
  fatal   : "red"
  error   : "red"
  warn    : "magenta"
  info    : "white"
  http    : "blue"
  verbose : "white"

winston.addColors logColours

format = winston.format.combine(
    transform: (info) -> { ...info, colour: chalk[ logColours[ info.level ] ] }
    winston.format.timestamp format: 'YYYY-MM-DD hh:mm:ss'
    winston.format.splat()
    winston.format.padLevels levels: logLevels
    winston.format.printf (info) -> "[#{info.timestamp}] #{info.colour '[' + info.level.toUpperCase() + ']'} #{info.message}"
)

module.exports = winston.createLogger
  level       : 'verbose'
  levels      : logLevels
  format      : format
  transports : [
    new winston.transports.Console
    # new winston.transports.File filename: './error.log', level: 'error'
  ]
