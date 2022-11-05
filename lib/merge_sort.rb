def merge_sort(array)
  n = array.length
  if n < 2
    array
  else
    left_array = array[0...n / 2]

    right_array = array[n / 2...n]
    left = merge_sort(left_array)
    right = merge_sort(right_array)
    merge(left, right, array)
    p array
  end
end

def merge(left, right, array)
  l = left.length
  r = right.length
  n = array.length
  index_left = 0
  index_right = 0
  index_array = 0
  while index_left < left.length && index_right < right.length
    if left[index_left] < right[index_right]
      array[index_array] = left[index_left]
      index_left += 1
      p array
    else
      array[index_array] = right[index_right]
      index_right += 1
    end
    index_array += 1
  end
  array[index_array...n] = if index_left == left.length
                             right[index_right...r]
                           else
                             left[index_left...l]
                           end
end

array = [4, 5, 8, 7, 4, 1]
merge_sort(array)
