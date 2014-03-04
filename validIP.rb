def validIP?(address)
  nums = address.split(".").map(&:to_i)
  return false if nums.length != 4
  nums.all? { |num| num.between?(0,255) }
end