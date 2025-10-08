#------------------------------------------------------------------------------

module.exports =

  options: (cmd) ->
    cmd 
      .requiredOption '--data <dir>',  'data directory'
      .option         '--name [name]', 'optional name'

  run: (opts, cmd) ->
    print 'scratch'
    print opts, cmd.optsWithGlobals()
