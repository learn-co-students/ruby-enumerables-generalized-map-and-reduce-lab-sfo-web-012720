def map(array)
  res = []
  i = 0
  while i < array.length do
    res.push(yield(array[i]))
    i += 1
  end
  res
end

def reduce(array, start = nil)
  if start
    sum = start
    i = 0
  else
    sum = array[0]
    i = 1
  end

  while i < array.length do
    sum = yield(sum, array[i])
    i += 1
  end
  sum
end
