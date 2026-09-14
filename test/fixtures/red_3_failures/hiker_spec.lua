local hiker = require('hiker')

describe('hiker', function()

  it('knows the answer to life, the universe, and everything', function()
    assert.are.equal(42, hiker.answer())
  end)

  it('gives an answer below fifty', function()
    assert.is_true(hiker.answer() < 50)
  end)

  it('spells the answer out', function()
    assert.are.equal('42', tostring(hiker.answer()))
  end)

end)
