#------------------------------------------------------------------------------

glu     = require './glu'
program = require 'commander'

#------------------------------------------------------------------------------

info = JSON.parse fs.readFileSync path.join __dirname, '../package.json'

program
  .name           info.name
  .version        info.version
  .description    'does stuff'

# add actions

for name, action of require './actions'
  cmd = program
    .command      name
    .description  "run the #{name} action"
    .action       action.run
  action.options cmd if action.options

# run

program.parse()
