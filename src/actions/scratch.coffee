#------------------------------------------------------------------------------

module.exports =

  set_options: (cmd) ->
    cmd 
      .requiredOption '--data <dir>',  'data directory'
      .option         '--name [name]', 'optional name'

  run: (opts) ->
    print 'scratch'
