#------------------------------------------------------------------------------

fs   = require 'fs-extra'
glob = require 'glob'

dir  = 'clone'

# create empty directory

console.log "mkdir #{dir}"
fs.removeSync dir if fs.existsSync dir
fs.mkdirsSync dir

# copy files

fs.copySync '.gitignore', "#{dir}/.gitignore"

for src in glob.sync './*', ignore: [ './node_modules', './clone' ]
  dst = "#{dir}/" + src.replace './', ''
  console.log "copy #{src} -> #{dst}"
  fs.copySync src, dst

