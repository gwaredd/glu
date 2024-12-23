#------------------------------------------------------------------------------

glu     = require './glu'
program = require 'commander'

#------------------------------------------------------------------------------

program
  .name           'example'
  .description    'does stuff'
  .version        '0.0.1'

# add actions

for name, action of require './actions'
  cmd = program
    .command name
    .action  action.run
  action.set_options cmd if action.set_options

# run

program.parse()
