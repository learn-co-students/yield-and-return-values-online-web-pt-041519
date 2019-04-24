require 'pry'

def hello(array)
   i = 0
   collection = []
   while i < array.length
   binding.pry 
     collection << yield(array[i])
    i += 1
  end
  collection
  end

hello(["Tim", "Tom", "Jim"]) { |name| "Hi, #{name}" }

#there are no lights that say passed local test only submit pull request







