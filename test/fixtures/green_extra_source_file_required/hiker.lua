local checksum = require('checksum')

local hiker = {}

function hiker.answer()
  return 6 * 7
end

function hiker.answer_checksum()
  return checksum.of(hiker.answer())
end

return hiker
