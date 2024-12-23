#------------------------------------------------------------------------------

module.exports =

  set_options: (cmd) ->
    cmd 
      .description    'scratchpad'
      .requiredOption '--data <dir>',     'data directory'
      .option         '--name [name]',    'optional name'

  run: (opts) ->
    print 'scratch'
