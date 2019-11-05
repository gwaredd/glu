#------------------------------------------------------------------------------
# initial project setup from template

path = require 'path'
exec = require('child_process').execSync

exec 'yarn install', stdio:[0,1,2]

fs   = require 'fs-extra'
glob = require 'glob'
package_file = require '../pkg/package.json'

console.log "copy pkg/.gitignore -> .gitignore"
fs.copySync 'pkg/.gitignore', '.gitignore'

for src in glob.sync 'pkg/*', [ignore: 'pkg/package.json']
  dst = src.replace 'pkg/', ''
  console.log "copy #{src} -> #{dst}"
  fs.copySync src, dst

# fix up package.json

package_file = require '../pkg/package.json'
package_file.name = path.basename __dirname
fs.writeFileSync './package.json', JSON.stringify package_file, null, 2

fs.removeSync '.git'
fs.removeSync 'dev'
fs.removeSync 'pkg'
fs.removeSync 'yarn.lock'
fs.removeSync 'node_modules'

exec 'yarn install', stdio:[0,1,2]


# create new git

exec 'git init', stdio:[0,1,2]
exec 'git add .', stdio:[0,1,2]

finish = -> exec 'git commit -m "initial commit"', stdio:[0,1,2]
setTimeout finish, 500

