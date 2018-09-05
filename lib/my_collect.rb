
def my_collect(array)
  i = 0
  new_array = []
  while i < array.length
    new_array << yield(array[i])
    i += 1
  end
  array
end

array1.new_array { |item| item.split(' ').first }
my_collect(array2) { |item| item.upcase }
