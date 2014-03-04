def fibs(num)
  return [] if num == 0
  return [0] if num == 1
  return [0,1] if num == 2

  fibs = [0,1]
  while fibs.count < num
    fibs << fibs[-1] + fibs[-2]
  end

  fibs
end

def fibs_recursive(num)
  return [] if num == 0
  return [0] if num == 1
  return [0,1] if num == 2

  arr = fibs_recursive(num - 1)

  last = arr[-1] + arr[-2]
  arr << last

  arr
end