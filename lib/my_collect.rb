
def my_collect(array)
  i = 0
  new_array = []
  while i < array.length
    new_array << yield(array[i])
    i += 1
  end
  array
end

array1.my_collect { |item| item.split(' ').first }
array2.my_collect { |item| item.upcase }
