local hiker = require('hiker')

describe('hiker', function()

  it('gives a number', function()
    assert.is_number(hiker.answer())
  end)

  it('knows the answer to life, the universe, and everything', function()
    assert.are.equal(42, hiker.answer())
  end)

  it('gives an answer above zero', function()
    assert.is_true(hiker.answer() > 0)
  end)

end)
