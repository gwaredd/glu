#------------------------------------------------------------------------------

yargs  = require 'yargs'
utils  = require './utils'
cmds   = require('require-directory') module, './cmds'

#------------------------------------------------------------------------------
# command line args

for cmd, cfg of cmds
  continue if 'visible' of cfg and not cfg.visible
  continue if 'enable' of cfg and not cfg.enable
  yargs.command cmd, cfg.description || ''
  yargs.example cfg.example if cfg.example
  yargs.options cfg.options if cfg.options

argv = yargs
  .usage    'Usage: %y{$0} %c{<command>} %y{[options]}'.chalk()
  .version  utils.version
  .help     'help'
  .options  {
    ...utils.default_cmdline_options
  }
  .argv


#------------------------------------------------------------------------------
# console.log argv; process.exit 1

cmd = argv._.shift()

unless cmd
  log.verbose argv
  yargs.showHelp()
  process.exit 1

if cmd of cmds
  cfg = cmds[ cmd ]
  die "#{cmd} disabled" if 'enable' of cfg and not cfg.enable
  cfg.run argv 
else
  log.warn "Unknown command `%c{#{cmd}}`".chalk()
