require 'pp'

def map(array)

output = []
  
  for number in array
    
    output.push(yield(number))
  
  end
  
  output
  
end

def reduce(array, start = false)
  
  count = 0
  
  if start
    
    result = start
    
  else
    
    result = array[0]
    count += 1
    
  end
    
  while count < array.size do
  
    result = yield(result, array[count])
    count += 1
    
  end
  
  result
  
end  
