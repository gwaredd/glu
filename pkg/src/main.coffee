#------------------------------------------------------------------------------

yargs  = require 'yargs'
utils  = require './utils'
cmds   = require('require-directory') module, './cmds'

# init command line args

for cmd, cfg of cmds
  continue if cfg.visible == false or cfg.enable == false
  yargs.command cmd, cfg.description || ''
  yargs.example cfg.example if cfg.example
  yargs.options cfg.options if cfg.options

argv = yargs
  .usage    'Usage: %y{$0} %c{<command>} %y{[options]}'.chalk()
  .version  utils.version
  .help     'help'
  .options  { ...utils.default_cmdline_options }
  .argv

log.verbose 'argv', argv

# get command

cmd = argv._.shift()

# show help if no command

if not cmd
  yargs.showHelp()
  process.exit 1

# run command

die "Unknown command `%c{#{cmd}}`".chalk() unless cmd of cmds
die "#{cmd} disabled" if cmds[ cmd ].enable == false

cmds[ cmd ].run argv 
