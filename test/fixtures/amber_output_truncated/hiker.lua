local hiker = {}

function hiker.answer()
  for i = 0, 4000 do
    print('debug: i is ' .. i .. ', and the answer is still on its way')
  end
  return 6 * 7
end

return hiker
