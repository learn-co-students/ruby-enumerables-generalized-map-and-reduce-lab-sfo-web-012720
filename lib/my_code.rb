def map(array)
  new_array = []
  i = 0
  while i < array.length do
    new_array << yield(array[i])
    i += 1
  end
  new_array
end

def reduce(array, starting_point = nil)
  if starting_point
    output = starting_point
    i = 0
  else
    output = array[0]
    i = 1
  end

  while i < array.length do
    output = yield(output, array[i])
    i += 1
  end
  output
end
