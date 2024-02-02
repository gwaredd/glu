#------------------------------------------------------------------------------

chalk    = require 'chalk'
winston  = require 'winston'

logLevels =
  fatal : 0
  error : 1
  warn  : 2
  ok    : 2
  alert : 2
  info  : 3
  http  : 4
  file  : 4
  debug : 5

logColours =
  fatal : "red"
  error : "red"
  warn  : "magenta"
  ok    : "green"
  alert : "yellow"
  info  : "white"
  http  : "blue"
  file  : "blue"
  debug : "white"

winston.addColors logColours

formatLevel = (level) -> chalk[ logColours[ level ] ] "[#{level.toUpperCase().padStart(5, ' ')}]"

format = winston.format.combine(
    winston.format.timestamp format: 'YYYY-MM-DD hh:mm:ss'
    winston.format.splat()
    winston.format.printf (info) -> "[#{info.timestamp}] #{formatLevel info.level} #{info.message}"
)

module.exports = winston.createLogger
  level       : 'file'
  levels      : logLevels
  format      : format
  transports : [
    new winston.transports.Console
    # new winston.transports.File filename: './error.log', level: 'error'
  ]
