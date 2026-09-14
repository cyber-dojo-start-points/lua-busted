local answer = require('answer')

describe('answer', function()

  it('is forty two', function()
    assert.are.equal(42, answer.to_life_the_universe_and_everything())
  end)

end)
