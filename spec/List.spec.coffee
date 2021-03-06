# jasmine-node --coffee --verbose spec/
{p} = require '../util/log'
require '../src/List'

f1 = (input)-> [0..input].map (i)->i+1

describe 'List property tests', ->
  it 'has head', ->
  expect([1,2,3].head).toEqual 1

  it 'has init', ->
    expect([1,2,3].init).toEqual [1, 2]

  it 'isEmpty', ->
    expect([].isEmpty).toEqual true
    expect([].nonEmpty).toEqual false

  it 'has last', ->
    expect([1,2,3].last).toEqual 3

  it 'should find max and min', ->
    arr = [1,2,3,4,5]
    expect(arr.max).toEqual 5
    expect(arr.min).toEqual 1

  it 'should be nonEmpty', ->
    expect([1].nonEmpty).toEqual true
    expect([1].isEmpty).toEqual false

  it 'has size equals length', ->
    arr = [1,2,3,4,5]
    expect(arr.size).toEqual arr.length

  it 'has tail', ->
    expect([1,2,3].tail).toEqual [2, 3]

describe 'List methods test', ->
  it 'should return distinct elements', ->
    res = [1, 2, 3, 1, 2, 3].distinct()
    expect(res).toEqual [1, 2, 3]

    res = ['a', 'b', 'c', 'a', 'b', 'c'].distinct()
    expect(res).toEqual ['a', 'b', 'c']

  it 'should return true if one element in array satisfies some condition', ->
    expect([1,2,3].exists (i)->i>2).toEqual true
    expect([1,2,3].exists (i)->i>3).toEqual false

  it 'should map and then flat', ->
    res =
      [1, 2, 3]
      .flatMap(f1)
    expect(res).toEqual [ 1, 2, 1, 2, 3, 1, 2, 3, 4 ]

  it 'groups by identity', ->
    res = [1,2,3,3,4,5,1].groupBy (x)-> x
    expect(res[1]).toEqual [1,1]

  it 'grouped', ->
    res = [1,2,3,4,5].grouped(2)
    expect(res).toEqual [[ 1, 2 ], [ 3, 4 ], [ 5 ]]

  it 'should shuffle', ->
    arr = [1,2,3,4,5,6,7,8]
    expect(arr.shuffle()).not.toBe [1,2,3,4,5,6,7,8]

  it 'splits and flattens array', ->
    res = [1,2,3,4,5].splitAt(3)
    expect(res).toEqual [[1,2,3], [4,5]]
    res = res.flatten()
    expect(res).toEqual [1,2,3,4,5]

  it 'should take first 3 elements', ->
    res = [1, 2, 3, 4, 5].take(3)
    expect(res).toEqual [1, 2, 3]

  it 'zip another array', ->
    arr  = [1,2,3].zip ['a','b','c', 'd']
    expect(arr).toEqual [[ 1, 'a' ], [ 2, 'b' ], [ 3, 'c' ]]
    expect(arr.toMap()).toEqual { '1': 'a', '2': 'b', '3': 'c' }


