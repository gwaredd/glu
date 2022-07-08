#------------------------------------------------------------------------------

path  = require 'path'
yargs = require 'yargs'

argv = yargs
    .scriptName path.basename __filename, '.coffee'
    .version    '0.1.0'
    .usage      '$0', 'Take the raw json from the JIRA API and extract the essential details for processing'
    .example    '$0 --in=in.json --out=out.json'
    .alias      'h', 'help'
    .help       'h'
    .option     'in',  required: true, describe: 'input file (json)'
    .option     'out', required: true, describe: 'output file (json)'
    .argv

