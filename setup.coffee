#------------------------------------------------------------------------------

exec = require('child_process').execSync

# install depdencies

exec 'yarn install', stdio:[0,1,2]

# remove setup files

fs = require "fs-extra"
fs.removeSync './.git'
fs.removeSync './setup.coffee'

exec 'git init', stdio:[0,1,2]
