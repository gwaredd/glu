#------------------------------------------------------------------------------

module.exports =

  options: (cmd) ->
    cmd 
      .requiredOption '--file <file>',  'data file'

  run: (opts) ->
    print "run #{opts.file}"
