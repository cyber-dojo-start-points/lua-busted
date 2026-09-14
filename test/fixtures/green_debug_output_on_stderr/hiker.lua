local hiker = {}

function hiker.answer()
  io.stderr:write('debug: hiker.answer was called\n')
  local answer = 6 * 7
  io.stderr:write('debug: hiker.answer is about to return ' .. answer .. '\n')
  return answer
end

return hiker
