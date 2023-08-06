# https://github.com/tj/commander.js

program = require 'commander'

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

