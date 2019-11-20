module.exports = 
  description : 'first command'
  example     : 'first example'
  options     : {
    first:
      description : 'example of first cmd line options'
  }
  run: (argv) ->
    log.print "first", argv
