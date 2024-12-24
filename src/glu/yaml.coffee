yaml = require 'js-yaml'
util = require 'util'

opts =
  lineWidth: -1
  flowLevel: 6

module.exports =
  read      : (fn)      -> yaml.load fs.readFileSync fn, 'utf8'
  write     : (fn,data) -> fs.writeFileSync fn, yaml.dump data, opts
  readAsync : (fn)      -> util.promisify( fs.readFile )( fn, 'utf8' ).then (data) -> yaml.load data
  writeAsync: (fn,data) -> util.promisify( fs.writeFile ) fn, yaml.dump data, opts
