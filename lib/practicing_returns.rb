require 'pry'

# Emulate #collect method. Return array of yielded blocks.
def hello(array)
  i = 0
  collection = []
  while i < array.length
    collection << yield(array[i])
    i += 1
  end
  collection 
end

hello(["Tim", "Tom", "Jim"]) { |name| "Hi, #{name}" }