#------------------------------------------------------------------------------

yargs  = require 'yargs'
utils  = require './utils'
cmds   = require('require-directory') module, './cmds'

#------------------------------------------------------------------------------
# command line args

argv = yargs
  .usage    '%c{Usage}: %y{$0} %c{<command> [options]}'.chalk()
  .version  utils.version
  .help     'help'
  .options  {
    ...utils.default_cmdline_options
  }
  # .command  'search', 'search for game'
  # .example  'yarn rr https://www.metacritic.com/game/playstation-4/doom'
  # .epilog   'copyright 2019'
  .argv


#------------------------------------------------------------------------------
# console.log argv; process.exit 1

cmd = argv._.shift()

unless cmd
  log.verbose argv
  yargs.showHelp()
  process.exit 1

if cmd of cmds
  cmds[ cmd ] argv 
else
  log.warn "Unknown command `%c{#{cmd}}`".chalk()
