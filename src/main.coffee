#------------------------------------------------------------------------------
# https://github.com/tj/commander.js

program = require 'commander'

#------------------------------------------------------------------------------
# options

program
  .name           'example'
  .description    'Some example helps'
  .requiredOption '--data <dir>',     'set data directory'
  .option         '--name [name]',    'set name'
  .option         '--stage [stage]',  'select stage'
  .version        '0.0.1'

program.parse()

print program.opts()  # parsed options
print program.args    # non-option arguments

#------------------------------------------------------------------------------
# commands

cmdRun    = (opts) ->
cmdStages = (opts) ->
cmdClean  = (opts) ->

program
  .name           'example'
  .description    'Perform analysis on metacritic reviews'
  .version        '0.0.1'

program
  .command        'run', sDefault: true
  .description    'run stages'
  .requiredOption '--data <dir>',     'set data directory'
  .option         '--name [name]',    'Optionally set name for project (otherwise uses directory name)'
  .option         '--stage [stage]',  'Optionally select stage to run'
  .action         (opts) -> cmdRun opts

program
  .command        'stages'
  .description    'list stages'
  .action         (opts) -> cmdStages opts

program
  .command        'clean'
  .description    'clear output directory'
  .option         '--name [name]',    'Optionally set name for project (otherwise all output directories are cleared)'
  .action         (opts) -> cmdClean opts

program.parse()

