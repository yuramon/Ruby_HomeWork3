# frozen_string_literal: true

# TASK 3.1
# Make the element repeat itself in the array so many times that equal to it's numeric.
def repeat_numbers(array)
  i = 0
  repeat_array = []
  while i <= array.length
    number = array[i].to_i
    j = 0
    while j < number
      repeat_array.push(number)
      j += 1
    end
    i += 1
  end
  repeat_array
end

print repeat_numbers([1, 3, 2, 5])

# TASK 3.2
# Output three biggest, smallest and average elements of array
def min_elements(array, count)
  min_array = []
  i = 0
  while i < count
    min_array.push(array[i])
    i += 1
  end
  min_array
end

def max_elements(array, count)
  max_array = []
  i = array.length - 1
  count = i - count
  while i > count
    max_array.push(array[i])
    i -= 1
  end
  max_array.reverse
end

def average_elements(array)
  average_array = []
  index = array.length - 1
  average_element = array[(index / 2) - 1]
  average_array.push(average_element)
  average_element = array[(index / 2)]
  average_array.push(average_element)
  average_element = array[(index / 2) + 1]
  average_array.push(average_element)
  average_array
end

temperatures = [33, 15, 17, 20, 23, 23, 28, 40, 21, 19, 31, 18, 30, 31, 28, 23, 19, 28, 27, 30, 39, 17, 17, 20, 19, 23, 28, 30, 34, 28]
sort_array = temperatures.sort
puts "\n"
print min_elements(sort_array, 3)
puts "\n"
print max_elements(sort_array, 3)
puts "\n"
print average_elements(sort_array)


