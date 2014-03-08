# http://en.wikipedia.org/wiki/Maximum_subarray_problem

def max_sub_sum(arr)
  max = 0
  max_l = 0
  max_r = 0
  current_max = 0
  left = 0

  arr.size.times do |i|
    current_max += arr[i]

    if current_max < 0
      left = i + 1
      current_max = 0
    elsif current_max > max
      max = current_max
      max_l, max_r = left, i
    end
  end

  arr[max_l..max_r]
end