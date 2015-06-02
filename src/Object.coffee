#{p} = require '../util/log'

Object.prototype.map = (f)->
  for i in Object.keys(this)
    f(i, this[i])

