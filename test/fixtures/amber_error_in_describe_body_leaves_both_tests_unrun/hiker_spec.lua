local hiker = require('hiker')

describe('hiker', function()

  local limit = hiker.limit()

  it('knows the answer to life, the universe, and everything', function()
    assert.are.equal(42, hiker.answer())
  end)

  it('knows the answer is below the limit', function()
    assert.is_true(hiker.answer() < limit)
  end)

end)
