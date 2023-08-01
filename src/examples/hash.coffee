crypto   = require 'crypto-js'
console.log crypto.SHA256 ""
console.log crypto.SHA256( "" ).toString().slice 0, 24
