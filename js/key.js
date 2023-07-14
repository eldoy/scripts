var crypto = require('crypto')
var size = parseInt(process.argv[2]) || 20
var key = crypto.randomBytes(size).toString('hex').slice(0, size)
console.log(key)
