def map (array)
  new_array = []
  counter = 0
  while counter < array.length do
    new_array << yield(array[counter])
    counter += 1
  end
  new_array
end

def reduce (array, starting_point = 0)
  counter = 0
  while counter < array.length do
    yield(starting_point, array[counter])
    counter += 1
  end
  starting_point
end

