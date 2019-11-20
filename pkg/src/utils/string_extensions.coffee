#------------------------------------------------------------------------------

_     = require 'lodash'
chalk = require 'chalk'

#------------------------------------------------------------------------------
# chalk
#   colour text
#   "white text, %g{make this text green} this is white again".chalk()

if not String.prototype.chalk
  String.prototype.chalk = ->

    colours =
      r: chalk.red
      g: chalk.green
      b: chalk.blue
      c: chalk.cyan
      y: chalk.yellow
      m: chalk.magenta
      w: chalk.white

    this.replace /%([rgbcymw]){([^}]+)}/g, (match, colour, text) -> colours[ colour ] text

#------------------------------------------------------------------------------
# count('ch')
#   counts the number of occurrences of a given character
#   "AbcAxyz".count('A') returns 2

if not String.prototype.count
  String.prototype.count = (ch) -> _.sumBy this , (c) => c == ch

#------------------------------------------------------------------------------
# format
#   format string arguments with padding and alignment (like C# format)
#   "text {0:-10}".format( 'this' )

if not String.prototype.format
  String.prototype.format = ->

    args = arguments

    this.replace /{(\d+)(:([\d-]+))?}/g, (match, arg, x, pad) ->

      return match if typeof args[arg] == 'undefined'
      return String args[arg] if typeof pad == 'undefined'

      padding = parseInt pad

      if padding < 0
        return String( args[arg] ).padStart -padding, ' '
      else
        return String( args[arg] ).padEnd padding, ' '

#------------------------------------------------------------------------------
# https://vocajs.com/

v = require 'voca'

if not String.prototype.camelCase    then String.prototype.camelCase    = () -> v.camelCase this    # birdFlight
if not String.prototype.capitalize   then String.prototype.capitalize   = () -> v.capitalize this   # BirdFlight
if not String.prototype.decapitalize then String.prototype.decapitalize = () -> v.decapitalize this # birdFlight
if not String.prototype.kebabCase    then String.prototype.kebabCase    = () -> v.kebabCase this    # bird-flight
if not String.prototype.lowerCase    then String.prototype.lowerCase    = () -> v.lowerCase this    # birdflight
if not String.prototype.snakeCase    then String.prototype.snakeCase    = () -> v.snakeCase this    # bird_flight
if not String.prototype.swapCase     then String.prototype.swapCase     = () -> v.swapCase this     # BIRDfLIGHT
if not String.prototype.titleCase    then String.prototype.titleCase    = () -> v.titleCase this    # BirdFlight
if not String.prototype.upperCase    then String.prototype.upperCase    = () -> v.upperCase this    # BIRDFLIGHT

if not String.prototype.latinise      then String.prototype.latinise    = () -> v.latinise this     # août décembre -> aout decembre
 
if not String.prototype.sprintf      then String.prototype.sprintf      = () -> v.sprintf this, ...arguments

