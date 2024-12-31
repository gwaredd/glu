Number.prototype.clamp     = (min, max) -> Math.min Math.max(this, min), max

Array.prototype.random     = -> this[ Math.floor Math.random() * this.length ]

Object.prototype.keys      = -> Object.keys this
Object.prototype.values    = -> Object.values this
Object.prototype.mapKeys   = (f) -> _.mapKeys this, f
Object.prototype.mapValues = (f) -> _.mapValues this, f

