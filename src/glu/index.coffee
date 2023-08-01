global.log   = require './logger'
global.print = -> console.log arguments...
global.die   = (m) -> log.fatal m; process.exit 1
global.sleep = (ms) -> new Promise (resolve) -> setTimeout resolve, ms
