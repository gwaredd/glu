#------------------------------------------------------------------------------

yaml = require 'js-yaml'
util = require 'util'

config = 
  check_exists: true
  create_dir  : true
  log         : true
  format      :
    lineWidth : -1
    flowLevel : 6

#------------------------------------------------------------------------------

check = (fn) ->
  return unless config.check_exists
  fs.existsSync fn or die "file not found: #{chalk.yellow fn}"
  log.file "reading #{chalk.yellow fn}" if config.log

create = (fn) ->
  if config.create_dir and not fs.existsSync path.dirname fn
    log.info "creating directory #{chalk.yellow fn}" if config.log
    fs.ensureDirSync path.dirname fn
  log.file "writing #{chalk.yellow fn}" if config.log

#------------------------------------------------------------------------------

module.exports =
  read      : (fn)      -> check  fn; yaml.load fs.readFileSync fn, 'utf8'
  write     : (fn,data) -> create fn; fs.writeFileSync fn, yaml.dump data, config.format
  readAsync : (fn)      -> check  fn; util.promisify( fs.readFile )( fn, 'utf8' ).then (data) -> yaml.load data
  writeAsync: (fn,data) -> create fn; util.promisify( fs.writeFile ) fn, yaml.dump data, config.format
  dump      : (data)    -> print yaml.dump data, config.format
