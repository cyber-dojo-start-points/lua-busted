local hiker = require('hiker')

describe('hiker', function()

  pending('knows the answer to life, the universe, and everything', function()
    assert.are.equal(42, hiker.answer())
  end)

  pending('knows the answer has two digits', function()
    assert.are.equal(2, #tostring(hiker.answer()))
  end)

end)
