local hiker = require('hiker')

describe('hiker', function()

  it('#focus knows the answer to life, the universe, and everything', function()
    assert.are.equal(42, hiker.answer())
  end)

  it('knows the answer has three digits', function()
    assert.are.equal(3, #tostring(hiker.answer()))
  end)

end)
