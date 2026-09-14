local hiker = require('hiker')

describe('hiker', function()

  it('knows the answer to life, the universe, and everything', function()
    assert.are.equal(42, hiker.answer())
  end)

  it('knows how long the answer took', function()
    assert.are.equal(75, hiker.years())
  end)

end)
