-- Every assertion busted gives you, in one test.
--
-- It asserts on literals rather than on hiker, so it goes on passing while
-- you rewrite everything around it. Its subject is the vocabulary itself,
-- not the kata. Delete it once you know these by heart.
--
-- Note that it counts: it adds one to the totals in the summary line.

describe('busted assertions', function()

  it('shows what you can assert with', function()
    assert.is_true(4 == 4)
    assert.is_false(5 < 4)
    assert.are.equal(1, 5 - 4)            -- same value
    assert.are_not.equal(1, 2)
    assert.are.same({1, 2}, {1, 2})       -- same contents, different tables
    assert.is_nil(nil)
    assert.is_not_nil(0)
    assert.is_string('hello')
    assert.is_number(42)
    assert.is_table({})
    assert.is_function(print)
    assert.is.near(1.0, 0.9999999, 1e-6)  -- within a tolerance
    assert.matches('^hi', 'hiker')        -- a lua pattern, not a regex
    assert.has_error(function() error('boom', 0) end, 'boom')
  end)

end)
