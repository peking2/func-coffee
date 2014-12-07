# jasmine-node --coffee --verbose spec/
{p} = require '../util/log'
require '../src/List'

f1 = (input)-> [0..input].map (i)->i+1

describe 'List extensions', ->
  it 'flatmaps', ->
    res =
      [1, 2, 3]
      .flatMap(f1)
    expect(res).toEqual [ 1, 2, 1, 2, 3, 1, 2, 3, 4 ]

  it 'has head', ->
    expect([1,2,3].head()).toEqual 1

  it 'has last', ->
    expect([1,2,3].last()).toEqual 3

  it 'has init', ->
    expect([1,2,3].init()).toEqual [1, 2]

  it 'has tail', ->
    expect([1,2,3].tail()).toEqual [2, 3]

  it 'splits and flattens array', ->
    res = [1,2,3,4,5].splitAt(3)
    expect(res).toEqual [[1,2,3], [4,5]]
    res = res.flatten()
    expect(res).toEqual [1,2,3,4,5]

  it 'groups by identity', ->
    res = [1,2,3,3,4,5,1].groupBy (x)-> x
    expect(res[1]).toEqual [1,1]

  it 'grouped', ->
    res = [1,2,3,4,5].grouped(2)
    expect(res).toEqual [[ 1, 2 ], [ 3, 4 ], [ 5 ]]

  it 'finds max and min', ->
    arr = [1,2,3,4,5]
    max=arr.max()
    min=arr.min()
    expect(max).toEqual 5
    expect(min).toEqual 1

  it 'should shuffle', ->
    arr = [1,2,3,4,5,6,7,8]
    expect(arr.shuffle()).not.toBe [1,2,3,4,5,6,7,8]


