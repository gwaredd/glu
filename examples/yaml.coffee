yaml = require 'js-yaml'
util = require 'util'

writeYaml = (filename,data) ->
  return util.promisify( fs.writeFile ) filename, yaml.dump data, lineWidth:-1, flowLevel:3

writeYamlSync = (filename,data) ->
  fs.writeFileSync filename, yaml.dump data, lineWidth:-1, flowLevel:3

readYaml = (filename) ->
  return util.promisify( fs.readFile ) filename, 'utf8'
  .then (data) -> yaml.load data

readYamlSync = (filename) ->
  return yaml.load fs.readFileSync filename, 'utf8'
