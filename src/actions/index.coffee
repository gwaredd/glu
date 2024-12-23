module.exports = do ->

  files = fs.readdirSync __dirname
  files = files.filter (file) -> file isnt 'index.coffee' or path.extname(file) isnt '.coffee'

  _.fromPairs files.map (file) ->
    name = path.basename file, '.coffee'
    [ name, require path.join __dirname, file ]
