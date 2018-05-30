#------------------------------------------------------------------------------

log = require "./log"

module.exports =
  die: (msg) -> log.fatal msg; process.exit 1

