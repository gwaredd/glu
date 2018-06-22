#------------------------------------------------------------------------------

exec = require('child_process').execSync

# install depdencies

exec 'yarn install', stdio:[0,1,2]

# remove setup files

fs = require "fs-extra"
fs.removeSync './.git'
fs.removeSync './setup.coffee'

exec 'git init', stdio:[0,1,2]
exec 'git add .', stdio:[0,1,2]

finish = -> exec 'git commit -m "initial commit"', stdio:[0,1,2]
setTimeout finish, 500

