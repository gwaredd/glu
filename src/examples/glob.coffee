# https://github.com/isaacs/node-glob#options

{glob, globSync} = require 'glob'

do ->
  console.log await glob 'src/**/*.coffee', ignore: 'node_modules/**'
  console.log globSync 'src/examples/[a-l]*.coffee', ignore: 'node_modules/**'
