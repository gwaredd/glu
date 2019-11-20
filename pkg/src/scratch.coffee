v = require 'voca'
require './utils'

log.print String.prototype

log.print "birdFlight".camelCase()
log.print "birdFlight".capitalize()
log.print "birdFlight".decapitalize()
log.print "birdFlight".kebabCase()
log.print "birdFlight".lowerCase()
log.print "birdFlight".snakeCase()
log.print "birdFlight".swapCase()
log.print "birdFlight".titleCase()
log.print "birdFlight".upperCase()

log.print "|%12s|%-12s|%0.2f".sprintf "red", "green", 3.14156

