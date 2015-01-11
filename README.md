func-coffee
===========

Extensions of Javascript Array to be functional [List](http://www.scala-lang.org/api/current/index.html#scala.collection.immutable.List),
so you can write more functional Coffeescript codes.


## API

### Properties
* Array.prototype.head
* Array.prototype.init
* Array.prototype.isEmpty
* Array.prototype.last
* Array.prototype.max
* Array.prototype.min
* Array.prototype.nonEmpty
* Array.prototype.size
* Array.prototype.tail

### Methods
* Array.prototype.distinct
* Array.prototype.exists
* Array.prototype.flatMap
* Array.prototype.flatten
* Array.prototype.groupBy
* Array.prototype.grouped
* Array.prototype.shuffle
* Array.prototype.splitAt
* Array.prototype.take
* Array.prototype.toMap
* Array.prototype.zip

### Coffeescript conventions
* contains: x in arr


## Installation

```bash
$ npm install func-coffee
```

## How to use it

```coffeescript
require 'func-coffee'

[1, 2, 3, 4, 5].shuffle()
```

## Unit Test

```bash
$ jasmine-node --coffee --verbose spec/
```


## TBD
###### combinations
###### count
###### drop
###### dropRight
###### dropWhile
###### endsWith
###### maxBy
###### minBy
###### partition
###### permutations
###### product
###### startsWith
###### sum
###### takeRight
###### takeWhile
###### union
###### unzip






