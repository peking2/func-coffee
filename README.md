func-coffee
===========

Extensions of Javascript Array to be functional [List](http://www.scala-lang.org/api/current/index.html#scala.collection.immutable.List),
so you can write more functional Coffeescript codes.


## API

### Properties
###### Array.prototype.head
###### Array.prototype.init
###### Array.prototype.last
###### Array.prototype.max
###### Array.prototype.min
###### Array.prototype.size
###### Array.prototype.tail

### Methods
###### Array.prototype.flatMap
###### Array.prototype.flatten
###### Array.prototype.groupBy
###### Array.prototype.grouped
###### Array.prototype.shuffle
###### Array.prototype.splitAt


## Installation

```bash
$ npm install func-coffee
```

## How to use it

```coffeescript
require func-coffee
[1, 2, 3, 4, 5].shuffle()
```

## Unit Test

```bash
$ jasmine-node --coffee --verbose spec/
```


## TBD
###### combinations
###### contains
###### count
###### distinct
###### drop
###### dropRight
###### dropWhile
###### endsWith
###### exists
###### isEmpty
###### maxBy
###### minBy
###### nonEmpty
###### partition
###### permutations
###### product
###### startsWith
###### sum
###### take
###### takeRight
###### takeWhile
###### union
###### unzip
###### zip





