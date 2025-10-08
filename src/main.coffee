#------------------------------------------------------------------------------

glu     = require './glu'
program = require 'commander'

# load .env variables
require( 'dotenv' ).config quiet: true

#------------------------------------------------------------------------------

preAction = (cmd,action) ->

  opts = cmd.opts()
  log.level = 'debug' if opts.verbose
  log.level = 'error' if opts.quiet

#------------------------------------------------------------------------------

info = JSON.parse fs.readFileSync path.join __dirname, '../package.json'

program
  .name           info.name
  .version        info.version
  .description    'does stuff'
  .option         '-v, --verbose', 'enable verbose logging'
  .option         '-q, --quiet', 'disable all output'
  .option         '--seed <n>', 'set random seed', parseInt
  .hook          'preAction', preAction

# add actions

for name, action of require './actions'
  cmd = program
    .command      name
    .description  "run the #{name} action"
    .action       action.run
  action.options cmd if action.options

# run

program.parse()
