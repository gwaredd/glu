#------------------------------------------------------------------------------

glu     = require './glu'
program = require 'commander'
actions = require './actions'

#------------------------------------------------------------------------------

program
  .name           'example'
  .description    'does stuff'
  .version        '0.0.1'

program
  .name           'heightmaps'
  .description    'Perform analysis on heightmaps'
  .version        '0.0.1'

program
  .command        'scratch'
  .description    'scratchpad'
  .action         actions.scratch

program.parse()
