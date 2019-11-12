#------------------------------------------------------------------------------

yargs  = require 'yargs'
utils  = require './utils'
config = require './config'


#------------------------------------------------------------------------------
# command line args

argv = yargs
  .usage    '%c{Usage}: %y{$0} %c{<command> [options]}\n\nRip reviews from the web'.chalk()
  .version  config.version
  .help     'help'
  .command  'search', 'search for game'
  .options  {
    input:
      description: 'example input'
    help:
      alias       : [ 'h', '?' ]
      description : 'display this help'
    version:
      alias       : [ 'v' ]
      description : 'display version string'
    debug:
      alias       : [ 'verbose' ]
      description : 'enable debug output'
  }
  .example  'yarn rr https://www.metacritic.com/game/playstation-4/doom'
  # .epilog   'copyright 2019'
  .argv


#------------------------------------------------------------------------------

die "No filename given" unless argv.input?

log.warn "Example logging"


#------------------------------------------------------------------------------
# fetch HTTP 

# axios
#   .get 'http://www.google.co.uk'
#   .catch log.error
#   .then (res) -> console.log res.data

# fetch = url ->

#   try
#     res = await axios.get url
#     console.log res.data
#   catch e
#     log.error "#{e}"

# fetch 'http://www.google.co.uk'


#------------------------------------------------------------------------------
# files

# filename = 'README.md'

# log.print "#{filename} exists" if fs.existsSync filename

# fs.readFile filename, (err,data) ->
#   return log.warn err if err?
#   console.log data.toString()

# try
#   data = fs.readFileSync filename
#   fs.writeFileSync filename, data
# catch e
#   log.error "#{e}"

# glob "some_dir/**/*.log", (err,files) ->
#   utils.die err if err?
#   _.each files, (f) -> log.info f


#------------------------------------------------------------------------------

# string format
# "num={0}".format(1).should.equal "num=1"

# #-- reg.exp

# str.includes 'searchStr'
# str.match /some_regexp/

# results = str.match /re_with_(group1)_(group2)_etc/
# results[1] = 'group1'
# results[2] = 'group2'

