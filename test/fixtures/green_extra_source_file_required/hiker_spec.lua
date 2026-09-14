local hiker = require('hiker')

describe('hiker', function()

  it('knows the answer to life, the universe, and everything', function()
    assert.are.equal(42, hiker.answer())
  end)

  it('adds up the digits of the answer', function()
    assert.are.equal(6, hiker.answer_checksum())
  end)

end)
