require 'pry'

def my_find(collection)
  i = 0
  return_val = nil
  while i < collection.size
    if yield(collection[i])
      return_val = collection[i]
      break
    end
   # return collection[i] if yield(collection[i])

    i += 1
  end
  return_val
end