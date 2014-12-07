{p} = require '../util/log'

Array.prototype.head = -> this[0]
Array.prototype.last = -> this[-1..][0]
Array.prototype.init = -> this[0...-1]
Array.prototype.tail = -> this[1..-1]
Array.prototype.splitAt = (n)-> [this[0...n], this[n..]]
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
Array.prototype.max = -> Math.max.apply(null, this)
Array.prototype.min = -> Math.min.apply(null, this)
Array.prototype.flatMap = (f)->
  this.map(f).reduce (a,b)-> a.concat b

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

  ###
  maxBy
  minBy
  nonEmpty
  partition
  permutations
  sum
###