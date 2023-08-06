vorpal = require('vorpal')()

cmdAdd       = (args) ->
cmdRemove    = (args) ->
cmdVerbosity = (args) ->
cmdRun       = (args) ->

vorpal
  .command      'add <handler> <url>'
  .alias        'a'
  .description  'Add a url to the queue'
  .autocomplete ['a', 'b', 'c']
  .action       (args, callback) -> await cmdAdd args; callback()

vorpal
  .command      'remove <task>'
  .description  'Remove a task from the list'
  .action       (args, callback) -> await cmdRemove args; callback()

vorpal
  .command      'run'
  .alias        'r'
  .option       '--first',  'run the first task only'
  .option       '--n <n>',  'run specificed task'
  .option       '--all',    'keep running until there are no tasks left'
  .option       '--random', 'run tasks randomly'
  .description  'Run pending tasks'
  .action       (args, callback) -> await cmdRun args.options; callback()

vorpal
  .command      'verbosity [level]'
  .description  'Set the verbosity level'
  .autocomplete Object.keys log.levels
  .action       (args, callback) -> cmdVerbosity args; callback()

vorpal
  .command      'quit'
  .alias        'q', '.exit'
  .action       ->

vorpal
  .delimiter 'scrape> '
  .show()

