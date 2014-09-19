def quicksort(array, lower, upper)
  if lower < upper
    middle_index = (lower + ((upper - lower) / 2))
    new_pivot_index = partition(array, lower, upper, middle_index)
    quicksort(array, lower, new_pivot_index - 1)
    quicksort(array, new_pivot_index + 1, upper)
  end
  array
end

def partition(array, lower, upper, pivot_index)
  pivot_value = array[pivot_index]
  array[pivot_index], array[upper] = array[upper], array[pivot_index]
  comparer_index = lower
  (lower..upper-1).each do |i|
    if array[i] < pivot_value
      array[i], array[comparer_index] = array[comparer_index], array[i]
      comparer_index += 1
    end
  end
  array[comparer_index], array[upper] = array[upper], array[comparer_index]
  comparer_index
end

sample_array = [9, 8, 7, 6, 5, 4, 3, 2, 1]
  quicksort(sample_array, 0, sample_array.length - 1)


