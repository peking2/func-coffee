# jasmine-node --coffee --verbose spec/
{p} = require '../util/log'
require '../src/Object'

describe 'Object method tests', ->
  it 'works on map ', ->
    obj =
      name: 'foo'
      age: 23
    res = obj.map (k,v)-> v
    expect(res).toEqual ['foo', 23]

