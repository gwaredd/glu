#------------------------------------------------------------------------------

util = require 'util'

config = 
  check_exists: true
  create_dir  : true
  log         : true
  format      : [ null, 2 ]

#------------------------------------------------------------------------------

check = (fn) ->
  die "file not found: #{chalk.yellow fn}" unless config.check_exists and fs.existsSync fn
  log.file "reading #{chalk.yellow fn}" if config.log

create = (fn) ->
  if config.create_dir and not fs.existsSync path.dirname fn
    log.info "creating directory #{chalk.yellow fn}" if config.log
    fs.ensureDirSync path.dirname fn
  log.file "writing #{chalk.yellow fn}" if config.log

#------------------------------------------------------------------------------

module.exports =
  read      : (fn)      -> check  fn; JSON.parse fs.readFileSync fn, 'utf8'
  write     : (fn,data) -> create fn; fs.writeFileSync fn, JSON.stringify data, ...config.format
  readAsync : (fn)      -> check  fn; util.promisify( fs.readFile )( fn, 'utf8' ).then (data) -> JSON.parse data
  writeAsync: (fn,data) -> create fn; util.promisify( fs.writeFile ) fn, JSON.stringify data, ...config.format
  dump      : (data)    -> print JSON.stringify data, ...config.format
