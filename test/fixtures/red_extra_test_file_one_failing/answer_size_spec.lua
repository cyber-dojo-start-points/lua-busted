local hiker = require('hiker')

describe('answer size', function()

  it('has three digits', function()
    assert.are.equal(3, #tostring(hiker.answer()))
  end)

end)
