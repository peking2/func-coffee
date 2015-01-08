{p} = require '../util/log'

Array.prototype.distinct = ->
  set = {}
  res = []
  for i in this
    k = JSON.stringify i
    unless set[k]?
      res.push i
      set[k] = true
  res

Array.prototype.flatMap = (f)->
  this.map(f).reduce (a,b)-> a.concat b

Array.prototype.flatten = -> this.reduce (prev, curr)-> prev.concat curr

Array.prototype.groupBy = (f)->
  res = {}
  for i in this
    key = f i
    res[key] ?= []
    res[key].push i
  res

Array.prototype.grouped = (k)->
  for i in [0...this.length] by k
    this[i...i+k]

Object.defineProperty Array.prototype, 'head', get: -> this[0]
Object.defineProperty Array.prototype, 'init', get: -> this[0...-1]
Object.defineProperty Array.prototype, 'last', get: -> this[-1..][0]

Object.defineProperty Array.prototype, 'max', get: -> Math.max.apply(null, this)
Object.defineProperty Array.prototype, 'min', get: -> Math.min.apply(null, this)

_swap = (arr, i, j)->
  tmp = arr[i]
  arr[i] = arr[j]
  arr[j] = tmp
_rand = (x)-> Math.floor(Math.random()*x)
Array.prototype.shuffle = ->
  len = this.length
  for i in [0...len]
    r = _rand len-i
    _swap this, i, i+r
  this

Object.defineProperty Array.prototype, 'size', get: -> this.length

Array.prototype.splitAt = (n)-> [this[0...n], this[n..]]
Object.defineProperty Array.prototype, 'tail', get: -> this[1..-1]

Array.prototype.toMap = ->
  obj = {}
  for arr in this
    obj[arr[0]] = arr[1]
  obj

Array.prototype.zip = (arr)-> [this[i], arr[i]] for i in [0...Math.min(this.length, arr.length)]









