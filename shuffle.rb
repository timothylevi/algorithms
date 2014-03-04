def shuffle_initial(array)
  length = array.length - 1
  shuffled = Array.new(length)

  array.each_index do |idx|
    rand_idx = rand(length)

    if shuffled[rand_idx]
      shuffled[shuffled.index(nil)] = array[idx]
    else
      shuffled[rand_idx] = array[idx]
    end
  end

  shuffled
end

def shuffle(array)
  new_array = array.dup
  array.each_index do |index|
    rand_index = index + rand(array.length - index)
    new_array[index], new_array[rand_index] =
      new_array[rand_index], new_array[index]
  end

  new_array
end
