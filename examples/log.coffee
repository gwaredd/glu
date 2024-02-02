require '../src/glu'

x = ['a', 'b', 'c']

print "print", x
warn  "warn",  x
error "error", x

log.fatal 'fatal', x
log.error 'error'
log.warn  'warn'
log.ok    'ok'
log.info  'info'
log.http  'http'
log.file  'file'
log.debug 'debug'

# throw "exp"

die "die"
log.info "this should not be displayed"
