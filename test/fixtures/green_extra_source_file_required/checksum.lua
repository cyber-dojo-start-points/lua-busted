local checksum = {}

function checksum.of(number)
  local total = 0
  for digit in tostring(number):gmatch('%d') do
    total = total + tonumber(digit)
  end
  return total
end

return checksum
