require '../glu'

x = ['a', 'b', 'c']

print "x is", x

log.verbose 'verbose'
log.http 'http'
log.info 'info'
log.warn 'warn'
log.error 'error'
log.fatal 'fatal'

# throw "exp"

die "die"
log.info "this should not be displayed"
