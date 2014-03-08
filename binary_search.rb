def binary_search(array, target)
  return nil if array.count == 0

  midpoint = array.length / 2
  case target <=> array[midpoint]
  when -1
    binary_search(array.take(midpoint), target)
  when 0
    midpoint
  when 1
    subproblem_answer =
      binary_search(array.drop(midpoint + 1), target)
    subproblem_answer.nil? ? nil : (midpoint + 1) + subproblem_answer
  end
end