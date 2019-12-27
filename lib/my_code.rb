# Your Code Here
def map (array)
  new = []
  i = 0 
  
  while i < array.length do 
    new << yield(array[i])
    i += 1
  end 
  
  new
end

# to multiply by 2 
# (map([1, 2, 3, -9]){|n| n * 2})   <--- yield 

def reduce (array, starting = nil)
  
  if starting 
    total = starting
    i = 0 
  else 
    total = array[0] 
    i = 1 
  end 
  
  while i < array.length do 
    total = yield(total, array[i]) 
    i += 1
  end 
  
  total 
end

# (reduce(source_array){|memo, n| memo + n}).to eq(6)