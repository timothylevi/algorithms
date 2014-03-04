def sum_recursive(nums)
  return 0 if nums.empty?
  nums.shift + sum_recursive(nums)
end