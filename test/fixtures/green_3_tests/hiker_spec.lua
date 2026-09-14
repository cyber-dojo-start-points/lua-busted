local hiker = require('hiker')

describe('hiker', function()

  it('knows the answer to life, the universe, and everything', function()
    assert.are.equal(42, hiker.answer())
  end)

  it('gives a number', function()
    assert.is_number(hiker.answer())
  end)

  it('gives an answer with two digits', function()
    assert.are.equal(2, #tostring(hiker.answer()))
  end)

end)
